import 'dart:collection';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:torri_cantine_app/all_products/model/request/all_products_request.dart';
import 'package:torri_cantine_app/all_products/model/request/filters_products.dart';
import 'package:torri_cantine_app/all_products/model/request/search_products.dart';
import 'package:torri_cantine_app/all_products/model/request/wishlist_products.dart';
import 'package:torri_cantine_app/all_products/model/response/all_products_response.dart';
import 'package:torri_cantine_app/all_products/service/all_products_service.dart';
import 'package:torri_cantine_app/app/app_config.dart';
import 'package:torri_cantine_app/app/cache_manager/http_cache_manager.dart';

part 'all_products_bloc.freezed.dart';
part 'all_products_event.dart';
part 'all_products_state.dart';


// Bloc Implementation
class AllProductsBloc extends Bloc<AllProductsEvent, AllProductsState> {
  final AllProductsService service;
  final CacheManager<AllProductsResponse> cacheManager;

  AllProductsBloc(this.service)
      : cacheManager = CacheManager(cacheDuration: const Duration(minutes: 15)),
        super(const _Initial());

  int apiTopValue = 10;

  @override
  Stream<AllProductsState> mapEventToState(AllProductsEvent event) async* {
    yield* event.when(
      fetch: _fetch,
      filterProducts: _filterProducts,
      wishListProducts: _wishListsProducts,
    );
  }

  Stream<AllProductsState> _fetch(int? page, String? orderBy, String? order) async* {
    final cacheKey = 'fetch_${page}_${orderBy}_${order}';
    final cachedResponse = cacheManager.get(cacheKey);

    if (cachedResponse != null) {
      yield AllProductsState.loaded(cachedResponse.products ?? [], page ?? 1);
      return;
    }

    List<Product> products = [];
    AllProductsResponse? response;
    int pageNew = 1;

    if (pageNew == 1) {
      yield const AllProductsState.initial();
      yield const AllProductsState.loading([], 1);
    }

    bool stop = false;
    while (!stop) {
      try {
        String currentOrder = order ?? "desc";
        String currentOrderBy = orderBy ?? "date";

        response = await service.getAllProducts(AllProductsRequest(
          maxPages: apiTopValue,
          pageNumber: pageNew ?? 1,
          order: currentOrder,
          orderBy: currentOrderBy,
          catalogVisibility: AppConfig.catalogVisibilityFilter,
          productStatus: AppConfig.productStatusFilter,
        ));

        if (response.products != null && response.products!.isNotEmpty) {
          if (pageNew == 1) {
            products.clear();
          }

          products.addAll(response.products!);

          if (response.products!.length < apiTopValue) {
            stop = true;
          }
          yield AllProductsState.loading(products, pageNew);
        } else {
          stop = true;
        }
      } catch (e) {
        yield const AllProductsState.error();
      }

      pageNew++;
    }

    cacheManager.set(cacheKey, AllProductsResponse(products: products));
    yield AllProductsState.loaded(products, pageNew);
  }

  Future<AllProductsResponse?> fetch(int page, int perPage, String? orderBy, String? order) async {
    final cacheKey = 'fetchFuture_${page}_${perPage}_${orderBy}_${order}';
    final cachedResponse = cacheManager.get(cacheKey);

    if (cachedResponse != null) {
      return cachedResponse;
    }

    try {
      final response = await service.getAllProducts(AllProductsRequest(
        maxPages: perPage,
        pageNumber: page ?? 1,
        order: order ?? "desc",
        orderBy: orderBy ?? "date",
        catalogVisibility: AppConfig.catalogVisibilityFilter,
        productStatus: AppConfig.productStatusFilter,
      ));

      cacheManager.set(cacheKey, response);

      return response;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  Stream<AllProductsState> _filterProducts(int? page, String? categories,
      String? tags, String? minPrice, String? maxPrice, catalogVisibility) async* {
    final cacheKey = 'filter_${page}_${categories}_${tags}_${minPrice}_${maxPrice}';
    final cachedResponse = cacheManager.get(cacheKey);

    if (cachedResponse != null) {
      yield AllProductsState.loaded(cachedResponse.products ?? [], page ?? 1);
      return;
    }

    List<Product> products = [];
    AllProductsResponse response;

    int pageNew = 1;

    if (pageNew == 1) {
      yield const AllProductsState.initial();
      yield const AllProductsState.loading([], 1);
    }

    bool stop = false;
    while (!stop) {
      try {
        response = await service.filterProducts(FiltersProducts(
          maxPages: apiTopValue,
          pageNumber: pageNew ?? 1,
          categories: categories,
          tags: tags,
          minPrice: minPrice,
          maxPrice: maxPrice,
          catalogVisibility: AppConfig.catalogVisibilityFilter,
          productStatus: AppConfig.productStatusFilter,
        ));

        products.addAll(response.products ?? []);

        if (response.products?.isEmpty ?? true) {
          stop = true;
        } else {
          yield AllProductsState.loading(products, pageNew);
        }
      } catch (e) {
        yield const AllProductsState.error();
      }

      pageNew++;
    }

    cacheManager.set(cacheKey, AllProductsResponse(products: products));
    yield AllProductsState.loaded(products, pageNew);
  }

  Future<AllProductsResponse?> filterProducts(int? page, int? perPage, String? categories,
      String? tags, String? minPrice, String? maxPrice, catalogVisibility) async {
    final cacheKey = 'filterFuture_${page}_${perPage}_${categories}_${tags}_${minPrice}_${maxPrice}';
    final cachedResponse = cacheManager.get(cacheKey);

    if (cachedResponse != null) {
      return cachedResponse;
    }

    try {
      final response = await service.filterProducts(FiltersProducts(
        maxPages: perPage ?? 10,
        pageNumber: page ?? 1,
        categories: categories,
        tags: tags,
        minPrice: minPrice,
        maxPrice: maxPrice,
        catalogVisibility: AppConfig.catalogVisibilityFilter,
        productStatus: AppConfig.productStatusFilter,
      ));

      cacheManager.set(cacheKey, response);

      return response;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  Stream<AllProductsState> _wishListsProducts(List<dynamic>? ids) async* {
    final cacheKey = 'wishlist_${ids.hashCode}';
    final cachedResponse = cacheManager.get(cacheKey);

    if (cachedResponse != null) {
      yield AllProductsState.loaded(cachedResponse.products ?? [], 1);
      return;
    }

    List<Product> products = [];
    AllProductsResponse response;

    yield const AllProductsState.initial();
    yield const AllProductsState.loading([], 1);

    try {
      response = await service.wishListProducts(WishlistProductsRequest(id: ids![0]));
      products.addAll(response.products ?? []);
      cacheManager.set(cacheKey, AllProductsResponse(products: products));
      yield AllProductsState.loaded(products, 1);
    } catch (e) {
      yield const AllProductsState.error();
    }
  }

  Stream<AllProductsState> _searchProducts(int? page, String query, catalogVisibility) async* {
    final cacheKey = 'search_${page}_${query}';
    final cachedResponse = cacheManager.get(cacheKey);

    if (cachedResponse != null) {
      yield AllProductsState.loaded(cachedResponse.products ?? [], page ?? 1);
      return;
    }

    List<Product> products = [];
    AllProductsResponse response;

    yield const AllProductsState.loading([], 1);

    try {
      response = await service.searchProducts(SearchProducts(
        maxPages: -1,
        pageNumber: page ?? 1,
        limit: 10,
        query: query,
        catalogVisibility: AppConfig.catalogVisibilitySearch,
      ));

      products.addAll(response.products ?? []);
      cacheManager.set(cacheKey, AllProductsResponse(products: products));
      yield AllProductsState.loaded(products, page ?? 1);
    } catch (e) {
      yield const AllProductsState.error();
    }
  }

  Future<List<Product>?> newSearchProducts(int? page, String query) async {
    final cacheKey = 'newSearchProducts_${page}_${query}';
    final cachedResponse = cacheManager.get(cacheKey);

    if (cachedResponse != null) {
      return cachedResponse.products;
    }

    try {
      final response = await service.searchProducts(SearchProducts(
        maxPages: -1,
        pageNumber: page ?? 1,
        limit: 10,
        query: query,
        catalogVisibility: AppConfig.catalogVisibilitySearch,
      ));

      cacheManager.set(cacheKey, response);

      return response.products;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
}