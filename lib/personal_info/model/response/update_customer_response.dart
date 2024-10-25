import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'update_customer_response.freezed.dart';
part 'update_customer_response.g.dart';

@freezed
class UpdateCustomerResponse extends ResponseBase
    with _$UpdateCustomerResponse {
  factory UpdateCustomerResponse() = _UpdateCustomerResponse;

  factory UpdateCustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateCustomerResponseFromJson(json);
}
