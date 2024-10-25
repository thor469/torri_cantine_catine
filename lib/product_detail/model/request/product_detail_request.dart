
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'product_detail_request.freezed.dart';
part 'product_detail_request.g.dart';

@freezed
class ProductDetailRequest extends RequestBase with _$ProductDetailRequest {
 ProductDetailRequest._();
 factory ProductDetailRequest({
  required int id,
 })=_ProductDetailRequest;
	
  factory ProductDetailRequest.fromJson(Map<String, dynamic> json) =>
			_$ProductDetailRequestFromJson(json);
      
  @override
  String get endpoint => '/wp-json/wc/v3/products/$id';

      
        @override
        Map<String, dynamic> toJson() {
       // TODO: implement toJson
       throw UnimplementedError();
        }
}
