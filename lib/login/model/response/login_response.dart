import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse extends ResponseBase with _$LoginResponse {
  factory LoginResponse({
    String? token,
    @JsonKey(name: "user_email") String? email,
    @JsonKey(name: "user_nicename") String? userName,
    @JsonKey(name: "user_display_name") String? userNameDisplay,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
