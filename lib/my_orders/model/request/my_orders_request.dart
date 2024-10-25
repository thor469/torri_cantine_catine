import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'my_orders_request.freezed.dart';
part 'my_orders_request.g.dart';

@freezed
class MyOrdersRequest extends RequestBase with _$MyOrdersRequest {
  MyOrdersRequest._();
  factory MyOrdersRequest({
    Billing? billing_address,
    Shipping? shipping_address,
    String? customer_note,
    bool? create_account,
    String? payment_method,
    List? payment_data,
    Map? extensions,
  }) = _MyOrdersRequest;

  factory MyOrdersRequest.fromJson(Map<String, dynamic> json) =>
      _$MyOrdersRequestFromJson(json);

  @override
  String get endpoint => '/wp-json/wc/store/v1/checkout';

  @override
  Map<String, dynamic> toData() {
    return {
      "billing_address": billing_address,
      "shipping_address": shipping_address,
      "customer_note": customer_note,
      "create_account": false,
      "payment_method": payment_method,
      "payment_data": [],
    };
  }
}

@freezed
class Billing with _$Billing {
  factory Billing({
    String? first_name,
    String? last_name,
    String? company,
    String? address_1,
    String? address_2,
    String? city,
    String? state,
    String? postcode,
    String? country,
    String? email,
    String? phone,
  }) = _Billing;

  factory Billing.fromJson(Map<String, dynamic> json) =>
      _$BillingFromJson(json);
}

@freezed
class Shipping with _$Shipping {
  factory Shipping({
    String? first_name,
    String? last_name,
    String? company,
    String? address_1,
    String? address_2,
    String? city,
    String? state,
    String? postcode,
    String? country,
  }) = _Shipping;

  factory Shipping.fromJson(Map<String, dynamic> json) =>
      _$ShippingFromJson(json);
}
