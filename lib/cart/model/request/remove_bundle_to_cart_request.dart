import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'remove_bundle_to_cart_request.freezed.dart';
part 'remove_bundle_to_cart_request.g.dart';

@freezed
class RemoveBundleToCartRequest extends RequestBase
    with _$RemoveBundleToCartRequest {
  RemoveBundleToCartRequest._();
  factory RemoveBundleToCartRequest({
    required final String key,
    required final int quantity,
  }) = _RemoveBundleToCartRequest;

  factory RemoveBundleToCartRequest.fromJson(Map<String, dynamic> json) =>
      _$RemoveBundleToCartRequestFromJson(json);

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
