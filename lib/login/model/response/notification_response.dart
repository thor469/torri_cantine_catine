import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'notification_response.freezed.dart';
part 'notification_response.g.dart';

@freezed
class GetNotificationResponse extends ResponseBase
    with _$GetNotificationResponse {
  factory GetNotificationResponse(
          {@Default(<GetNotificationModel>[])
              List<GetNotificationModel> notificationsData}) =
      _GetNotificationResponse;

  factory GetNotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$GetNotificationResponseFromJson(json);
}

@freezed
class GetNotificationModel with _$GetNotificationModel {
  factory GetNotificationModel(
      {String? id,
      String? userId,
      String? deviceId,
      String? token,
      String? dateInsert,
      String? dateUpdate,
      String? active}) = _GetNotificationModel;

  factory GetNotificationModel.fromJson(Map<String, dynamic> json) =>
      _$GetNotificationModelFromJson(json);
}
