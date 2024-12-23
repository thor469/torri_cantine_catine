import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/cart/model/request/add_product_to_cart.dart';
import 'package:torri_cantine_app/cart/model/request/cart_request.dart';
import 'package:torri_cantine_app/cart/model/request/remove_product_to_cart_request.dart';
import 'package:torri_cantine_app/cart/model/request/update_product_to_cart_request.dart';
import 'package:torri_cantine_app/cart/model/response/cart_response.dart';
import 'package:torri_cantine_app/cart/remove_product_to_cart/remove_product_to_cart_bloc.dart';

import '../model/request/add_bundle_to_cart.dart';
import '../model/request/remove_bundle_to_cart_request.dart';
import '../model/request/update_bundle_to_cart_request.dart';

class CartService extends HttpServiceBase {
  CartService(Dio dioInstance) : super(dioInstance);

  Future<CartResponse> cart(CartRequest request) => getQuery(
        request: request,
        mapper: (json, _) {   return CartResponse.fromJson(json); },
        orElse: (json, data) => CartResponse.fromJson(json),
      );
  Future<CartResponse> addProductToCart(AddProductToCart request) => postData(
        expectedStatusCode: 201,
        queryParameters: request.toData(),
        request: request,
        mapper: (json, _) => CartResponse.fromJson(json),
        orElse: (json, data) => CartResponse.fromJson(json),
      );



  Future<CartResponse> addBundleToCart(AddBundleToCart request) => postData(
    expectedStatusCode: 200,
    queryParameters: request.toData(),
    request: request,
    mapper: (json, _) => CartResponse.fromJson(json),
    orElse: (json, data) => CartResponse.fromJson(json),
  );


  Future<CartResponse> removeBundleToCart(
      RemoveBundleToCartRequest request) =>
      postData(
        queryParameters: request.toData(),
        request: request,
        mapper: (json, _) => CartResponse.fromJson(json),
        orElse: (json, data) => CartResponse.fromJson(json),
      );

  Future<CartResponse> updateBundleToCart(
      UpdateBundleToCartRequest request) =>
      postData(
        queryParameters: request.toData(),
        request: request,
        mapper: (json, _) => CartResponse.fromJson(json),
        orElse: (json, data) => CartResponse.fromJson(json),
      );

  Future<CartResponse> removeProductToCart(
          RemoveProductToCartRequest request) =>
      postData(
        queryParameters: request.toData(),
        request: request,
        mapper: (json, _) => CartResponse.fromJson(json),
        orElse: (json, data) => CartResponse.fromJson(json),
      );

  Future<CartResponse> updateProductToCart(
          UpdateProductToCartRequest request) =>
      postData(
        queryParameters: request.toData(),
        request: request,
        mapper: (json, _) => CartResponse.fromJson(json),
        orElse: (json, data) => CartResponse.fromJson(json),
      );
}
