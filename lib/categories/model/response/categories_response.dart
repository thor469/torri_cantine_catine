
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/product_detail/model/response/product_detail_response.dart';

part 'categories_response.freezed.dart';
part 'categories_response.g.dart';

@freezed
class CategoriesResponse  extends ResponseBase with _$CategoriesResponse {
  factory CategoriesResponse({
    @Default(<ProductCategories>[]) List<ProductCategories>? categories, 
  }
  

  ) = _CategoriesResponse;
	
  factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>
			_$CategoriesResponseFromJson(json);
}
