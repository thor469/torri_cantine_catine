import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/all_products/model/request/all_products_request.dart';
import 'package:torri_cantine_app/all_products/model/request/filters_products.dart';
import 'package:torri_cantine_app/all_products/model/request/search_products.dart';
import 'package:torri_cantine_app/all_products/model/request/wishlist_products.dart';
import 'package:torri_cantine_app/all_products/model/response/all_products_response.dart';


class AllProductsService extends HttpServiceBase {
  AllProductsService(Dio dioInstance) : super(dioInstance);

  Future<AllProductsResponse> getAllProducts(AllProductsRequest request) =>
      getQuery(
        request: request,
        mapper: (json, _) => AllProductsResponse.fromJson(json),
        orElse: (json, data) =>

            AllProductsResponse.fromJson({'products': json}),
      );

  Future<AllProductsResponse> filterProducts(FiltersProducts request) =>
      getQuery(
        request: request,
        mapper: (json, _) => AllProductsResponse.fromJson(json),
        orElse: (json, data) =>
            AllProductsResponse.fromJson({'products': json}),
      );


  Future<AllProductsResponse> searchProducts(SearchProducts request) =>
      getQuery(
        request: request,
        mapper: (json, _) => AllProductsResponse.fromJson(json),
        orElse: (json, data) =>
            AllProductsResponse.fromJson({'products': json}),
      );



  Future<AllProductsResponse> wishListProducts(WishlistProductsRequest request) =>
      getQuery(
        request: request,
        mapper: (json, _) => AllProductsResponse.fromJson(json),
        orElse: (json, data) =>
            AllProductsResponse.fromJson({'products': json}),
      );


}
