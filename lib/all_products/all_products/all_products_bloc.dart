import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:torri_cantine_app/all_products/model/request/all_products_request.dart';
import 'package:torri_cantine_app/all_products/model/request/filters_products.dart';
import 'package:torri_cantine_app/all_products/model/request/search_products.dart';
import 'package:torri_cantine_app/all_products/model/request/wishlist_products.dart';
import 'package:torri_cantine_app/all_products/model/response/all_products_response.dart';
import 'package:torri_cantine_app/all_products/service/all_products_service.dart';
import 'package:torri_cantine_app/app/app_config.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';




part 'all_products_bloc.freezed.dart';
part 'all_products_event.dart';
part 'all_products_state.dart';

class AllProductsBloc extends Bloc<AllProductsEvent, AllProductsState> {
  final AllProductsService service;
  AllProductsBloc(this.service) : super(const _Initial());

  int apiTopValue = 10;


  @override
  Stream<AllProductsState> mapEventToState(
    AllProductsEvent event,
  ) async* {
    yield* event.when(fetch: _fetch, filterProducts: _filterProducts, wishListProducts: _wishListsProducts);
  }
  Stream<AllProductsState> _fetch(int? page, String? orderBy, String? order) async* {
    List<Product> products = [];  // Clear the list at the beginning of the fetch.
    AllProductsResponse? response;

    LocalStorage storage = LocalStorage();

    int pageNew = 1;

    if (pageNew == 1) {
      yield const AllProductsState.initial();
      yield const AllProductsState.loading([], 1);
    }

    bool stop = false;
    while (!stop) {
      try {
        // Define default values for order and orderBy if they are null
        String currentOrder = order ?? "desc";
        String currentOrderBy = orderBy ?? "date";

        // Prepare the request object based on the current sorting conditions
        response = await service.getAllProducts(AllProductsRequest(
          maxPages: apiTopValue,
          pageNumber: pageNew ?? 1,
          order: currentOrder,
          orderBy: currentOrderBy,
          catalogVisibility: '${AppConfig.catalogVisibilityFilter}',
          productStatus: '${AppConfig.productStatusFilter}',
        ));

        // Check if the response has products
        if (response.products != null && response.products!.isNotEmpty) {
          // Clear the list before adding new products to ensure it's fresh.
          if (pageNew == 1) {
            products.clear();  // Clear the products list when fetching the first page.
          }

          products.addAll(response.products as Iterable<Product>);
          print("${response.products} sorted by $currentOrderBy $currentOrder");

          // Check if we've loaded all products or not
          if (response.products!.length < apiTopValue) {
            stop = true; // Stop fetching if fewer products than requested
            pageNew = 0; // Reset page number
            yield AllProductsState.loaded(products ?? [], pageNew);
          } else {
            print('Still loading... Page: $pageNew');
            yield AllProductsState.loading(products ?? [], pageNew);
          }
        } else {
          // Handle case where no products are found
          print("No products found.");
          stop = true;
          yield AllProductsState.loading(products ?? [], pageNew);
        }
      } catch (e) {
        print('AllProductsBloc error: $e');
        yield const AllProductsState.error();
      }

      pageNew++;
    }
  }

  Future<AllProductsResponse?> fetch(int page, int perPage, String? orderBy, String? order) async{
    // List<Product> products = [];
    AllProductsResponse? response;
    // int pageNew = 1;
      try {
      response = await service.getAllProducts(AllProductsRequest(
        maxPages: perPage,
        pageNumber: page ?? 1,
        order: order ?? "desc",
        orderBy: orderBy ?? "date",
        catalogVisibility: '${AppConfig.catalogVisibilityFilter}',
        productStatus: '${AppConfig.productStatusFilter}',
      ));
      return response;
      // products.addAll(response.products as Iterable<Product>);
      // return products;
    } on DioError catch (e) {
        print(e.message);
        return null;
      }
  }

  Stream<AllProductsState> _filterProducts(int? page, String? categories,
      String? tags, String? minPrice, String? maxPrice, catalogVisibility) async* {
    List<Product> products = [];
    AllProductsResponse response;


    int pageNew = 1;

    //if (page == 1) {
    if (pageNew == 1) {
      yield const AllProductsState.initial();
      yield const AllProductsState.loading([], 1);
    }

    bool stop = false;
    while (!stop) {
      try {
        response = await service.filterProducts(FiltersProducts(
          // maxPages: -1,
            maxPages: apiTopValue,
            pageNumber: pageNew ?? 1,
            categories: categories,
            tags: tags,
            minPrice: minPrice,
            maxPrice: maxPrice,
            catalogVisibility: '${AppConfig.catalogVisibilityFilter}',
            productStatus: '${AppConfig.productStatusFilter}'));
        products.addAll(response.products ?? []);

        if (response.products?.length == 0) {
          //yield AllProductsState.loaded(products ?? [], pageNew);
          //print('@@##@@ THOU SHALL NOT PASS');
          stop = true;
          pageNew = 0;
          yield AllProductsState.loaded(products ?? [], pageNew);
          //yield AllProductsState.loaded(products ?? [], pageNew);
        } else {
          print('still loading...${pageNew}');
          //yield AllProductsState.loading(products ?? [], pageNew);
          yield AllProductsState.loading(products ?? [], pageNew);
        }
      } catch (e) {
        yield const AllProductsState.error();
      }
      pageNew++;
    }
    Future<AllProductsResponse?> filterProducts(int? page, String? categories,
        String? tags, String? minPrice, String? maxPrice,
        catalogVisibility) async {
      // List<Product> products = [];
      AllProductsResponse response;
      try {
        response = await service.filterProducts(FiltersProducts(
            maxPages: 10,
            pageNumber: pageNew ?? 1,
            categories: categories,
            tags: tags,
            minPrice: minPrice,
            maxPrice: maxPrice,
            catalogVisibility: '${AppConfig.catalogVisibilityFilter}',
            productStatus: '${AppConfig.productStatusFilter}'));
        return response;
      } on DioError catch (e) {
        print(e.message);
        return null;
      }
    }
  }

  Stream<AllProductsState> _searchProducts(int? page, String query, catalogVisibility) async* {
    List<Product> products = [];
    AllProductsResponse response;
    yield const AllProductsState.initial();
    yield const AllProductsState.loading([], 1);
    page=1;

    try {
      response = await service.searchProducts(SearchProducts(
          maxPages: -1,
          //pageNumber: page ?? 1,
          query: query,
          catalogVisibility: '${AppConfig.productStatusFilter}'));
      products.addAll(response.products ?? []);

      yield AllProductsState.loaded(products, page ?? 1);
    } catch (e) {
      yield const AllProductsState.error();
    }
  }


  Stream<AllProductsState> _wishListsProducts(List<dynamic>? ids) async* {
    List<Product> products = [];
    AllProductsResponse response;
    yield const AllProductsState.initial();
    yield const AllProductsState.loading([],1);

    try {
      response = await service.wishListProducts( WishlistProductsRequest(id: ids![0] ));
      products.addAll(response.products ?? []);
      // ids.forEach((element) async {
      //   response = await service.wishListProducts( WishlistProductsRequest(id: element ));
      //   products.addAll(response.products ?? []);
      // });
      yield AllProductsState.loaded(products, 1);
    } catch (e) {
      yield const AllProductsState.error();
    }
  }
  }

