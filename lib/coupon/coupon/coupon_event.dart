part of 'coupon_bloc.dart';

@freezed
class CouponEvent with _$CouponEvent {
  const factory CouponEvent.fetch(String code) = _Fetch;
  const factory CouponEvent.delete(String code) = _Delete;
  const factory CouponEvent.reset() = _Reset;
}
