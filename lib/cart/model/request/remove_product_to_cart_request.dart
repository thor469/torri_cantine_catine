import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'remove_product_to_cart_request.freezed.dart';
part 'remove_product_to_cart_request.g.dart';

@freezed
class RemoveProductToCartRequest extends RequestBase
    with _$RemoveProductToCartRequest {
  RemoveProductToCartRequest._();
  factory RemoveProductToCartRequest({
    required final String key,
    required final int quantity,
  }) = _RemoveProductToCartRequest;

  factory RemoveProductToCartRequest.fromJson(Map<String, dynamic> json) =>
      _$RemoveProductToCartRequestFromJson(json);

  @override
  String get endpoint => '/wp-json/wc/store/v1/cart/remove-item/';

  @override
  Map<String, dynamic> toData() {
    return {
      'key': key,
      'quantity': quantity,
    };
  }
}
