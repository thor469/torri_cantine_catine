import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'update_bundle_to_cart_request.freezed.dart';
part 'update_bundle_to_cart_request.g.dart';

@freezed
class UpdateBundleToCartRequest extends RequestBase
    with _$UpdateBundleToCartRequest {
  UpdateBundleToCartRequest._();
  factory UpdateBundleToCartRequest({
    required final String key,
    required final Map data,
    required final int quantity,
  }) = _UpdateBundleToCartRequest;

  factory UpdateBundleToCartRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateBundleToCartRequestFromJson(json);

  @override
  String get endpoint => '/wp-json/wc/store/v1/cart/update-item/';

  @override
  Map<String, dynamic> toData() {
    return {
      'key': key,
      'data': data,
      'quantity': quantity,
    };
  }

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
