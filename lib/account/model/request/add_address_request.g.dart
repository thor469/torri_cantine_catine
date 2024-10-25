// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_address_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddAddressRequest _$$_AddAddressRequestFromJson(Map<String, dynamic> json) =>
    _$_AddAddressRequest(
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
      type: json['type'] as String?,
      is_default: json['is_default'] as bool,
    );

Map<String, dynamic> _$$_AddAddressRequestToJson(
        _$_AddAddressRequest instance) =>
    <String, dynamic>{
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
      'type': instance.type,
      'is_default': instance.is_default,
    };
