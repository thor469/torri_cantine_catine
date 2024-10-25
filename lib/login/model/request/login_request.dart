import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'login_request.freezed.dart';
part 'login_request.g.dart';

@freezed
class LoginRequest extends RequestBase with _$LoginRequest {
  LoginRequest._();
  factory LoginRequest({
    required String username,
    required String password,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);

  @override
  String get endpoint => '/wp-json/jwt-auth/v1/token';

  @override
  Map<String, dynamic> toData() {
    return {"username": username, "password": password};
  }
}
