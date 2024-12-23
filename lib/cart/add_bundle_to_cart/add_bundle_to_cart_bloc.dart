import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/cart/model/request/add_bundle_to_cart.dart';
import 'package:torri_cantine_app/cart/model/request/update_product_to_cart_request.dart';
import 'package:torri_cantine_app/cart/model/response/cart_response.dart';
import 'package:torri_cantine_app/cart/service/cart_service.dart';
import '../model/request/update_bundle_to_cart_request.dart';

part 'add_bundle_to_cart_bloc.freezed.dart';
part 'add_bundle_to_cart_event.dart';
part 'add_bundle_to_cart_state.dart';



class AddBundleToCartBloc
    extends Bloc<AddBundleToCartEvent, AddBundleToCartState> {
  CartService service;
  AddBundleToCartBloc(this.service) : super(const _Initial());

  @override
  Stream<AddBundleToCartState> mapEventToState(AddBundleToCartEvent event) async* {
    yield* event.when(addBundle: _addBundle, updateBundle: _updateBundle,);
  }


  Stream<AddBundleToCartState> _addBundle(int id, Map data, String cartUrl, int quantity) async* {
    yield const AddBundleToCartState.loading();
    try {
       await service.addBundleToCart(AddBundleToCart(id: id, data: data, cartUrl: cartUrl, quantity: quantity));
      yield const AddBundleToCartState.addedProduct();
    } on ApiException catch (e) {
      yield const AddBundleToCartState.error();
    }
  }



  Stream<AddBundleToCartState> _updateBundle(
      String key, Map data, int quantity) async* {
    yield const AddBundleToCartState.loading();
    try {
      final response = await service.updateBundleToCart(
          UpdateBundleToCartRequest(key: key, data: data, quantity: quantity));
      yield AddBundleToCartState.updatedProduct(response);
    } on ApiException catch (e) {
      yield const AddBundleToCartState.error();
    }


}

}
