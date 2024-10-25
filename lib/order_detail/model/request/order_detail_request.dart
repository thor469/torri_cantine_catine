
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
part 'order_detail_request.freezed.dart';
part 'order_detail_request.g.dart';

@freezed
class OrderDetailRequest extends RequestBase with _$OrderDetailRequest {
 OrderDetailRequest._();
 factory OrderDetailRequest({
  required int id,
 })=_OrderDetailRequest;
	
  factory OrderDetailRequest.fromJson(Map<String, dynamic> json) =>
			_$OrderDetailRequestFromJson(json);
      
  @override
  String get endpoint => '/wp-json/wc/v3/orders/$id';
      
        @override
        Map<String, dynamic> toJson() {
       // TODO: implement toJson
       throw UnimplementedError();
        }
}
