// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_bundle_to_cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddBundleToCart _$$_AddBundleToCartFromJson(Map<String, dynamic> json) =>
    _$_AddBundleToCart(
      id: (json['id'] as num).toInt(),
      data: json['data'] as Map<String, dynamic>,
      cartUrl: json['cartUrl'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$$_AddBundleToCartToJson(_$_AddBundleToCart instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
      'cartUrl': instance.cartUrl,
      'quantity': instance.quantity,
    };
