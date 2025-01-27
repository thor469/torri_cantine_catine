// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PointHistoryResponse _$$_PointHistoryResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PointHistoryResponse(
      id: json['id'] as String?,
      user_id: json['user_id'] as String?,
      action: json['action'] as String?,
      order_id: json['order_id'] as String?,
      amount: json['amount'] as String?,
      date_earning: json['date_earning'] as String?,
      cancelled: json['cancelled'] as String?,
      description: json['description'] as String?,
      info: json['info'] as String?,
      action_message: json['action_message'] as String?,
    );

Map<String, dynamic> _$$_PointHistoryResponseToJson(
        _$_PointHistoryResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'action': instance.action,
      'order_id': instance.order_id,
      'amount': instance.amount,
      'date_earning': instance.date_earning,
      'cancelled': instance.cancelled,
      'description': instance.description,
      'info': instance.info,
      'action_message': instance.action_message,
    };
