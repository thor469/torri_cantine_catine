import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'notification_request.freezed.dart';
part 'notification_request.g.dart';

@freezed
class NotificationRequest extends RequestBase with _$NotificationRequest {
  NotificationRequest._();
  factory NotificationRequest() = _NotificationRequest;

  factory NotificationRequest.fromJson(Map<String, dynamic> json) =>
      _$NotificationRequestFromJson(json);

  @override
  String get endpoint => "/wp-json/wp/v2/get_fcm";

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
