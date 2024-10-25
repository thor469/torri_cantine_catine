// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetNotificationResponse _$$_GetNotificationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetNotificationResponse(
      notificationsData: (json['notificationsData'] as List<dynamic>?)
              ?.map((e) =>
                  GetNotificationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <GetNotificationModel>[],
    );

Map<String, dynamic> _$$_GetNotificationResponseToJson(
        _$_GetNotificationResponse instance) =>
    <String, dynamic>{
      'notificationsData': instance.notificationsData,
    };

_$_GetNotificationModel _$$_GetNotificationModelFromJson(
        Map<String, dynamic> json) =>
    _$_GetNotificationModel(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      deviceId: json['deviceId'] as String?,
      token: json['token'] as String?,
      dateInsert: json['dateInsert'] as String?,
      dateUpdate: json['dateUpdate'] as String?,
      active: json['active'] as String?,
    );

Map<String, dynamic> _$$_GetNotificationModelToJson(
        _$_GetNotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'deviceId': instance.deviceId,
      'token': instance.token,
      'dateInsert': instance.dateInsert,
      'dateUpdate': instance.dateUpdate,
      'active': instance.active,
    };
