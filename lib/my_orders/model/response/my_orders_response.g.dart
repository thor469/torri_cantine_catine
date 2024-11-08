// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_orders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyOrdersResponse _$$_MyOrdersResponseFromJson(Map<String, dynamic> json) =>
    _$_MyOrdersResponse(
      order_id: (json['order_id'] as num?)?.toInt(),
      status: json['status'] as String?,
      order_key: json['order_key'] as String?,
      order_number: json['order_number'] as String?,
      customer_note: json['customer_note'] as String?,
      customer_id: (json['customer_id'] as num?)?.toInt(),
      billing_address: json['billing_address'] == null
          ? null
          : AddressResponse.fromJson(
              json['billing_address'] as Map<String, dynamic>),
      shipping_address: json['shipping_address'] == null
          ? null
          : AddressResponse.fromJson(
              json['shipping_address'] as Map<String, dynamic>),
      payment_method: json['payment_method'] as String?,
      payment_result: json['payment_result'] == null
          ? null
          : PaymentResult.fromJson(
              json['payment_result'] as Map<String, dynamic>),
      additional_fields: json['additional_fields'] as List<dynamic>?,
      extensions: json['extensions'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_MyOrdersResponseToJson(_$_MyOrdersResponse instance) =>
    <String, dynamic>{
      'order_id': instance.order_id,
      'status': instance.status,
      'order_key': instance.order_key,
      'order_number': instance.order_number,
      'customer_note': instance.customer_note,
      'customer_id': instance.customer_id,
      'billing_address': instance.billing_address,
      'shipping_address': instance.shipping_address,
      'payment_method': instance.payment_method,
      'payment_result': instance.payment_result,
      'additional_fields': instance.additional_fields,
      'extensions': instance.extensions,
    };

_$_AddressResponse _$$_AddressResponseFromJson(Map<String, dynamic> json) =>
    _$_AddressResponse(
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

Map<String, dynamic> _$$_AddressResponseToJson(_$_AddressResponse instance) =>
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

_$_PaymentResult _$$_PaymentResultFromJson(Map<String, dynamic> json) =>
    _$_PaymentResult(
      payment_status: json['payment_status'] as String?,
      payment_details: (json['payment_details'] as List<dynamic>?)
          ?.map((e) => PaymentDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      redirect_url: json['redirect_url'] as String?,
    );

Map<String, dynamic> _$$_PaymentResultToJson(_$_PaymentResult instance) =>
    <String, dynamic>{
      'payment_status': instance.payment_status,
      'payment_details': instance.payment_details,
      'redirect_url': instance.redirect_url,
    };

_$_PaymentDetails _$$_PaymentDetailsFromJson(Map<String, dynamic> json) =>
    _$_PaymentDetails(
      key: json['key'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_PaymentDetailsToJson(_$_PaymentDetails instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };
