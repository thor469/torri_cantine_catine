import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'add_coupon_response.freezed.dart';
part 'add_coupon_response.g.dart';

@freezed
class AddCouponResponse extends ResponseBase with _$AddCouponResponse {
  factory AddCouponResponse({
    @Default(<Coupons>[]) List<Coupons>? couponList,
  }) = _AddCouponResponse;

  factory AddCouponResponse.fromJson(Map<String, dynamic> json) =>
      _$AddCouponResponseFromJson(json);
}

@freezed
class Coupons extends ResponseBase with _$Coupons {
  factory Coupons({
    required String code,
    @JsonKey(name: "discount_type")
    required String discountType,
    required Totals totals,
  }) = _Coupons;

  factory Coupons.fromJson(Map<String, dynamic> json) =>
      _$CouponsFromJson(json);
}



@freezed
class Totals extends ResponseBase with _$Totals {
  factory Totals({
    @JsonKey(name: "total_discount")
    required String totalDiscount,
    @JsonKey(name: "total_discount_tax")
    required String totalDiscountTax,
    @JsonKey(name: "currency_code")
    required String currencyCode,
    @JsonKey(name: "currency_symbol")
    required String currencySymbol,
    @JsonKey(name: "currency_minor_unit")
    required int currencyMinorUnit,
    @JsonKey(name: "currency_decimal_separator")
    required String currencyDecimalSeparator,
    @JsonKey(name: "currency_thousand_separator")
    required String currencyThousandSeparator,
    @JsonKey(name: "currency_prefix")
    required String currencyPrefix,
    @JsonKey(name: "currency_suffix")
    required String currencySuffix,
  }) = _Totals;

  factory Totals.fromJson(Map<String, dynamic> json) =>
      _$TotalsFromJson(json);
}

