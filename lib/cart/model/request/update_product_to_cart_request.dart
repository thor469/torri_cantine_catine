import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'update_product_to_cart_request.freezed.dart';
part 'update_product_to_cart_request.g.dart';

@freezed
class UpdateProductToCartRequest extends RequestBase
    with _$UpdateProductToCartRequest {
  UpdateProductToCartRequest._();
  factory UpdateProductToCartRequest({
    required final String key,
    required final int quantity,
  }) = _UpdateProductToCartRequest;

  factory UpdateProductToCartRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductToCartRequestFromJson(json);

  @override
  String get endpoint => '/wp-json/wc/store/v1/cart/update-item/';

  @override
  Map<String, dynamic> toData() {
    return {
      'key': key,
      'quantity': quantity,
    };
  }
}
