part of 'remove_product_to_cart_bloc.dart';

@freezed
class RemoveProductToCartEvent with _$RemoveProductToCartEvent {
  const factory RemoveProductToCartEvent.removeProduct(
      String key, int quantity) = _RemoveProduct;
}
