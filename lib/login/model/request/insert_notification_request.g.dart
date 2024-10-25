// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insert_notification_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InsertNotificationRequest _$$_InsertNotificationRequestFromJson(
        Map<String, dynamic> json) =>
    _$_InsertNotificationRequest(
      token: json['token'] as String,
      deviceId: json['deviceId'] as String,
      userId: (json['userId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$_InsertNotificationRequestToJson(
        _$_InsertNotificationRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'deviceId': instance.deviceId,
      'userId': instance.userId,
    };
