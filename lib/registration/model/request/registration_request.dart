import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'registration_request.freezed.dart';
part 'registration_request.g.dart';

@freezed
class RegistrationRequest extends RequestBase with _$RegistrationRequest {
  RegistrationRequest._();

  factory RegistrationRequest({
    required String email,
    required String first_name,
    required String last_name,
    required String username,
    required String password,
    Billing? billing,
    Shipping? shipping,
  }) = _RegistrationRequest;

  factory RegistrationRequest.fromJson(Map<String, dynamic> json) =>
      _$RegistrationRequestFromJson(json);

  @override
  String get endpoint => '/wp-json/wc/v3/customers';

  @override
  Map<String, dynamic> toData() => {
        "email": email,
        "first_name": first_name,
        "last_name": last_name,
        "password": password,
        "username": username,
        "billing": billing?.toJson(),
        "shipping": shipping?.toJson()
      };
}

@freezed
class Billing with _$Billing {
  Billing._();

  factory Billing({
    String? first_name,
    String? last_name,
    String? address_1,
    String? company,
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
  Shipping._();

  factory Shipping({
    String? first_name,
    String? last_name,
    String? address_1,
    String? company,
    String? address_2,
    required String city,
    required String state,
    required String postcode,
    required String country,
  }) = _Shipping;

  factory Shipping.fromJson(Map<String, dynamic> json) =>
      _$ShippingFromJson(json);
}
