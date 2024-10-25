// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponse _$$_LoginResponseFromJson(Map<String, dynamic> json) =>
    _$_LoginResponse(
      token: json['token'] as String?,
      email: json['user_email'] as String?,
      userName: json['user_nicename'] as String?,
      userNameDisplay: json['user_display_name'] as String?,
    );

Map<String, dynamic> _$$_LoginResponseToJson(_$_LoginResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user_email': instance.email,
      'user_nicename': instance.userName,
      'user_display_name': instance.userNameDisplay,
    };
