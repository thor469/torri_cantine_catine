import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/login/model/request/delete_notification_request.dart';
import 'package:torri_cantine_app/login/model/request/insert_notification_request.dart';
import 'package:torri_cantine_app/login/model/request/notification_request.dart';
import 'package:torri_cantine_app/login/model/response/insert_notification_response.dart';
import 'package:torri_cantine_app/login/model/response/notification_response.dart';

class NotificationService extends HttpServiceBase {
  NotificationService(Dio dioInstance) : super(dioInstance);

  Future<GetNotificationResponse> getToken(NotificationRequest request) =>
      postData(
        request: request,
        mapper: (json, _) => GetNotificationResponse.fromJson(json),
        orElse: (json, data) =>
            GetNotificationResponse.fromJson({"device_info": data}),
      );

  Future<InsertNotificationResponse> insertToken(
          InsertNotificationRequest request) =>
      postData(
        queryParameters: request.toData(),
        request: request,
        mapper: (json, _) => InsertNotificationResponse.fromJson(json),
        orElse: (json, data) =>
            InsertNotificationResponse.fromJson({"id": json}),
      );

  Future<InsertNotificationResponse> deleteToken(
          DeleteNotificationRequest request) =>
      postData(
        request: request,
        mapper: (json, _) => InsertNotificationResponse.fromJson(json),
        orElse: (json, data) =>
            InsertNotificationResponse.fromJson({"id": data}),
      );
}
