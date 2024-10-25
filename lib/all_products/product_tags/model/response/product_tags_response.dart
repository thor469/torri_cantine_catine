
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:torri_cantine_app/product_detail/model/response/product_detail_response.dart';
import 'package:http_services/http_services.dart';

part 'product_tags_response.freezed.dart';
part 'product_tags_response.g.dart';

@freezed
class ProductTagsResponse extends ResponseBase with _$ProductTagsResponse {
 factory ProductTagsResponse({
    @Default(<ProductTags>[]) List<ProductTags>? tags, 
  }
  

  ) = _ProductTagsResponse;
	
  factory ProductTagsResponse.fromJson(Map<String, dynamic> json) =>
			_$ProductTagsResponseFromJson(json);
}
