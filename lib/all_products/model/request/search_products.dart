import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'search_products.freezed.dart';
part 'search_products.g.dart';

@freezed
class SearchProducts extends RequestBase with _$SearchProducts {
  SearchProducts._();
  factory SearchProducts({
    @JsonKey(name: "filter[limit]") required final int maxPages,
    // @JsonKey(name: "page") required final int pageNumber,
    @JsonKey(name: "search") String? query,
    @JsonKey(name: "status") String? catalogVisibility,
  }) = _SearchProducts;

  factory SearchProducts.fromJson(Map<String, dynamic> json) =>
      _$SearchProductsFromJson(json);

  @override
  String get endpoint => '/wp-json/wc/v3/products';

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
