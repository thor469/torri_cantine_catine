import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'account_request.freezed.dart';
part 'account_request.g.dart';

@freezed
class AccountRequest extends RequestBase with _$AccountRequest {
  AccountRequest._();
  factory AccountRequest({
    required String email,
  }) = _AccountRequest;

  factory AccountRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountRequestFromJson(json);

  @override
  String get endpoint => '/wp-json/wc/v3/customers';
}
