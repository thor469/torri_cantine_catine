import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/account/model/response/add_address_response.dart';
import 'package:torri_cantine_app/registration/model/request/registration_request.dart';

part 'address_response.freezed.dart';
part 'address_response.g.dart';

@freezed
class AddressResponse extends ResponseBase with _$AddressResponse {
  factory AddressResponse({
    @Default(<UserAddress>[]) List<UserAddress> billing,
    @Default(<UserAddress>[]) List<UserAddress> shipping,
  }) = _AddressResponse;

  factory AddressResponse.fromJson(Map<String, dynamic> json) =>
      _$AddressResponseFromJson(json);
}


