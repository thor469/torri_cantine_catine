// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_bundle_to_cart_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateBundleToCartRequest _$$_UpdateBundleToCartRequestFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateBundleToCartRequest(
      key: json['key'] as String,
      data: json['data'] as Map<String, dynamic>,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$$_UpdateBundleToCartRequestToJson(
        _$_UpdateBundleToCartRequest instance) =>
    <String, dynamic>{
      'key': instance.key,
      'data': instance.data,
      'quantity': instance.quantity,
    };
