// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_coupon_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddCouponResponse _$AddCouponResponseFromJson(Map<String, dynamic> json) {
  return _AddCouponResponse.fromJson(json);
}

/// @nodoc
mixin _$AddCouponResponse {
  List<Coupons>? get couponList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddCouponResponseCopyWith<AddCouponResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCouponResponseCopyWith<$Res> {
  factory $AddCouponResponseCopyWith(
          AddCouponResponse value, $Res Function(AddCouponResponse) then) =
      _$AddCouponResponseCopyWithImpl<$Res, AddCouponResponse>;
  @useResult
  $Res call({List<Coupons>? couponList});
}

/// @nodoc
class _$AddCouponResponseCopyWithImpl<$Res, $Val extends AddCouponResponse>
    implements $AddCouponResponseCopyWith<$Res> {
  _$AddCouponResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponList = freezed,
  }) {
    return _then(_value.copyWith(
      couponList: freezed == couponList
          ? _value.couponList
          : couponList // ignore: cast_nullable_to_non_nullable
              as List<Coupons>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddCouponResponseCopyWith<$Res>
    implements $AddCouponResponseCopyWith<$Res> {
  factory _$$_AddCouponResponseCopyWith(_$_AddCouponResponse value,
          $Res Function(_$_AddCouponResponse) then) =
      __$$_AddCouponResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Coupons>? couponList});
}

/// @nodoc
class __$$_AddCouponResponseCopyWithImpl<$Res>
    extends _$AddCouponResponseCopyWithImpl<$Res, _$_AddCouponResponse>
    implements _$$_AddCouponResponseCopyWith<$Res> {
  __$$_AddCouponResponseCopyWithImpl(
      _$_AddCouponResponse _value, $Res Function(_$_AddCouponResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponList = freezed,
  }) {
    return _then(_$_AddCouponResponse(
      couponList: freezed == couponList
          ? _value._couponList
          : couponList // ignore: cast_nullable_to_non_nullable
              as List<Coupons>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddCouponResponse implements _AddCouponResponse {
  _$_AddCouponResponse({final List<Coupons>? couponList = const <Coupons>[]})
      : _couponList = couponList;

  factory _$_AddCouponResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AddCouponResponseFromJson(json);

  final List<Coupons>? _couponList;
  @override
  @JsonKey()
  List<Coupons>? get couponList {
    final value = _couponList;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AddCouponResponse(couponList: $couponList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCouponResponse &&
            const DeepCollectionEquality()
                .equals(other._couponList, _couponList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_couponList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCouponResponseCopyWith<_$_AddCouponResponse> get copyWith =>
      __$$_AddCouponResponseCopyWithImpl<_$_AddCouponResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddCouponResponseToJson(
      this,
    );
  }
}

abstract class _AddCouponResponse implements AddCouponResponse {
  factory _AddCouponResponse({final List<Coupons>? couponList}) =
      _$_AddCouponResponse;

  factory _AddCouponResponse.fromJson(Map<String, dynamic> json) =
      _$_AddCouponResponse.fromJson;

  @override
  List<Coupons>? get couponList;
  @override
  @JsonKey(ignore: true)
  _$$_AddCouponResponseCopyWith<_$_AddCouponResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Coupons _$CouponsFromJson(Map<String, dynamic> json) {
  return _Coupons.fromJson(json);
}

/// @nodoc
mixin _$Coupons {
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_type")
  String get discountType => throw _privateConstructorUsedError;
  Totals get totals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponsCopyWith<Coupons> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponsCopyWith<$Res> {
  factory $CouponsCopyWith(Coupons value, $Res Function(Coupons) then) =
      _$CouponsCopyWithImpl<$Res, Coupons>;
  @useResult
  $Res call(
      {String code,
      @JsonKey(name: "discount_type") String discountType,
      Totals totals});

  $TotalsCopyWith<$Res> get totals;
}

/// @nodoc
class _$CouponsCopyWithImpl<$Res, $Val extends Coupons>
    implements $CouponsCopyWith<$Res> {
  _$CouponsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? discountType = null,
    Object? totals = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String,
      totals: null == totals
          ? _value.totals
          : totals // ignore: cast_nullable_to_non_nullable
              as Totals,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TotalsCopyWith<$Res> get totals {
    return $TotalsCopyWith<$Res>(_value.totals, (value) {
      return _then(_value.copyWith(totals: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CouponsCopyWith<$Res> implements $CouponsCopyWith<$Res> {
  factory _$$_CouponsCopyWith(
          _$_Coupons value, $Res Function(_$_Coupons) then) =
      __$$_CouponsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      @JsonKey(name: "discount_type") String discountType,
      Totals totals});

  @override
  $TotalsCopyWith<$Res> get totals;
}

/// @nodoc
class __$$_CouponsCopyWithImpl<$Res>
    extends _$CouponsCopyWithImpl<$Res, _$_Coupons>
    implements _$$_CouponsCopyWith<$Res> {
  __$$_CouponsCopyWithImpl(_$_Coupons _value, $Res Function(_$_Coupons) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? discountType = null,
    Object? totals = null,
  }) {
    return _then(_$_Coupons(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String,
      totals: null == totals
          ? _value.totals
          : totals // ignore: cast_nullable_to_non_nullable
              as Totals,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Coupons implements _Coupons {
  _$_Coupons(
      {required this.code,
      @JsonKey(name: "discount_type") required this.discountType,
      required this.totals});

  factory _$_Coupons.fromJson(Map<String, dynamic> json) =>
      _$$_CouponsFromJson(json);

  @override
  final String code;
  @override
  @JsonKey(name: "discount_type")
  final String discountType;
  @override
  final Totals totals;

  @override
  String toString() {
    return 'Coupons(code: $code, discountType: $discountType, totals: $totals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Coupons &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.totals, totals) || other.totals == totals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, discountType, totals);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CouponsCopyWith<_$_Coupons> get copyWith =>
      __$$_CouponsCopyWithImpl<_$_Coupons>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CouponsToJson(
      this,
    );
  }
}

abstract class _Coupons implements Coupons {
  factory _Coupons(
      {required final String code,
      @JsonKey(name: "discount_type") required final String discountType,
      required final Totals totals}) = _$_Coupons;

  factory _Coupons.fromJson(Map<String, dynamic> json) = _$_Coupons.fromJson;

  @override
  String get code;
  @override
  @JsonKey(name: "discount_type")
  String get discountType;
  @override
  Totals get totals;
  @override
  @JsonKey(ignore: true)
  _$$_CouponsCopyWith<_$_Coupons> get copyWith =>
      throw _privateConstructorUsedError;
}

Totals _$TotalsFromJson(Map<String, dynamic> json) {
  return _Totals.fromJson(json);
}

/// @nodoc
mixin _$Totals {
  @JsonKey(name: "total_discount")
  String get totalDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_discount_tax")
  String get totalDiscountTax => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_code")
  String get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_symbol")
  String get currencySymbol => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_minor_unit")
  int get currencyMinorUnit => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_decimal_separator")
  String get currencyDecimalSeparator => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_thousand_separator")
  String get currencyThousandSeparator => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_prefix")
  String get currencyPrefix => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_suffix")
  String get currencySuffix => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TotalsCopyWith<Totals> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalsCopyWith<$Res> {
  factory $TotalsCopyWith(Totals value, $Res Function(Totals) then) =
      _$TotalsCopyWithImpl<$Res, Totals>;
  @useResult
  $Res call(
      {@JsonKey(name: "total_discount") String totalDiscount,
      @JsonKey(name: "total_discount_tax") String totalDiscountTax,
      @JsonKey(name: "currency_code") String currencyCode,
      @JsonKey(name: "currency_symbol") String currencySymbol,
      @JsonKey(name: "currency_minor_unit") int currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      String currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      String currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") String currencyPrefix,
      @JsonKey(name: "currency_suffix") String currencySuffix});
}

/// @nodoc
class _$TotalsCopyWithImpl<$Res, $Val extends Totals>
    implements $TotalsCopyWith<$Res> {
  _$TotalsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalDiscount = null,
    Object? totalDiscountTax = null,
    Object? currencyCode = null,
    Object? currencySymbol = null,
    Object? currencyMinorUnit = null,
    Object? currencyDecimalSeparator = null,
    Object? currencyThousandSeparator = null,
    Object? currencyPrefix = null,
    Object? currencySuffix = null,
  }) {
    return _then(_value.copyWith(
      totalDiscount: null == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as String,
      totalDiscountTax: null == totalDiscountTax
          ? _value.totalDiscountTax
          : totalDiscountTax // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      currencyMinorUnit: null == currencyMinorUnit
          ? _value.currencyMinorUnit
          : currencyMinorUnit // ignore: cast_nullable_to_non_nullable
              as int,
      currencyDecimalSeparator: null == currencyDecimalSeparator
          ? _value.currencyDecimalSeparator
          : currencyDecimalSeparator // ignore: cast_nullable_to_non_nullable
              as String,
      currencyThousandSeparator: null == currencyThousandSeparator
          ? _value.currencyThousandSeparator
          : currencyThousandSeparator // ignore: cast_nullable_to_non_nullable
              as String,
      currencyPrefix: null == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String,
      currencySuffix: null == currencySuffix
          ? _value.currencySuffix
          : currencySuffix // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TotalsCopyWith<$Res> implements $TotalsCopyWith<$Res> {
  factory _$$_TotalsCopyWith(_$_Totals value, $Res Function(_$_Totals) then) =
      __$$_TotalsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total_discount") String totalDiscount,
      @JsonKey(name: "total_discount_tax") String totalDiscountTax,
      @JsonKey(name: "currency_code") String currencyCode,
      @JsonKey(name: "currency_symbol") String currencySymbol,
      @JsonKey(name: "currency_minor_unit") int currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      String currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      String currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") String currencyPrefix,
      @JsonKey(name: "currency_suffix") String currencySuffix});
}

/// @nodoc
class __$$_TotalsCopyWithImpl<$Res>
    extends _$TotalsCopyWithImpl<$Res, _$_Totals>
    implements _$$_TotalsCopyWith<$Res> {
  __$$_TotalsCopyWithImpl(_$_Totals _value, $Res Function(_$_Totals) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalDiscount = null,
    Object? totalDiscountTax = null,
    Object? currencyCode = null,
    Object? currencySymbol = null,
    Object? currencyMinorUnit = null,
    Object? currencyDecimalSeparator = null,
    Object? currencyThousandSeparator = null,
    Object? currencyPrefix = null,
    Object? currencySuffix = null,
  }) {
    return _then(_$_Totals(
      totalDiscount: null == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as String,
      totalDiscountTax: null == totalDiscountTax
          ? _value.totalDiscountTax
          : totalDiscountTax // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      currencyMinorUnit: null == currencyMinorUnit
          ? _value.currencyMinorUnit
          : currencyMinorUnit // ignore: cast_nullable_to_non_nullable
              as int,
      currencyDecimalSeparator: null == currencyDecimalSeparator
          ? _value.currencyDecimalSeparator
          : currencyDecimalSeparator // ignore: cast_nullable_to_non_nullable
              as String,
      currencyThousandSeparator: null == currencyThousandSeparator
          ? _value.currencyThousandSeparator
          : currencyThousandSeparator // ignore: cast_nullable_to_non_nullable
              as String,
      currencyPrefix: null == currencyPrefix
          ? _value.currencyPrefix
          : currencyPrefix // ignore: cast_nullable_to_non_nullable
              as String,
      currencySuffix: null == currencySuffix
          ? _value.currencySuffix
          : currencySuffix // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Totals implements _Totals {
  _$_Totals(
      {@JsonKey(name: "total_discount") required this.totalDiscount,
      @JsonKey(name: "total_discount_tax") required this.totalDiscountTax,
      @JsonKey(name: "currency_code") required this.currencyCode,
      @JsonKey(name: "currency_symbol") required this.currencySymbol,
      @JsonKey(name: "currency_minor_unit") required this.currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      required this.currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      required this.currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") required this.currencyPrefix,
      @JsonKey(name: "currency_suffix") required this.currencySuffix});

  factory _$_Totals.fromJson(Map<String, dynamic> json) =>
      _$$_TotalsFromJson(json);

  @override
  @JsonKey(name: "total_discount")
  final String totalDiscount;
  @override
  @JsonKey(name: "total_discount_tax")
  final String totalDiscountTax;
  @override
  @JsonKey(name: "currency_code")
  final String currencyCode;
  @override
  @JsonKey(name: "currency_symbol")
  final String currencySymbol;
  @override
  @JsonKey(name: "currency_minor_unit")
  final int currencyMinorUnit;
  @override
  @JsonKey(name: "currency_decimal_separator")
  final String currencyDecimalSeparator;
  @override
  @JsonKey(name: "currency_thousand_separator")
  final String currencyThousandSeparator;
  @override
  @JsonKey(name: "currency_prefix")
  final String currencyPrefix;
  @override
  @JsonKey(name: "currency_suffix")
  final String currencySuffix;

  @override
  String toString() {
    return 'Totals(totalDiscount: $totalDiscount, totalDiscountTax: $totalDiscountTax, currencyCode: $currencyCode, currencySymbol: $currencySymbol, currencyMinorUnit: $currencyMinorUnit, currencyDecimalSeparator: $currencyDecimalSeparator, currencyThousandSeparator: $currencyThousandSeparator, currencyPrefix: $currencyPrefix, currencySuffix: $currencySuffix)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Totals &&
            (identical(other.totalDiscount, totalDiscount) ||
                other.totalDiscount == totalDiscount) &&
            (identical(other.totalDiscountTax, totalDiscountTax) ||
                other.totalDiscountTax == totalDiscountTax) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.currencyMinorUnit, currencyMinorUnit) ||
                other.currencyMinorUnit == currencyMinorUnit) &&
            (identical(
                    other.currencyDecimalSeparator, currencyDecimalSeparator) ||
                other.currencyDecimalSeparator == currencyDecimalSeparator) &&
            (identical(other.currencyThousandSeparator,
                    currencyThousandSeparator) ||
                other.currencyThousandSeparator == currencyThousandSeparator) &&
            (identical(other.currencyPrefix, currencyPrefix) ||
                other.currencyPrefix == currencyPrefix) &&
            (identical(other.currencySuffix, currencySuffix) ||
                other.currencySuffix == currencySuffix));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalDiscount,
      totalDiscountTax,
      currencyCode,
      currencySymbol,
      currencyMinorUnit,
      currencyDecimalSeparator,
      currencyThousandSeparator,
      currencyPrefix,
      currencySuffix);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TotalsCopyWith<_$_Totals> get copyWith =>
      __$$_TotalsCopyWithImpl<_$_Totals>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TotalsToJson(
      this,
    );
  }
}

abstract class _Totals implements Totals {
  factory _Totals(
      {@JsonKey(name: "total_discount") required final String totalDiscount,
      @JsonKey(name: "total_discount_tax")
      required final String totalDiscountTax,
      @JsonKey(name: "currency_code") required final String currencyCode,
      @JsonKey(name: "currency_symbol") required final String currencySymbol,
      @JsonKey(name: "currency_minor_unit")
      required final int currencyMinorUnit,
      @JsonKey(name: "currency_decimal_separator")
      required final String currencyDecimalSeparator,
      @JsonKey(name: "currency_thousand_separator")
      required final String currencyThousandSeparator,
      @JsonKey(name: "currency_prefix") required final String currencyPrefix,
      @JsonKey(name: "currency_suffix")
      required final String currencySuffix}) = _$_Totals;

  factory _Totals.fromJson(Map<String, dynamic> json) = _$_Totals.fromJson;

  @override
  @JsonKey(name: "total_discount")
  String get totalDiscount;
  @override
  @JsonKey(name: "total_discount_tax")
  String get totalDiscountTax;
  @override
  @JsonKey(name: "currency_code")
  String get currencyCode;
  @override
  @JsonKey(name: "currency_symbol")
  String get currencySymbol;
  @override
  @JsonKey(name: "currency_minor_unit")
  int get currencyMinorUnit;
  @override
  @JsonKey(name: "currency_decimal_separator")
  String get currencyDecimalSeparator;
  @override
  @JsonKey(name: "currency_thousand_separator")
  String get currencyThousandSeparator;
  @override
  @JsonKey(name: "currency_prefix")
  String get currencyPrefix;
  @override
  @JsonKey(name: "currency_suffix")
  String get currencySuffix;
  @override
  @JsonKey(ignore: true)
  _$$_TotalsCopyWith<_$_Totals> get copyWith =>
      throw _privateConstructorUsedError;
}
