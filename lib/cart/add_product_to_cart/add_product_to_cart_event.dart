part of 'add_product_to_cart_bloc.dart';

@freezed
class AddProductToCartEvent with _$AddProductToCartEvent {
  const factory AddProductToCartEvent.addProduct(int id, int quantity) =
      _AddProduct;
  const factory AddProductToCartEvent.updateProduct(String key, int quantity) =
      _UpdateProduct;
}
