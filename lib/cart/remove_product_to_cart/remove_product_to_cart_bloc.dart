import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/cart/model/request/remove_product_to_cart_request.dart';
import 'package:torri_cantine_app/cart/model/response/cart_response.dart';
import 'package:torri_cantine_app/cart/service/cart_service.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

part 'remove_product_to_cart_state.dart';
part 'remove_product_to_cart_event.dart';
part 'remove_product_to_cart_bloc.freezed.dart';

class RemoveProductToCartBloc
    extends Bloc<RemoveProductToCartEvent, RemoveProductToCartState> {
  CartService service;
  RemoveProductToCartBloc(this.service) : super(const _Initial());

  @override
  Stream<RemoveProductToCartState> mapEventToState(
    RemoveProductToCartEvent event,
  ) async* {
    yield* event.when(
      removeProduct: _removeProduct,
    );
  }

  Stream<RemoveProductToCartState> _removeProduct(
      String key, int quantity) async* {
    LocalStorage storage = LocalStorage();
    yield const RemoveProductToCartState.loading();
    try {
      final response = await service.removeProductToCart(RemoveProductToCartRequest(key: key, quantity: quantity));
      await storage.setTotalCartItems(response.totalItems);
      yield RemoveProductToCartState.removeProduct(response);
    } on ApiException catch (e) {
      yield const RemoveProductToCartState.error();
    }
  }
}
