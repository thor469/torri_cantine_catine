import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'my_orders_response.freezed.dart';
part 'my_orders_response.g.dart';

@freezed
class MyOrdersResponse extends ResponseBase with _$MyOrdersResponse {
  factory MyOrdersResponse({
    int? order_id,
    String? status,
    String? order_key,
    String? order_number,
    String? customer_note,
    int? customer_id,
    AddressResponse? billing_address,
    AddressResponse? shipping_address,
    String? payment_method,
    PaymentResult? payment_result,
    List<dynamic>? additional_fields,
    Map<String, dynamic>? extensions,
  }) = _MyOrdersResponse;

  factory MyOrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$MyOrdersResponseFromJson(json);
}

@freezed
class AddressResponse with _$AddressResponse {
  factory AddressResponse({
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
  }) = _AddressResponse;

  factory AddressResponse.fromJson(Map<String, dynamic> json) =>
      _$AddressResponseFromJson(json);
}

@freezed
class PaymentResult with _$PaymentResult {
  factory PaymentResult({
    String? payment_status,
    List<PaymentDetails>? payment_details,
    String? redirect_url,
  }) = _PaymentResult;

  factory PaymentResult.fromJson(Map<String, dynamic> json) =>
      _$PaymentResultFromJson(json);
}

@freezed
class PaymentDetails with _$PaymentDetails {
  factory PaymentDetails({
    String? key,
    String? value,
  }) = _PaymentDetails;

  factory PaymentDetails.fromJson(Map<String, dynamic> json) =>
      _$PaymentDetailsFromJson(json);
}