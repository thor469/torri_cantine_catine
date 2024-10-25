import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'all_products_request.freezed.dart';
part 'all_products_request.g.dart';

@freezed
class AllProductsRequest extends RequestBase with _$AllProductsRequest {
  AllProductsRequest._();
  factory AllProductsRequest({
    @JsonKey(name: "per_page") required final int maxPages,
    @JsonKey(name: "page") required final int pageNumber,
    @JsonKey(name: "order") String? order,
    @JsonKey(name: "orderby") String? orderBy,
    @JsonKey(name: "status") String? productStatus,
    @JsonKey(name: "catalog_visibility") String? catalogVisibility,
  }) = _AllProductsRequest;

  factory AllProductsRequest.fromJson(Map<String, dynamic> json) =>
      _$AllProductsRequestFromJson(json);

  @override
  String get endpoint => '/wp-json/wc/v3/products';
}
