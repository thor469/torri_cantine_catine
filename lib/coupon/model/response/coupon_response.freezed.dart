// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coupon_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CouponResponse _$CouponResponseFromJson(Map<String, dynamic> json) {
  return _CouponResponse.fromJson(json);
}

/// @nodoc
mixin _$CouponResponse {
  List<Coupon>? get coupons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponResponseCopyWith<CouponResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponResponseCopyWith<$Res> {
  factory $CouponResponseCopyWith(
          CouponResponse value, $Res Function(CouponResponse) then) =
      _$CouponResponseCopyWithImpl<$Res, CouponResponse>;
  @useResult
  $Res call({List<Coupon>? coupons});
}

/// @nodoc
class _$CouponResponseCopyWithImpl<$Res, $Val extends CouponResponse>
    implements $CouponResponseCopyWith<$Res> {
  _$CouponResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coupons = freezed,
  }) {
    return _then(_value.copyWith(
      coupons: freezed == coupons
          ? _value.coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<Coupon>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CouponResponseCopyWith<$Res>
    implements $CouponResponseCopyWith<$Res> {
  factory _$$_CouponResponseCopyWith(
          _$_CouponResponse value, $Res Function(_$_CouponResponse) then) =
      __$$_CouponResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Coupon>? coupons});
}

/// @nodoc
class __$$_CouponResponseCopyWithImpl<$Res>
    extends _$CouponResponseCopyWithImpl<$Res, _$_CouponResponse>
    implements _$$_CouponResponseCopyWith<$Res> {
  __$$_CouponResponseCopyWithImpl(
      _$_CouponResponse _value, $Res Function(_$_CouponResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coupons = freezed,
  }) {
    return _then(_$_CouponResponse(
      coupons: freezed == coupons
          ? _value._coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<Coupon>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CouponResponse implements _CouponResponse {
  _$_CouponResponse({final List<Coupon>? coupons = const <Coupon>[]})
      : _coupons = coupons;

  factory _$_CouponResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CouponResponseFromJson(json);

  final List<Coupon>? _coupons;
  @override
  @JsonKey()
  List<Coupon>? get coupons {
    final value = _coupons;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CouponResponse(coupons: $coupons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CouponResponse &&
            const DeepCollectionEquality().equals(other._coupons, _coupons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_coupons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CouponResponseCopyWith<_$_CouponResponse> get copyWith =>
      __$$_CouponResponseCopyWithImpl<_$_CouponResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CouponResponseToJson(
      this,
    );
  }
}

abstract class _CouponResponse implements CouponResponse {
  factory _CouponResponse({final List<Coupon>? coupons}) = _$_CouponResponse;

  factory _CouponResponse.fromJson(Map<String, dynamic> json) =
      _$_CouponResponse.fromJson;

  @override
  List<Coupon>? get coupons;
  @override
  @JsonKey(ignore: true)
  _$$_CouponResponseCopyWith<_$_CouponResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Coupon _$CouponFromJson(Map<String, dynamic> json) {
  return _Coupon.fromJson(json);
}

/// @nodoc
mixin _$Coupon {
  String get code => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get discount_type => throw _privateConstructorUsedError;
  @JsonKey(name: "date_expires")
  String? get dateExpires => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponCopyWith<Coupon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponCopyWith<$Res> {
  factory $CouponCopyWith(Coupon value, $Res Function(Coupon) then) =
      _$CouponCopyWithImpl<$Res, Coupon>;
  @useResult
  $Res call(
      {String code,
      String amount,
      String discount_type,
      @JsonKey(name: "date_expires") String? dateExpires});
}

/// @nodoc
class _$CouponCopyWithImpl<$Res, $Val extends Coupon>
    implements $CouponCopyWith<$Res> {
  _$CouponCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? amount = null,
    Object? discount_type = null,
    Object? dateExpires = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      discount_type: null == discount_type
          ? _value.discount_type
          : discount_type // ignore: cast_nullable_to_non_nullable
              as String,
      dateExpires: freezed == dateExpires
          ? _value.dateExpires
          : dateExpires // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CouponCopyWith<$Res> implements $CouponCopyWith<$Res> {
  factory _$$_CouponCopyWith(_$_Coupon value, $Res Function(_$_Coupon) then) =
      __$$_CouponCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      String amount,
      String discount_type,
      @JsonKey(name: "date_expires") String? dateExpires});
}

/// @nodoc
class __$$_CouponCopyWithImpl<$Res>
    extends _$CouponCopyWithImpl<$Res, _$_Coupon>
    implements _$$_CouponCopyWith<$Res> {
  __$$_CouponCopyWithImpl(_$_Coupon _value, $Res Function(_$_Coupon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? amount = null,
    Object? discount_type = null,
    Object? dateExpires = freezed,
  }) {
    return _then(_$_Coupon(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      discount_type: null == discount_type
          ? _value.discount_type
          : discount_type // ignore: cast_nullable_to_non_nullable
              as String,
      dateExpires: freezed == dateExpires
          ? _value.dateExpires
          : dateExpires // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Coupon implements _Coupon {
  _$_Coupon(
      {required this.code,
      required this.amount,
      required this.discount_type,
      @JsonKey(name: "date_expires") this.dateExpires});

  factory _$_Coupon.fromJson(Map<String, dynamic> json) =>
      _$$_CouponFromJson(json);

  @override
  final String code;
  @override
  final String amount;
  @override
  final String discount_type;
  @override
  @JsonKey(name: "date_expires")
  final String? dateExpires;

  @override
  String toString() {
    return 'Coupon(code: $code, amount: $amount, discount_type: $discount_type, dateExpires: $dateExpires)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Coupon &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.discount_type, discount_type) ||
                other.discount_type == discount_type) &&
            (identical(other.dateExpires, dateExpires) ||
                other.dateExpires == dateExpires));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, amount, discount_type, dateExpires);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CouponCopyWith<_$_Coupon> get copyWith =>
      __$$_CouponCopyWithImpl<_$_Coupon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CouponToJson(
      this,
    );
  }
}

abstract class _Coupon implements Coupon {
  factory _Coupon(
      {required final String code,
      required final String amount,
      required final String discount_type,
      @JsonKey(name: "date_expires") final String? dateExpires}) = _$_Coupon;

  factory _Coupon.fromJson(Map<String, dynamic> json) = _$_Coupon.fromJson;

  @override
  String get code;
  @override
  String get amount;
  @override
  String get discount_type;
  @override
  @JsonKey(name: "date_expires")
  String? get dateExpires;
  @override
  @JsonKey(ignore: true)
  _$$_CouponCopyWith<_$_Coupon> get copyWith =>
      throw _privateConstructorUsedError;
}
