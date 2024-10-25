// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_address_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddAddressResponse _$$_AddAddressResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AddAddressResponse(
      billing: (json['billing'] as List<dynamic>?)
              ?.map((e) => UserAddress.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <UserAddress>[],
      shipping: (json['shipping'] as List<dynamic>?)
              ?.map((e) => UserAddress.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <UserAddress>[],
    );

Map<String, dynamic> _$$_AddAddressResponseToJson(
        _$_AddAddressResponse instance) =>
    <String, dynamic>{
      'billing': instance.billing,
      'shipping': instance.shipping,
    };

_$_UserAddress _$$_UserAddressFromJson(Map<String, dynamic> json) =>
    _$_UserAddress(
      id: json['id'] as String,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      company: json['company'] as String,
      address_1: json['address_1'] as String,
      address_2: json['address_2'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      postcode: json['postcode'] as String,
      country: json['country'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      notes: json['notes'] as String,
      is_default: json['is_default'] as bool,
    );

Map<String, dynamic> _$$_UserAddressToJson(_$_UserAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'company': instance.company,
      'address_1': instance.address_1,
      'address_2': instance.address_2,
      'city': instance.city,
      'state': instance.state,
      'postcode': instance.postcode,
      'country': instance.country,
      'email': instance.email,
      'phone': instance.phone,
      'notes': instance.notes,
      'is_default': instance.is_default,
    };
