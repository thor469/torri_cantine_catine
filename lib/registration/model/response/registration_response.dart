import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'registration_response.freezed.dart';
part 'registration_response.g.dart';

@freezed
class RegistrationResponse extends ResponseBase with _$RegistrationResponse {
  factory RegistrationResponse({
    int? id,
  }) = _RegistrationResponse;

  factory RegistrationResponse.fromJson(Map<String, dynamic> json) =>
      _$RegistrationResponseFromJson(json);
}
