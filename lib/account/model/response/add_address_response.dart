import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/registration/model/request/registration_request.dart';

part 'add_address_response.freezed.dart';
part 'add_address_response.g.dart';

@freezed
class AddAddressResponse extends ResponseBase with _$AddAddressResponse {
  factory AddAddressResponse({
    @Default(<UserAddress>[]) List<UserAddress> billing,
    @Default(<UserAddress>[]) List<UserAddress> shipping,
  }) = _AddAddressResponse;

  factory AddAddressResponse.fromJson(Map<String, dynamic> json) =>
      _$AddAddressResponseFromJson(json);
}

@freezed
class UserAddress with _$UserAddress {
  factory UserAddress({
      required String id,
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
      required bool is_default,
  }) = _UserAddress;

  factory UserAddress.fromJson(Map<String, dynamic> json) => _$UserAddressFromJson(json);
}
