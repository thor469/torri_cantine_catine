import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'add_product_to_cart.freezed.dart';
part 'add_product_to_cart.g.dart';

@freezed
class AddProductToCart extends RequestBase with _$AddProductToCart {
  AddProductToCart._();
  factory AddProductToCart({
    required final int id,
    required final int quantity,
  }) = _AddProductToCart;

  factory AddProductToCart.fromJson(Map<String, dynamic> json) =>
      _$AddProductToCartFromJson(json);

  @override
  String get endpoint => '/wp-json/wc/store/v1/cart/add-item';

  @override
  Map<String, dynamic> toData() {
    return {'id': id, "quantity": quantity};
  }
}


