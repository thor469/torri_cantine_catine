part of 'coupon_bloc.dart';

@freezed
class CouponState with _$CouponState {
  const factory CouponState.initial() = _Initial;
  const factory CouponState.loading() = _Loading;
  const factory CouponState.gotCoupon(Coupon coupon) = _Loaded;
  const factory CouponState.noCoupon() = _NoCoupon;
  const factory CouponState.couponNotFound() = _NotFound;
  const factory CouponState.error() = _Error;
}
