import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/registration/model/request/registration_request.dart';

part 'update_customer_request.freezed.dart';
part 'update_customer_request.g.dart';

@freezed
class UpdateCustomerRequest extends RequestBase with _$UpdateCustomerRequest {
  UpdateCustomerRequest._();
  factory UpdateCustomerRequest({
    required int? id,
    required String? first_name,
    required String? last_name,
    Billing? billing,
    Shipping? shipping,
  }) = _UpdateCustomerRequest;

  factory UpdateCustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateCustomerRequestFromJson(json);

  @override
  String get endpoint => '/wp-json/wc/v3/customers/$id';
}
