
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'list_all_orders_request.freezed.dart';
part 'list_all_orders_request.g.dart';

@freezed
class ListAllOrdersRequest extends RequestBase with _$ListAllOrdersRequest {
  ListAllOrdersRequest._();
  factory ListAllOrdersRequest({
     int? customer,
    }) = _ListAllOrdersRequest;

  factory ListAllOrdersRequest.fromJson(Map<String, dynamic> json) =>
      _$ListAllOrdersRequestFromJson(json);

  @override
  String get endpoint => '/wp-json/wc/v3/orders';
}
