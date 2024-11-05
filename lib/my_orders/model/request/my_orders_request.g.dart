// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_orders_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyOrdersRequest _$$_MyOrdersRequestFromJson(Map<String, dynamic> json) =>
    _$_MyOrdersRequest(
      billing_address: json['billing_address'] == null
          ? null
          : Billing.fromJson(json['billing_address'] as Map<String, dynamic>),
      shipping_address: json['shipping_address'] == null
          ? null
          : Shipping.fromJson(json['shipping_address'] as Map<String, dynamic>),
      customer_note: json['customer_note'] as String?,
      create_account: json['create_account'] as bool?,
      payment_method: json['payment_method'] as String?,
      payment_data: (json['payment_data'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      extensions: json['extensions'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_MyOrdersRequestToJson(_$_MyOrdersRequest instance) =>
    <String, dynamic>{
      'billing_address': instance.billing_address,
      'shipping_address': instance.shipping_address,
      'customer_note': instance.customer_note,
      'create_account': instance.create_account,
      'payment_method': instance.payment_method,
      'payment_data': instance.payment_data,
      'extensions': instance.extensions,
    };

_$_Billing _$$_BillingFromJson(Map<String, dynamic> json) => _$_Billing(
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      company: json['company'] as String?,
      address_1: json['address_1'] as String?,
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
      'company': instance.company,
      'address_1': instance.address_1,
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
      company: json['company'] as String?,
      address_1: json['address_1'] as String?,
      address_2: json['address_2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$_ShippingToJson(_$_Shipping instance) =>
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
      'phone': instance.phone,
    };
