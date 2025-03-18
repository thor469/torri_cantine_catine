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
      email: json['email'] as String,
    );

Map<String, dynamic> _$$_InsertNotificationRequestToJson(
        _$_InsertNotificationRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'deviceId': instance.deviceId,
      'email': instance.email,
    };
