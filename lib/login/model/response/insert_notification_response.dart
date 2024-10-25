import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'insert_notification_response.freezed.dart';
part 'insert_notification_response.g.dart';

@freezed
class InsertNotificationResponse extends ResponseBase
    with _$InsertNotificationResponse {
  factory InsertNotificationResponse({
    required int id,
  }) = _InsertNotificationResponse;

  factory InsertNotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$InsertNotificationResponseFromJson(json);
}
