import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'filters_products.freezed.dart';
part 'filters_products.g.dart';

@freezed
class FiltersProducts extends RequestBase with _$FiltersProducts {
  FiltersProducts._();
  factory FiltersProducts({
    @JsonKey(name: "filter[limit]") required final int maxPages,
    @JsonKey(name: "page") required final int pageNumber,
    @JsonKey(name: "category") String? categories,
    @JsonKey(name: "tag") String? tags,
    @JsonKey(name: "min_price") String? minPrice,
    @JsonKey(name: "max_price") String? maxPrice,
    @JsonKey(name: "catalog_visibility") String? catalogVisibility,
    @JsonKey(name: "status") String? productStatus,
  }) = _FiltersProducts;

  factory FiltersProducts.fromJson(Map<String, dynamic> json) =>
      _$FiltersProductsFromJson(json);

  @override
  String get endpoint => '/wp-json/wc/v3/products';

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
