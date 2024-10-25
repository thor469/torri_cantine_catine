
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'my_orders_response.freezed.dart';
part 'my_orders_response.g.dart';

@freezed
class MyOrdersResponse extends ResponseBase with _$MyOrdersResponse {
  factory MyOrdersResponse({
    int? order_id, 
    int? customer_id,
    String? total, 
   //  @Default(<LiStItems>[]) List<LiStItems>? line_items, 
    }) = _MyOrdersResponse;
	
  factory MyOrdersResponse.fromJson(Map<String, dynamic> json) =>
			_$MyOrdersResponseFromJson(json);
}
// @freezed
// class LiStItems with _$LiStItems {
//   factory LiStItems({
//     required int product_id,
//     int? quantity,
//     int? total,
//   }) = LiStItems;
// }