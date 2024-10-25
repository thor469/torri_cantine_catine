// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegistrationRequest _$$_RegistrationRequestFromJson(
        Map<String, dynamic> json) =>
    _$_RegistrationRequest(
      email: json['email'] as String,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      billing: json['billing'] == null
          ? null
          : Billing.fromJson(json['billing'] as Map<String, dynamic>),
      shipping: json['shipping'] == null
          ? null
          : Shipping.fromJson(json['shipping'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RegistrationRequestToJson(
        _$_RegistrationRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'username': instance.username,
      'password': instance.password,
      'billing': instance.billing,
      'shipping': instance.shipping,
    };

_$_Billing _$$_BillingFromJson(Map<String, dynamic> json) => _$_Billing(
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      address_1: json['address_1'] as String?,
      company: json['company'] as String?,
      address_2: json['address_2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$_BillingToJson(_$_Billing instance) =>
    <String, dynamic>{
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'address_1': instance.address_1,
      'company': instance.company,
      'address_2': instance.address_2,
      'city': instance.city,
      'state': instance.state,
      'postcode': instance.postcode,
      'country': instance.country,
      'email': instance.email,
      'phone': instance.phone,
    };

_$_Shipping _$$_ShippingFromJson(Map<String, dynamic> json) => _$_Shipping(
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      address_1: json['address_1'] as String?,
      company: json['company'] as String?,
      address_2: json['address_2'] as String?,
      city: json['city'] as String,
      state: json['state'] as String,
      postcode: json['postcode'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$$_ShippingToJson(_$_Shipping instance) =>
    <String, dynamic>{
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'address_1': instance.address_1,
      'company': instance.company,
      'address_2': instance.address_2,
      'city': instance.city,
      'state': instance.state,
      'postcode': instance.postcode,
      'country': instance.country,
    };
