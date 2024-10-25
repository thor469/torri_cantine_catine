// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_bundle_to_cart_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RemoveBundleToCartRequest _$$_RemoveBundleToCartRequestFromJson(
        Map<String, dynamic> json) =>
    _$_RemoveBundleToCartRequest(
      key: json['key'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$$_RemoveBundleToCartRequestToJson(
        _$_RemoveBundleToCartRequest instance) =>
    <String, dynamic>{
      'key': instance.key,
      'quantity': instance.quantity,
    };
