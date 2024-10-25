// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_product_to_cart_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateProductToCartRequest _$$_UpdateProductToCartRequestFromJson(
        Map<String, dynamic> json) =>
    _$_UpdateProductToCartRequest(
      key: json['key'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$$_UpdateProductToCartRequestToJson(
        _$_UpdateProductToCartRequest instance) =>
    <String, dynamic>{
      'key': instance.key,
      'quantity': instance.quantity,
    };
