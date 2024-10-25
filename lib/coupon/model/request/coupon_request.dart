import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'coupon_request.freezed.dart';
part 'coupon_request.g.dart';

@freezed
class CouponRequest extends RequestBase with _$CouponRequest {
  CouponRequest._();
  factory CouponRequest() = _CouponRequest;

  factory CouponRequest.fromJson(Map<String, dynamic> json) =>
      _$CouponRequestFromJson(json);

  @override
  String get endpoint => '/wp-json/wc/v3/coupons';
}


