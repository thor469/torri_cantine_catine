import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/cart/model/response/cart_response.dart';

part 'coupon_response.freezed.dart';
part 'coupon_response.g.dart';

@freezed
class CouponResponse extends ResponseBase with _$CouponResponse {
  factory CouponResponse({
    @Default(<Coupon>[]) List<Coupon>? coupons,
  }) = _CouponResponse;

  factory CouponResponse.fromJson(Map<String, dynamic> json) =>
      _$CouponResponseFromJson(json);
}

@freezed
class Coupon with _$Coupon {
  factory Coupon({
    required final String code,
    required final String amount,
    required final String discount_type,
//TODO MAPPA NULLABLE
//     required final TotalsDisc? totals
//   totals": {
//   "total_discount": "820",
//   "total_discount_tax": "180",
//   "currency_code": "EUR",
//   "currency_symbol": "€",
//   "currency_minor_unit": 2,
//   "currency_decimal_separator": ",",
//   "currency_thousand_separator": ".",
//   "currency_prefix": "",
//   "currency_suffix": "€"
// },
    @JsonKey(name: "date_expires") String? dateExpires,
  }) = _Coupon;

  factory Coupon.fromJson(Map<String, dynamic> json) => _$CouponFromJson(json);
}
