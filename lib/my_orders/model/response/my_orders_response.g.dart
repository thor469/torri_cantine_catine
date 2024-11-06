// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_orders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyOrdersResponse _$$_MyOrdersResponseFromJson(Map<String, dynamic> json) =>
    _$_MyOrdersResponse(
      order_id: (json['order_id'] as num?)?.toInt(),
      customer_id: (json['customer_id'] as num?)?.toInt(),
      total: json['total'] as String?,
      order_number: json['order_number'] as String?,
    );

Map<String, dynamic> _$$_MyOrdersResponseToJson(_$_MyOrdersResponse instance) =>
    <String, dynamic>{
      'order_id': instance.order_id,
      'customer_id': instance.customer_id,
      'total': instance.total,
      'order_number': instance.order_number,
    };
