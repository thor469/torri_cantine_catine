// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressResponse _$$_AddressResponseFromJson(Map<String, dynamic> json) =>
    _$_AddressResponse(
      billing: (json['billing'] as List<dynamic>?)
              ?.map((e) => UserAddress.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <UserAddress>[],
      shipping: (json['shipping'] as List<dynamic>?)
              ?.map((e) => UserAddress.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <UserAddress>[],
    );

Map<String, dynamic> _$$_AddressResponseToJson(_$_AddressResponse instance) =>
    <String, dynamic>{
      'billing': instance.billing,
      'shipping': instance.shipping,
    };
