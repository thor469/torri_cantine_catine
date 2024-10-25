import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'add_address_request.freezed.dart';
part 'add_address_request.g.dart';

@freezed
class AddAddressRequest extends RequestBase with _$AddAddressRequest {
  AddAddressRequest._();
  factory AddAddressRequest({
  required String first_name,
  required String last_name,
  required String company,
  required String address_1,
  required String address_2,
  required String city,
  required String state,
  required String postcode,
  required String country,
  required String email,
  required String phone,
  required String notes,
  required String? type,
  required bool is_default,
  }) = _AddAddressRequest;

  factory AddAddressRequest.fromJson(Map<String, dynamic> json) =>
      _$AddAddressRequestFromJson(json);


  @override
  String get endpoint => '/wp-json/wp/v2/user_addresses';
}
