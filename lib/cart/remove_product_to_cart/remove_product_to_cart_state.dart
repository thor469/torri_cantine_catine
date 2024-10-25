part of 'remove_product_to_cart_bloc.dart';

@freezed
class RemoveProductToCartState with _$RemoveProductToCartState {
  const factory RemoveProductToCartState.initial() = _Initial;
  const factory RemoveProductToCartState.loading() = _Loading;
  const factory RemoveProductToCartState.removeProduct(CartResponse cart) =
      _RemovedProduct;
  const factory RemoveProductToCartState.error() = _Error;
}
