// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_coupon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddCouponResponse _$$_AddCouponResponseFromJson(Map<String, dynamic> json) =>
    _$_AddCouponResponse(
      couponList: (json['couponList'] as List<dynamic>?)
              ?.map((e) => Coupons.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Coupons>[],
    );

Map<String, dynamic> _$$_AddCouponResponseToJson(
        _$_AddCouponResponse instance) =>
    <String, dynamic>{
      'couponList': instance.couponList,
    };

_$_Coupons _$$_CouponsFromJson(Map<String, dynamic> json) => _$_Coupons(
      code: json['code'] as String,
      discountType: json['discount_type'] as String,
      totals: Totals.fromJson(json['totals'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CouponsToJson(_$_Coupons instance) =>
    <String, dynamic>{
      'code': instance.code,
      'discount_type': instance.discountType,
      'totals': instance.totals,
    };

_$_Totals _$$_TotalsFromJson(Map<String, dynamic> json) => _$_Totals(
      totalDiscount: json['total_discount'] as String,
      totalDiscountTax: json['total_discount_tax'] as String,
      currencyCode: json['currency_code'] as String,
      currencySymbol: json['currency_symbol'] as String,
      currencyMinorUnit: (json['currency_minor_unit'] as num).toInt(),
      currencyDecimalSeparator: json['currency_decimal_separator'] as String,
      currencyThousandSeparator: json['currency_thousand_separator'] as String,
      currencyPrefix: json['currency_prefix'] as String,
      currencySuffix: json['currency_suffix'] as String,
    );

Map<String, dynamic> _$$_TotalsToJson(_$_Totals instance) => <String, dynamic>{
      'total_discount': instance.totalDiscount,
      'total_discount_tax': instance.totalDiscountTax,
      'currency_code': instance.currencyCode,
      'currency_symbol': instance.currencySymbol,
      'currency_minor_unit': instance.currencyMinorUnit,
      'currency_decimal_separator': instance.currencyDecimalSeparator,
      'currency_thousand_separator': instance.currencyThousandSeparator,
      'currency_prefix': instance.currencyPrefix,
      'currency_suffix': instance.currencySuffix,
    };
