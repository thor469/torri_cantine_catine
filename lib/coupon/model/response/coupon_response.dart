import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

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
    @JsonKey(name: "date_expires") String? dateExpires,
  }) = _Coupon;

  factory Coupon.fromJson(Map<String, dynamic> json) => _$CouponFromJson(json);
}
