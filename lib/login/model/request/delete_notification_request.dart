import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'delete_notification_request.freezed.dart';
part 'delete_notification_request.g.dart';

@freezed
class DeleteNotificationRequest extends RequestBase
    with _$DeleteNotificationRequest {
  DeleteNotificationRequest._();
  factory DeleteNotificationRequest({required String deviceId}) =
      _DeleteNotificationRequest;

  factory DeleteNotificationRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteNotificationRequestFromJson(json);

  @override
  // TODO: implement endpoint
  String get endpoint => "/wp-json/wp/v2/delete_fcm";

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
