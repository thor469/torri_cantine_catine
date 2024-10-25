import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'wishlist_products.freezed.dart';
part 'wishlist_products.g.dart';

@freezed
class WishlistProductsRequest extends RequestBase with _$WishlistProductsRequest {
  WishlistProductsRequest._();
  factory WishlistProductsRequest({
    required int id,
  }) = _WishlistProductsRequest;

  factory WishlistProductsRequest.fromJson(Map<String, dynamic> json) =>
      _$WishlistProductsRequestFromJson(json);

  @override
  String get endpoint => '/wp-json/wc/v3/products/$id';

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
