import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/registration/model/request/registration_request.dart';

part 'account_response.freezed.dart';
part 'account_response.g.dart';

@freezed
class AccountResponse extends ResponseBase with _$AccountResponse {
  factory AccountResponse({
    @Default(<User>[]) List<User> user,
  }) = _AccountResponse;

  factory AccountResponse.fromJson(Map<String, dynamic> json) =>
      _$AccountResponseFromJson(json);
}

@freezed
class User with _$User {
  factory User({
    required int id,
    required String first_name,
    required String last_name,
    required String username,
    required String avatar_url,
    Billing? billing,
    Shipping? shipping,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
