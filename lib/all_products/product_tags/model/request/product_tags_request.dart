
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
part 'product_tags_request.freezed.dart';
part 'product_tags_request.g.dart';

@freezed
class ProductTagsRequest extends RequestBase with _$ProductTagsRequest {
   ProductTagsRequest._();
  factory ProductTagsRequest() = _ProductTagsRequest;

  factory ProductTagsRequest.fromJson(Map<String, dynamic> json) =>
      _$ProductTagsRequestFromJson(json);

  @override
  String get endpoint => '/wp-json/wc/v3/products/tags';

          @override
        Map<String, dynamic> toJson() {
       // TODO: implement toJson
       throw UnimplementedError();
        }
}
