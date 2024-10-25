// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_product_to_cart_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RemoveProductToCartRequest _$$_RemoveProductToCartRequestFromJson(
        Map<String, dynamic> json) =>
    _$_RemoveProductToCartRequest(
      key: json['key'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$$_RemoveProductToCartRequestToJson(
        _$_RemoveProductToCartRequest instance) =>
    <String, dynamic>{
      'key': instance.key,
      'quantity': instance.quantity,
    };
