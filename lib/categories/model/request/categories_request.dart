
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'categories_request.freezed.dart';
part 'categories_request.g.dart';

@freezed
class CategoriesRequest extends RequestBase with _$CategoriesRequest {
 CategoriesRequest._();
 factory CategoriesRequest()=_CategoriesRequest;
	
  factory CategoriesRequest.fromJson(Map<String, dynamic> json) =>
			_$CategoriesRequestFromJson(json);
      
  @override
  String get endpoint => '/wp-json/wc/v3/products/categories';
      
        @override
        Map<String, dynamic> toJson() {
       // TODO: implement toJson
       throw UnimplementedError();
        }
}