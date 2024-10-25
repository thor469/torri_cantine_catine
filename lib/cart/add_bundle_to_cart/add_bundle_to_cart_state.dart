part of 'add_bundle_to_cart_bloc.dart';


@freezed
class AddBundleToCartState with _$AddBundleToCartState {
  const factory AddBundleToCartState.initial() = _Initial;
  const factory AddBundleToCartState.loading() = _Loading;
  const factory AddBundleToCartState.addedProduct() = _AddedProduct;
  // const factory AddBundleToCartState.addedProduct(CartResponse cart) =
  // _AddedProduct;
  const factory AddBundleToCartState.updatedProduct(CartResponse cart) =
  _UpdatedProduct;
  const factory AddBundleToCartState.error() = _Error;
}
