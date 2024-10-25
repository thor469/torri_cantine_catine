part of 'add_product_to_cart_bloc.dart';

@freezed
class AddProductToCartState with _$AddProductToCartState {
  const factory AddProductToCartState.initial() = _Initial;
  const factory AddProductToCartState.loading() = _Loading;
  const factory AddProductToCartState.addedProduct(CartResponse cart) =
      _AddedProduct;
  const factory AddProductToCartState.updatedProduct(CartResponse cart) =
      _UpdatedProduct;
  const factory AddProductToCartState.error() = _Error;
}

