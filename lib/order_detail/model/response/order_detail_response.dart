
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
part 'order_detail_response.freezed.dart';
part 'order_detail_response.g.dart';

@freezed
class OrderDetailResponse extends ResponseBase with _$OrderDetailResponse {
 factory OrderDetailResponse({
int? id
 }) = _OrderDetailResponse;
	
  factory OrderDetailResponse.fromJson(Map<String, dynamic> json) =>
			_$OrderDetailResponseFromJson(json);
}