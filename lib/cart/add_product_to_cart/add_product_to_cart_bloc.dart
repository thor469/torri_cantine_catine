import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/cart/model/request/add_product_to_cart.dart';
import 'package:torri_cantine_app/cart/model/request/update_product_to_cart_request.dart';
import 'package:torri_cantine_app/cart/model/response/cart_response.dart';
import 'package:torri_cantine_app/cart/service/cart_service.dart';

part 'add_product_to_cart_bloc.freezed.dart';
part 'add_product_to_cart_event.dart';
part 'add_product_to_cart_state.dart';

class AddProductToCartBloc
    extends Bloc<AddProductToCartEvent, AddProductToCartState> {
  CartService service;
  AddProductToCartBloc(this.service) : super(const _Initial());

  @override
  Stream<AddProductToCartState> mapEventToState(
    AddProductToCartEvent event,
  ) async* {
    yield* event.when(
      addProduct: _addProduct,
      updateProduct: _updateProduct,
    );
  }

  Stream<AddProductToCartState> _addProduct(int id, int quantity) async* {
    yield const AddProductToCartState.loading();
    try {
      final response = await service.addProductToCart(AddProductToCart(id: id, quantity: quantity));
      yield AddProductToCartState.addedProduct(response);
    } on ApiException catch (e) {
      yield const AddProductToCartState.error();
    }
  }



  Stream<AddProductToCartState> _updateProduct(
      String key, int quantity) async* {
    yield const AddProductToCartState.loading();
    try {
      final response = await service.updateProductToCart(
          UpdateProductToCartRequest(key: key, quantity: quantity));
      yield AddProductToCartState.updatedProduct(response);
    } on ApiException catch (e) {
      yield const AddProductToCartState.error();
    }
  }
}
