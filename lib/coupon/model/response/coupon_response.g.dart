// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CouponResponse _$$_CouponResponseFromJson(Map<String, dynamic> json) =>
    _$_CouponResponse(
      coupons: (json['coupons'] as List<dynamic>?)
              ?.map((e) => Coupon.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Coupon>[],
    );

Map<String, dynamic> _$$_CouponResponseToJson(_$_CouponResponse instance) =>
    <String, dynamic>{
      'coupons': instance.coupons,
    };

_$_Coupon _$$_CouponFromJson(Map<String, dynamic> json) => _$_Coupon(
      code: json['code'] as String,
      amount: json['amount'] as String,
      discount_type: json['discount_type'] as String,
      dateExpires: json['date_expires'] as String?,
    );

Map<String, dynamic> _$$_CouponToJson(_$_Coupon instance) => <String, dynamic>{
      'code': instance.code,
      'amount': instance.amount,
      'discount_type': instance.discount_type,
      'date_expires': instance.dateExpires,
    };
