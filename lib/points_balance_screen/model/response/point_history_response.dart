import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
// ignore: unused_import
import 'package:torri_cantine_app/registration/model/request/registration_request.dart';

part 'point_history_response.freezed.dart';
part 'point_history_response.g.dart';

@freezed
class PointHistoryResponse extends ResponseBase with _$PointHistoryResponse {
  factory PointHistoryResponse({
    required String? id,
    required String? user_id,
    required String? action,
    required String? order_id,
    required String? amount,
    required String? date_earning,
    required String? cancelled,
    required String? description,
    required String? info,
    required String? action_message,

  }) = _PointHistoryResponse;

  factory PointHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$PointHistoryResponseFromJson(json);
}


