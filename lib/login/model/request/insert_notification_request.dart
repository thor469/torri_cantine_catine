import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'insert_notification_request.freezed.dart';
part 'insert_notification_request.g.dart';

@freezed
class InsertNotificationRequest extends RequestBase
    with _$InsertNotificationRequest {
  InsertNotificationRequest._();
  factory InsertNotificationRequest(
      {required String token,
      required String deviceId, int? userId }) = _InsertNotificationRequest;

  factory InsertNotificationRequest.fromJson(Map<String, dynamic> json) =>
      _$InsertNotificationRequestFromJson(json);

  @override
  // TODO: implement endpoint
  String get endpoint => "/wp-json/wp/v2/insert_fcm";

  @override
  Map<String, dynamic> toData() {
    return {'token': token, 'deviceId': deviceId ,'userId': userId};
  }
}
