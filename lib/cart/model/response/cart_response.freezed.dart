// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartResponse _$CartResponseFromJson(Map<String, dynamic> json) {
  return _CartResponse.fromJson(json);
}

/// @nodoc
mixin _$CartResponse {
  List<Items> get items => throw _privateConstructorUsedError;
  Totals get totals => throw _privateConstructorUsedError;
  @JsonKey(name: 'items_count')
  int get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: "coupons")
  List<Coupon?>? get coupons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartResponseCopyWith<CartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartResponseCopyWith<$Res> {
  factory $CartResponseCopyWith(
          CartResponse value, $Res Function(CartResponse) then) =
      _$CartResponseCopyWithImpl<$Res, CartResponse>;
  @useResult
  $Res call(
      {List<Items> items,
      Totals totals,
      @JsonKey(name: 'items_count') int totalItems,
      @JsonKey(name: "coupons") List<Coupon?>? coupons});

  $TotalsCopyWith<$Res> get totals;
}

/// @nodoc
class _$CartResponseCopyWithImpl<$Res, $Val extends CartResponse>
    implements $CartResponseCopyWith<$Res> {
  _$CartResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totals = null,
    Object? totalItems = null,
    Object? coupons = freezed,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>,
      totals: null == totals
          ? _value.totals
          : totals // ignore: cast_nullable_to_non_nullable
              as Totals,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      coupons: freezed == coupons
          ? _value.coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<Coupon?>?,
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
abstract class _$$_CartResponseCopyWith<$Res>
    implements $CartResponseCopyWith<$Res> {
  factory _$$_CartResponseCopyWith(
          _$_CartResponse value, $Res Function(_$_CartResponse) then) =
      __$$_CartResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Items> items,
      Totals totals,
      @JsonKey(name: 'items_count') int totalItems,
      @JsonKey(name: "coupons") List<Coupon?>? coupons});

  @override
  $TotalsCopyWith<$Res> get totals;
}

/// @nodoc
class __$$_CartResponseCopyWithImpl<$Res>
    extends _$CartResponseCopyWithImpl<$Res, _$_CartResponse>
    implements _$$_CartResponseCopyWith<$Res> {
  __$$_CartResponseCopyWithImpl(
      _$_CartResponse _value, $Res Function(_$_CartResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totals = null,
    Object? totalItems = null,
    Object? coupons = freezed,
  }) {
    return _then(_$_CartResponse(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>,
      totals: null == totals
          ? _value.totals
          : totals // ignore: cast_nullable_to_non_nullable
              as Totals,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      coupons: freezed == coupons
          ? _value._coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<Coupon?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartResponse implements _CartResponse {
  _$_CartResponse(
      {final List<Items> items = const <Items>[],
      required this.totals,
      @JsonKey(name: 'items_count') required this.totalItems,
      @JsonKey(name: "coupons") final List<Coupon?>? coupons})
      : _items = items,
        _coupons = coupons;

  factory _$_CartResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CartResponseFromJson(json);

  final List<Items> _items;
  @override
  @JsonKey()
  List<Items> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final Totals totals;
  @override
  @JsonKey(name: 'items_count')
  final int totalItems;
  final List<Coupon?>? _coupons;
  @override
  @JsonKey(name: "coupons")
  List<Coupon?>? get coupons {
    final value = _coupons;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CartResponse(items: $items, totals: $totals, totalItems: $totalItems, coupons: $coupons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartResponse &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totals, totals) || other.totals == totals) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            const DeepCollectionEquality().equals(other._coupons, _coupons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      totals,
      totalItems,
      const DeepCollectionEquality().hash(_coupons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartResponseCopyWith<_$_CartResponse> get copyWith =>
      __$$_CartResponseCopyWithImpl<_$_CartResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartResponseToJson(
      this,
    );
  }
}

abstract class _CartResponse implements CartResponse {
  factory _CartResponse(
          {final List<Items> items,
          required final Totals totals,
          @JsonKey(name: 'items_count') required final int totalItems,
          @JsonKey(name: "coupons") final List<Coupon?>? coupons}) =
      _$_CartResponse;

  factory _CartResponse.fromJson(Map<String, dynamic> json) =
      _$_CartResponse.fromJson;

  @override
  List<Items> get items;
  @override
  Totals get totals;
  @override
  @JsonKey(name: 'items_count')
  int get totalItems;
  @override
  @JsonKey(name: "coupons")
  List<Coupon?>? get coupons;
  @override
  @JsonKey(ignore: true)
  _$$_CartResponseCopyWith<_$_CartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Totals _$TotalsFromJson(Map<String, dynamic> json) {
  return _Totals.fromJson(json);
}

/// @nodoc
mixin _$Totals {
  @JsonKey(name: 'total_items')
  String get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_items_tax')
  String get totalItemsTax => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_discount')
  String? get totalDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_discount_tax')
  String? get totalDiscountTax => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_price')
  String? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_tax')
  String? get totalTax => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_shipping')
  String? get totalShipping => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_shipping_tax')
  String? get totalShippingTax => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'total_items') String totalItems,
      @JsonKey(name: 'total_items_tax') String totalItemsTax,
      @JsonKey(name: 'total_discount') String? totalDiscount,
      @JsonKey(name: 'total_discount_tax') String? totalDiscountTax,
      @JsonKey(name: 'total_price') String? totalPrice,
      @JsonKey(name: 'total_tax') String? totalTax,
      @JsonKey(name: 'total_shipping') String? totalShipping,
      @JsonKey(name: 'total_shipping_tax') String? totalShippingTax});
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
    Object? totalItems = null,
    Object? totalItemsTax = null,
    Object? totalDiscount = freezed,
    Object? totalDiscountTax = freezed,
    Object? totalPrice = freezed,
    Object? totalTax = freezed,
    Object? totalShipping = freezed,
    Object? totalShippingTax = freezed,
  }) {
    return _then(_value.copyWith(
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as String,
      totalItemsTax: null == totalItemsTax
          ? _value.totalItemsTax
          : totalItemsTax // ignore: cast_nullable_to_non_nullable
              as String,
      totalDiscount: freezed == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      totalDiscountTax: freezed == totalDiscountTax
          ? _value.totalDiscountTax
          : totalDiscountTax // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTax: freezed == totalTax
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as String?,
      totalShipping: freezed == totalShipping
          ? _value.totalShipping
          : totalShipping // ignore: cast_nullable_to_non_nullable
              as String?,
      totalShippingTax: freezed == totalShippingTax
          ? _value.totalShippingTax
          : totalShippingTax // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(name: 'total_items') String totalItems,
      @JsonKey(name: 'total_items_tax') String totalItemsTax,
      @JsonKey(name: 'total_discount') String? totalDiscount,
      @JsonKey(name: 'total_discount_tax') String? totalDiscountTax,
      @JsonKey(name: 'total_price') String? totalPrice,
      @JsonKey(name: 'total_tax') String? totalTax,
      @JsonKey(name: 'total_shipping') String? totalShipping,
      @JsonKey(name: 'total_shipping_tax') String? totalShippingTax});
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
    Object? totalItems = null,
    Object? totalItemsTax = null,
    Object? totalDiscount = freezed,
    Object? totalDiscountTax = freezed,
    Object? totalPrice = freezed,
    Object? totalTax = freezed,
    Object? totalShipping = freezed,
    Object? totalShippingTax = freezed,
  }) {
    return _then(_$_Totals(
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as String,
      totalItemsTax: null == totalItemsTax
          ? _value.totalItemsTax
          : totalItemsTax // ignore: cast_nullable_to_non_nullable
              as String,
      totalDiscount: freezed == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      totalDiscountTax: freezed == totalDiscountTax
          ? _value.totalDiscountTax
          : totalDiscountTax // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTax: freezed == totalTax
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as String?,
      totalShipping: freezed == totalShipping
          ? _value.totalShipping
          : totalShipping // ignore: cast_nullable_to_non_nullable
              as String?,
      totalShippingTax: freezed == totalShippingTax
          ? _value.totalShippingTax
          : totalShippingTax // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Totals implements _Totals {
  _$_Totals(
      {@JsonKey(name: 'total_items') required this.totalItems,
      @JsonKey(name: 'total_items_tax') required this.totalItemsTax,
      @JsonKey(name: 'total_discount') this.totalDiscount,
      @JsonKey(name: 'total_discount_tax') this.totalDiscountTax,
      @JsonKey(name: 'total_price') this.totalPrice,
      @JsonKey(name: 'total_tax') this.totalTax,
      @JsonKey(name: 'total_shipping') this.totalShipping,
      @JsonKey(name: 'total_shipping_tax') this.totalShippingTax});

  factory _$_Totals.fromJson(Map<String, dynamic> json) =>
      _$$_TotalsFromJson(json);

  @override
  @JsonKey(name: 'total_items')
  final String totalItems;
  @override
  @JsonKey(name: 'total_items_tax')
  final String totalItemsTax;
  @override
  @JsonKey(name: 'total_discount')
  final String? totalDiscount;
  @override
  @JsonKey(name: 'total_discount_tax')
  final String? totalDiscountTax;
  @override
  @JsonKey(name: 'total_price')
  final String? totalPrice;
  @override
  @JsonKey(name: 'total_tax')
  final String? totalTax;
  @override
  @JsonKey(name: 'total_shipping')
  final String? totalShipping;
  @override
  @JsonKey(name: 'total_shipping_tax')
  final String? totalShippingTax;

  @override
  String toString() {
    return 'Totals(totalItems: $totalItems, totalItemsTax: $totalItemsTax, totalDiscount: $totalDiscount, totalDiscountTax: $totalDiscountTax, totalPrice: $totalPrice, totalTax: $totalTax, totalShipping: $totalShipping, totalShippingTax: $totalShippingTax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Totals &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.totalItemsTax, totalItemsTax) ||
                other.totalItemsTax == totalItemsTax) &&
            (identical(other.totalDiscount, totalDiscount) ||
                other.totalDiscount == totalDiscount) &&
            (identical(other.totalDiscountTax, totalDiscountTax) ||
                other.totalDiscountTax == totalDiscountTax) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.totalTax, totalTax) ||
                other.totalTax == totalTax) &&
            (identical(other.totalShipping, totalShipping) ||
                other.totalShipping == totalShipping) &&
            (identical(other.totalShippingTax, totalShippingTax) ||
                other.totalShippingTax == totalShippingTax));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalItems,
      totalItemsTax,
      totalDiscount,
      totalDiscountTax,
      totalPrice,
      totalTax,
      totalShipping,
      totalShippingTax);

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
      {@JsonKey(name: 'total_items') required final String totalItems,
      @JsonKey(name: 'total_items_tax') required final String totalItemsTax,
      @JsonKey(name: 'total_discount') final String? totalDiscount,
      @JsonKey(name: 'total_discount_tax') final String? totalDiscountTax,
      @JsonKey(name: 'total_price') final String? totalPrice,
      @JsonKey(name: 'total_tax') final String? totalTax,
      @JsonKey(name: 'total_shipping') final String? totalShipping,
      @JsonKey(name: 'total_shipping_tax')
      final String? totalShippingTax}) = _$_Totals;

  factory _Totals.fromJson(Map<String, dynamic> json) = _$_Totals.fromJson;

  @override
  @JsonKey(name: 'total_items')
  String get totalItems;
  @override
  @JsonKey(name: 'total_items_tax')
  String get totalItemsTax;
  @override
  @JsonKey(name: 'total_discount')
  String? get totalDiscount;
  @override
  @JsonKey(name: 'total_discount_tax')
  String? get totalDiscountTax;
  @override
  @JsonKey(name: 'total_price')
  String? get totalPrice;
  @override
  @JsonKey(name: 'total_tax')
  String? get totalTax;
  @override
  @JsonKey(name: 'total_shipping')
  String? get totalShipping;
  @override
  @JsonKey(name: 'total_shipping_tax')
  String? get totalShippingTax;
  @override
  @JsonKey(ignore: true)
  _$$_TotalsCopyWith<_$_Totals> get copyWith =>
      throw _privateConstructorUsedError;
}

Coupon _$CouponFromJson(Map<String, dynamic> json) {
  return _Coupon.fromJson(json);
}

/// @nodoc
mixin _$Coupon {
  @JsonKey(name: "code")
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_type")
  String get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: "totals")
  CouponTotals get totals => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "code") String code,
      @JsonKey(name: "discount_type") String discountType,
      @JsonKey(name: "totals") CouponTotals totals});

  $CouponTotalsCopyWith<$Res> get totals;
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
              as CouponTotals,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CouponTotalsCopyWith<$Res> get totals {
    return $CouponTotalsCopyWith<$Res>(_value.totals, (value) {
      return _then(_value.copyWith(totals: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CouponCopyWith<$Res> implements $CouponCopyWith<$Res> {
  factory _$$_CouponCopyWith(_$_Coupon value, $Res Function(_$_Coupon) then) =
      __$$_CouponCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") String code,
      @JsonKey(name: "discount_type") String discountType,
      @JsonKey(name: "totals") CouponTotals totals});

  @override
  $CouponTotalsCopyWith<$Res> get totals;
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
    Object? discountType = null,
    Object? totals = null,
  }) {
    return _then(_$_Coupon(
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
              as CouponTotals,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Coupon implements _Coupon {
  const _$_Coupon(
      {@JsonKey(name: "code") required this.code,
      @JsonKey(name: "discount_type") required this.discountType,
      @JsonKey(name: "totals") required this.totals});

  factory _$_Coupon.fromJson(Map<String, dynamic> json) =>
      _$$_CouponFromJson(json);

  @override
  @JsonKey(name: "code")
  final String code;
  @override
  @JsonKey(name: "discount_type")
  final String discountType;
  @override
  @JsonKey(name: "totals")
  final CouponTotals totals;

  @override
  String toString() {
    return 'Coupon(code: $code, discountType: $discountType, totals: $totals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Coupon &&
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
  const factory _Coupon(
      {@JsonKey(name: "code") required final String code,
      @JsonKey(name: "discount_type") required final String discountType,
      @JsonKey(name: "totals") required final CouponTotals totals}) = _$_Coupon;

  factory _Coupon.fromJson(Map<String, dynamic> json) = _$_Coupon.fromJson;

  @override
  @JsonKey(name: "code")
  String get code;
  @override
  @JsonKey(name: "discount_type")
  String get discountType;
  @override
  @JsonKey(name: "totals")
  CouponTotals get totals;
  @override
  @JsonKey(ignore: true)
  _$$_CouponCopyWith<_$_Coupon> get copyWith =>
      throw _privateConstructorUsedError;
}

CouponTotals _$CouponTotalsFromJson(Map<String, dynamic> json) {
  return _CouponTotals.fromJson(json);
}

/// @nodoc
mixin _$CouponTotals {
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
  $CouponTotalsCopyWith<CouponTotals> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponTotalsCopyWith<$Res> {
  factory $CouponTotalsCopyWith(
          CouponTotals value, $Res Function(CouponTotals) then) =
      _$CouponTotalsCopyWithImpl<$Res, CouponTotals>;
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
class _$CouponTotalsCopyWithImpl<$Res, $Val extends CouponTotals>
    implements $CouponTotalsCopyWith<$Res> {
  _$CouponTotalsCopyWithImpl(this._value, this._then);

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
abstract class _$$_CouponTotalsCopyWith<$Res>
    implements $CouponTotalsCopyWith<$Res> {
  factory _$$_CouponTotalsCopyWith(
          _$_CouponTotals value, $Res Function(_$_CouponTotals) then) =
      __$$_CouponTotalsCopyWithImpl<$Res>;
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
class __$$_CouponTotalsCopyWithImpl<$Res>
    extends _$CouponTotalsCopyWithImpl<$Res, _$_CouponTotals>
    implements _$$_CouponTotalsCopyWith<$Res> {
  __$$_CouponTotalsCopyWithImpl(
      _$_CouponTotals _value, $Res Function(_$_CouponTotals) _then)
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
    return _then(_$_CouponTotals(
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
class _$_CouponTotals implements _CouponTotals {
  const _$_CouponTotals(
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

  factory _$_CouponTotals.fromJson(Map<String, dynamic> json) =>
      _$$_CouponTotalsFromJson(json);

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
    return 'CouponTotals(totalDiscount: $totalDiscount, totalDiscountTax: $totalDiscountTax, currencyCode: $currencyCode, currencySymbol: $currencySymbol, currencyMinorUnit: $currencyMinorUnit, currencyDecimalSeparator: $currencyDecimalSeparator, currencyThousandSeparator: $currencyThousandSeparator, currencyPrefix: $currencyPrefix, currencySuffix: $currencySuffix)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CouponTotals &&
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
  _$$_CouponTotalsCopyWith<_$_CouponTotals> get copyWith =>
      __$$_CouponTotalsCopyWithImpl<_$_CouponTotals>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CouponTotalsToJson(
      this,
    );
  }
}

abstract class _CouponTotals implements CouponTotals {
  const factory _CouponTotals(
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
      required final String currencySuffix}) = _$_CouponTotals;

  factory _CouponTotals.fromJson(Map<String, dynamic> json) =
      _$_CouponTotals.fromJson;

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
  _$$_CouponTotalsCopyWith<_$_CouponTotals> get copyWith =>
      throw _privateConstructorUsedError;
}

Items _$ItemsFromJson(Map<String, dynamic> json) {
  return _Items.fromJson(json);
}

/// @nodoc
mixin _$Items {
  int? get id => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  List<ImageProduct> get images => throw _privateConstructorUsedError;
  Extensions? get extensions => throw _privateConstructorUsedError;
  Prices? get prices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsCopyWith<Items> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsCopyWith<$Res> {
  factory $ItemsCopyWith(Items value, $Res Function(Items) then) =
      _$ItemsCopyWithImpl<$Res, Items>;
  @useResult
  $Res call(
      {int? id,
      int? quantity,
      String? description,
      String? name,
      String? key,
      List<ImageProduct> images,
      Extensions? extensions,
      Prices? prices});

  $ExtensionsCopyWith<$Res>? get extensions;
  $PricesCopyWith<$Res>? get prices;
}

/// @nodoc
class _$ItemsCopyWithImpl<$Res, $Val extends Items>
    implements $ItemsCopyWith<$Res> {
  _$ItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? description = freezed,
    Object? name = freezed,
    Object? key = freezed,
    Object? images = null,
    Object? extensions = freezed,
    Object? prices = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageProduct>,
      extensions: freezed == extensions
          ? _value.extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as Extensions?,
      prices: freezed == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as Prices?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExtensionsCopyWith<$Res>? get extensions {
    if (_value.extensions == null) {
      return null;
    }

    return $ExtensionsCopyWith<$Res>(_value.extensions!, (value) {
      return _then(_value.copyWith(extensions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PricesCopyWith<$Res>? get prices {
    if (_value.prices == null) {
      return null;
    }

    return $PricesCopyWith<$Res>(_value.prices!, (value) {
      return _then(_value.copyWith(prices: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ItemsCopyWith<$Res> implements $ItemsCopyWith<$Res> {
  factory _$$_ItemsCopyWith(_$_Items value, $Res Function(_$_Items) then) =
      __$$_ItemsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? quantity,
      String? description,
      String? name,
      String? key,
      List<ImageProduct> images,
      Extensions? extensions,
      Prices? prices});

  @override
  $ExtensionsCopyWith<$Res>? get extensions;
  @override
  $PricesCopyWith<$Res>? get prices;
}

/// @nodoc
class __$$_ItemsCopyWithImpl<$Res> extends _$ItemsCopyWithImpl<$Res, _$_Items>
    implements _$$_ItemsCopyWith<$Res> {
  __$$_ItemsCopyWithImpl(_$_Items _value, $Res Function(_$_Items) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? description = freezed,
    Object? name = freezed,
    Object? key = freezed,
    Object? images = null,
    Object? extensions = freezed,
    Object? prices = freezed,
  }) {
    return _then(_$_Items(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageProduct>,
      extensions: freezed == extensions
          ? _value.extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as Extensions?,
      prices: freezed == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as Prices?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Items implements _Items {
  _$_Items(
      {this.id,
      this.quantity,
      this.description,
      this.name,
      this.key,
      final List<ImageProduct> images = const <ImageProduct>[],
      required this.extensions,
      this.prices})
      : _images = images;

  factory _$_Items.fromJson(Map<String, dynamic> json) =>
      _$$_ItemsFromJson(json);

  @override
  final int? id;
  @override
  final int? quantity;
  @override
  final String? description;
  @override
  final String? name;
  @override
  final String? key;
  final List<ImageProduct> _images;
  @override
  @JsonKey()
  List<ImageProduct> get images {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final Extensions? extensions;
  @override
  final Prices? prices;

  @override
  String toString() {
    return 'Items(id: $id, quantity: $quantity, description: $description, name: $name, key: $key, images: $images, extensions: $extensions, prices: $prices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Items &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.extensions, extensions) ||
                other.extensions == extensions) &&
            (identical(other.prices, prices) || other.prices == prices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, quantity, description, name,
      key, const DeepCollectionEquality().hash(_images), extensions, prices);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemsCopyWith<_$_Items> get copyWith =>
      __$$_ItemsCopyWithImpl<_$_Items>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemsToJson(
      this,
    );
  }
}

abstract class _Items implements Items {
  factory _Items(
      {final int? id,
      final int? quantity,
      final String? description,
      final String? name,
      final String? key,
      final List<ImageProduct> images,
      required final Extensions? extensions,
      final Prices? prices}) = _$_Items;

  factory _Items.fromJson(Map<String, dynamic> json) = _$_Items.fromJson;

  @override
  int? get id;
  @override
  int? get quantity;
  @override
  String? get description;
  @override
  String? get name;
  @override
  String? get key;
  @override
  List<ImageProduct> get images;
  @override
  Extensions? get extensions;
  @override
  Prices? get prices;
  @override
  @JsonKey(ignore: true)
  _$$_ItemsCopyWith<_$_Items> get copyWith =>
      throw _privateConstructorUsedError;
}

Extensions _$ExtensionsFromJson(Map<String, dynamic> json) {
  return _Extensions.fromJson(json);
}

/// @nodoc
mixin _$Extensions {
  @JsonKey(name: 'bundles', fromJson: extensionsParser)
  Map<String, dynamic> get bundles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExtensionsCopyWith<Extensions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtensionsCopyWith<$Res> {
  factory $ExtensionsCopyWith(
          Extensions value, $Res Function(Extensions) then) =
      _$ExtensionsCopyWithImpl<$Res, Extensions>;
  @useResult
  $Res call(
      {@JsonKey(name: 'bundles', fromJson: extensionsParser)
      Map<String, dynamic> bundles});
}

/// @nodoc
class _$ExtensionsCopyWithImpl<$Res, $Val extends Extensions>
    implements $ExtensionsCopyWith<$Res> {
  _$ExtensionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bundles = null,
  }) {
    return _then(_value.copyWith(
      bundles: null == bundles
          ? _value.bundles
          : bundles // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExtensionsCopyWith<$Res>
    implements $ExtensionsCopyWith<$Res> {
  factory _$$_ExtensionsCopyWith(
          _$_Extensions value, $Res Function(_$_Extensions) then) =
      __$$_ExtensionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'bundles', fromJson: extensionsParser)
      Map<String, dynamic> bundles});
}

/// @nodoc
class __$$_ExtensionsCopyWithImpl<$Res>
    extends _$ExtensionsCopyWithImpl<$Res, _$_Extensions>
    implements _$$_ExtensionsCopyWith<$Res> {
  __$$_ExtensionsCopyWithImpl(
      _$_Extensions _value, $Res Function(_$_Extensions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bundles = null,
  }) {
    return _then(_$_Extensions(
      bundles: null == bundles
          ? _value._bundles
          : bundles // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Extensions implements _Extensions {
  const _$_Extensions(
      {@JsonKey(name: 'bundles', fromJson: extensionsParser)
      final Map<String, dynamic> bundles = const {}})
      : _bundles = bundles;

  factory _$_Extensions.fromJson(Map<String, dynamic> json) =>
      _$$_ExtensionsFromJson(json);

  final Map<String, dynamic> _bundles;
  @override
  @JsonKey(name: 'bundles', fromJson: extensionsParser)
  Map<String, dynamic> get bundles {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_bundles);
  }

  @override
  String toString() {
    return 'Extensions(bundles: $bundles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Extensions &&
            const DeepCollectionEquality().equals(other._bundles, _bundles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_bundles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExtensionsCopyWith<_$_Extensions> get copyWith =>
      __$$_ExtensionsCopyWithImpl<_$_Extensions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExtensionsToJson(
      this,
    );
  }
}

abstract class _Extensions implements Extensions {
  const factory _Extensions(
      {@JsonKey(name: 'bundles', fromJson: extensionsParser)
      final Map<String, dynamic> bundles}) = _$_Extensions;

  factory _Extensions.fromJson(Map<String, dynamic> json) =
      _$_Extensions.fromJson;

  @override
  @JsonKey(name: 'bundles', fromJson: extensionsParser)
  Map<String, dynamic> get bundles;
  @override
  @JsonKey(ignore: true)
  _$$_ExtensionsCopyWith<_$_Extensions> get copyWith =>
      throw _privateConstructorUsedError;
}

Bundles _$BundlesFromJson(Map<String, dynamic> json) {
  return _Bundles.fromJson(json);
}

/// @nodoc
mixin _$Bundles {
  @JsonKey(name: 'bundled_by')
  String? get bundledBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'bundled_item_data')
  BundledItemData? get bundledItemData => throw _privateConstructorUsedError;
  @JsonKey(name: 'bundled_items')
  List<String>? get bundledItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'bundle_data')
  BundleData? get bundleData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BundlesCopyWith<Bundles> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BundlesCopyWith<$Res> {
  factory $BundlesCopyWith(Bundles value, $Res Function(Bundles) then) =
      _$BundlesCopyWithImpl<$Res, Bundles>;
  @useResult
  $Res call(
      {@JsonKey(name: 'bundled_by') String? bundledBy,
      @JsonKey(name: 'bundled_item_data') BundledItemData? bundledItemData,
      @JsonKey(name: 'bundled_items') List<String>? bundledItems,
      @JsonKey(name: 'bundle_data') BundleData? bundleData});

  $BundledItemDataCopyWith<$Res>? get bundledItemData;
  $BundleDataCopyWith<$Res>? get bundleData;
}

/// @nodoc
class _$BundlesCopyWithImpl<$Res, $Val extends Bundles>
    implements $BundlesCopyWith<$Res> {
  _$BundlesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bundledBy = freezed,
    Object? bundledItemData = freezed,
    Object? bundledItems = freezed,
    Object? bundleData = freezed,
  }) {
    return _then(_value.copyWith(
      bundledBy: freezed == bundledBy
          ? _value.bundledBy
          : bundledBy // ignore: cast_nullable_to_non_nullable
              as String?,
      bundledItemData: freezed == bundledItemData
          ? _value.bundledItemData
          : bundledItemData // ignore: cast_nullable_to_non_nullable
              as BundledItemData?,
      bundledItems: freezed == bundledItems
          ? _value.bundledItems
          : bundledItems // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      bundleData: freezed == bundleData
          ? _value.bundleData
          : bundleData // ignore: cast_nullable_to_non_nullable
              as BundleData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BundledItemDataCopyWith<$Res>? get bundledItemData {
    if (_value.bundledItemData == null) {
      return null;
    }

    return $BundledItemDataCopyWith<$Res>(_value.bundledItemData!, (value) {
      return _then(_value.copyWith(bundledItemData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BundleDataCopyWith<$Res>? get bundleData {
    if (_value.bundleData == null) {
      return null;
    }

    return $BundleDataCopyWith<$Res>(_value.bundleData!, (value) {
      return _then(_value.copyWith(bundleData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BundlesCopyWith<$Res> implements $BundlesCopyWith<$Res> {
  factory _$$_BundlesCopyWith(
          _$_Bundles value, $Res Function(_$_Bundles) then) =
      __$$_BundlesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'bundled_by') String? bundledBy,
      @JsonKey(name: 'bundled_item_data') BundledItemData? bundledItemData,
      @JsonKey(name: 'bundled_items') List<String>? bundledItems,
      @JsonKey(name: 'bundle_data') BundleData? bundleData});

  @override
  $BundledItemDataCopyWith<$Res>? get bundledItemData;
  @override
  $BundleDataCopyWith<$Res>? get bundleData;
}

/// @nodoc
class __$$_BundlesCopyWithImpl<$Res>
    extends _$BundlesCopyWithImpl<$Res, _$_Bundles>
    implements _$$_BundlesCopyWith<$Res> {
  __$$_BundlesCopyWithImpl(_$_Bundles _value, $Res Function(_$_Bundles) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bundledBy = freezed,
    Object? bundledItemData = freezed,
    Object? bundledItems = freezed,
    Object? bundleData = freezed,
  }) {
    return _then(_$_Bundles(
      bundledBy: freezed == bundledBy
          ? _value.bundledBy
          : bundledBy // ignore: cast_nullable_to_non_nullable
              as String?,
      bundledItemData: freezed == bundledItemData
          ? _value.bundledItemData
          : bundledItemData // ignore: cast_nullable_to_non_nullable
              as BundledItemData?,
      bundledItems: freezed == bundledItems
          ? _value._bundledItems
          : bundledItems // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      bundleData: freezed == bundleData
          ? _value.bundleData
          : bundleData // ignore: cast_nullable_to_non_nullable
              as BundleData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Bundles implements _Bundles {
  const _$_Bundles(
      {@JsonKey(name: 'bundled_by') this.bundledBy,
      @JsonKey(name: 'bundled_item_data') this.bundledItemData,
      @JsonKey(name: 'bundled_items') final List<String>? bundledItems,
      @JsonKey(name: 'bundle_data') this.bundleData})
      : _bundledItems = bundledItems;

  factory _$_Bundles.fromJson(Map<String, dynamic> json) =>
      _$$_BundlesFromJson(json);

  @override
  @JsonKey(name: 'bundled_by')
  final String? bundledBy;
  @override
  @JsonKey(name: 'bundled_item_data')
  final BundledItemData? bundledItemData;
  final List<String>? _bundledItems;
  @override
  @JsonKey(name: 'bundled_items')
  List<String>? get bundledItems {
    final value = _bundledItems;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'bundle_data')
  final BundleData? bundleData;

  @override
  String toString() {
    return 'Bundles(bundledBy: $bundledBy, bundledItemData: $bundledItemData, bundledItems: $bundledItems, bundleData: $bundleData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bundles &&
            (identical(other.bundledBy, bundledBy) ||
                other.bundledBy == bundledBy) &&
            (identical(other.bundledItemData, bundledItemData) ||
                other.bundledItemData == bundledItemData) &&
            const DeepCollectionEquality()
                .equals(other._bundledItems, _bundledItems) &&
            (identical(other.bundleData, bundleData) ||
                other.bundleData == bundleData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bundledBy, bundledItemData,
      const DeepCollectionEquality().hash(_bundledItems), bundleData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BundlesCopyWith<_$_Bundles> get copyWith =>
      __$$_BundlesCopyWithImpl<_$_Bundles>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BundlesToJson(
      this,
    );
  }
}

abstract class _Bundles implements Bundles {
  const factory _Bundles(
      {@JsonKey(name: 'bundled_by') final String? bundledBy,
      @JsonKey(name: 'bundled_item_data')
      final BundledItemData? bundledItemData,
      @JsonKey(name: 'bundled_items') final List<String>? bundledItems,
      @JsonKey(name: 'bundle_data') final BundleData? bundleData}) = _$_Bundles;

  factory _Bundles.fromJson(Map<String, dynamic> json) = _$_Bundles.fromJson;

  @override
  @JsonKey(name: 'bundled_by')
  String? get bundledBy;
  @override
  @JsonKey(name: 'bundled_item_data')
  BundledItemData? get bundledItemData;
  @override
  @JsonKey(name: 'bundled_items')
  List<String>? get bundledItems;
  @override
  @JsonKey(name: 'bundle_data')
  BundleData? get bundleData;
  @override
  @JsonKey(ignore: true)
  _$$_BundlesCopyWith<_$_Bundles> get copyWith =>
      throw _privateConstructorUsedError;
}

BundleData _$BundleDataFromJson(Map<String, dynamic> json) {
  return _BundleData.fromJson(json);
}

/// @nodoc
mixin _$BundleData {
  Map<String, Configuration>? get configuration =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'is_editable')
  bool? get isEditable => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_price_hidden')
  bool? get isPriceHidden => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_subtotal_hidden')
  bool? get isSubtotalHidden => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_hidden')
  bool? get isHidden => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_meta_hidden_in_cart')
  bool? get isMetaHiddenInCart => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_meta_hidden_in_summary')
  bool? get isMetaHiddenInSummary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BundleDataCopyWith<BundleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BundleDataCopyWith<$Res> {
  factory $BundleDataCopyWith(
          BundleData value, $Res Function(BundleData) then) =
      _$BundleDataCopyWithImpl<$Res, BundleData>;
  @useResult
  $Res call(
      {Map<String, Configuration>? configuration,
      @JsonKey(name: 'is_editable') bool? isEditable,
      @JsonKey(name: 'is_price_hidden') bool? isPriceHidden,
      @JsonKey(name: 'is_subtotal_hidden') bool? isSubtotalHidden,
      @JsonKey(name: 'is_hidden') bool? isHidden,
      @JsonKey(name: 'is_meta_hidden_in_cart') bool? isMetaHiddenInCart,
      @JsonKey(name: 'is_meta_hidden_in_summary') bool? isMetaHiddenInSummary});
}

/// @nodoc
class _$BundleDataCopyWithImpl<$Res, $Val extends BundleData>
    implements $BundleDataCopyWith<$Res> {
  _$BundleDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? configuration = freezed,
    Object? isEditable = freezed,
    Object? isPriceHidden = freezed,
    Object? isSubtotalHidden = freezed,
    Object? isHidden = freezed,
    Object? isMetaHiddenInCart = freezed,
    Object? isMetaHiddenInSummary = freezed,
  }) {
    return _then(_value.copyWith(
      configuration: freezed == configuration
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, Configuration>?,
      isEditable: freezed == isEditable
          ? _value.isEditable
          : isEditable // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPriceHidden: freezed == isPriceHidden
          ? _value.isPriceHidden
          : isPriceHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSubtotalHidden: freezed == isSubtotalHidden
          ? _value.isSubtotalHidden
          : isSubtotalHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      isHidden: freezed == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMetaHiddenInCart: freezed == isMetaHiddenInCart
          ? _value.isMetaHiddenInCart
          : isMetaHiddenInCart // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMetaHiddenInSummary: freezed == isMetaHiddenInSummary
          ? _value.isMetaHiddenInSummary
          : isMetaHiddenInSummary // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BundleDataCopyWith<$Res>
    implements $BundleDataCopyWith<$Res> {
  factory _$$_BundleDataCopyWith(
          _$_BundleData value, $Res Function(_$_BundleData) then) =
      __$$_BundleDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, Configuration>? configuration,
      @JsonKey(name: 'is_editable') bool? isEditable,
      @JsonKey(name: 'is_price_hidden') bool? isPriceHidden,
      @JsonKey(name: 'is_subtotal_hidden') bool? isSubtotalHidden,
      @JsonKey(name: 'is_hidden') bool? isHidden,
      @JsonKey(name: 'is_meta_hidden_in_cart') bool? isMetaHiddenInCart,
      @JsonKey(name: 'is_meta_hidden_in_summary') bool? isMetaHiddenInSummary});
}

/// @nodoc
class __$$_BundleDataCopyWithImpl<$Res>
    extends _$BundleDataCopyWithImpl<$Res, _$_BundleData>
    implements _$$_BundleDataCopyWith<$Res> {
  __$$_BundleDataCopyWithImpl(
      _$_BundleData _value, $Res Function(_$_BundleData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? configuration = freezed,
    Object? isEditable = freezed,
    Object? isPriceHidden = freezed,
    Object? isSubtotalHidden = freezed,
    Object? isHidden = freezed,
    Object? isMetaHiddenInCart = freezed,
    Object? isMetaHiddenInSummary = freezed,
  }) {
    return _then(_$_BundleData(
      configuration: freezed == configuration
          ? _value._configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, Configuration>?,
      isEditable: freezed == isEditable
          ? _value.isEditable
          : isEditable // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPriceHidden: freezed == isPriceHidden
          ? _value.isPriceHidden
          : isPriceHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSubtotalHidden: freezed == isSubtotalHidden
          ? _value.isSubtotalHidden
          : isSubtotalHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      isHidden: freezed == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMetaHiddenInCart: freezed == isMetaHiddenInCart
          ? _value.isMetaHiddenInCart
          : isMetaHiddenInCart // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMetaHiddenInSummary: freezed == isMetaHiddenInSummary
          ? _value.isMetaHiddenInSummary
          : isMetaHiddenInSummary // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BundleData implements _BundleData {
  const _$_BundleData(
      {final Map<String, Configuration>? configuration,
      @JsonKey(name: 'is_editable') this.isEditable,
      @JsonKey(name: 'is_price_hidden') this.isPriceHidden,
      @JsonKey(name: 'is_subtotal_hidden') this.isSubtotalHidden,
      @JsonKey(name: 'is_hidden') this.isHidden,
      @JsonKey(name: 'is_meta_hidden_in_cart') this.isMetaHiddenInCart,
      @JsonKey(name: 'is_meta_hidden_in_summary') this.isMetaHiddenInSummary})
      : _configuration = configuration;

  factory _$_BundleData.fromJson(Map<String, dynamic> json) =>
      _$$_BundleDataFromJson(json);

  final Map<String, Configuration>? _configuration;
  @override
  Map<String, Configuration>? get configuration {
    final value = _configuration;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'is_editable')
  final bool? isEditable;
  @override
  @JsonKey(name: 'is_price_hidden')
  final bool? isPriceHidden;
  @override
  @JsonKey(name: 'is_subtotal_hidden')
  final bool? isSubtotalHidden;
  @override
  @JsonKey(name: 'is_hidden')
  final bool? isHidden;
  @override
  @JsonKey(name: 'is_meta_hidden_in_cart')
  final bool? isMetaHiddenInCart;
  @override
  @JsonKey(name: 'is_meta_hidden_in_summary')
  final bool? isMetaHiddenInSummary;

  @override
  String toString() {
    return 'BundleData(configuration: $configuration, isEditable: $isEditable, isPriceHidden: $isPriceHidden, isSubtotalHidden: $isSubtotalHidden, isHidden: $isHidden, isMetaHiddenInCart: $isMetaHiddenInCart, isMetaHiddenInSummary: $isMetaHiddenInSummary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BundleData &&
            const DeepCollectionEquality()
                .equals(other._configuration, _configuration) &&
            (identical(other.isEditable, isEditable) ||
                other.isEditable == isEditable) &&
            (identical(other.isPriceHidden, isPriceHidden) ||
                other.isPriceHidden == isPriceHidden) &&
            (identical(other.isSubtotalHidden, isSubtotalHidden) ||
                other.isSubtotalHidden == isSubtotalHidden) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.isMetaHiddenInCart, isMetaHiddenInCart) ||
                other.isMetaHiddenInCart == isMetaHiddenInCart) &&
            (identical(other.isMetaHiddenInSummary, isMetaHiddenInSummary) ||
                other.isMetaHiddenInSummary == isMetaHiddenInSummary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_configuration),
      isEditable,
      isPriceHidden,
      isSubtotalHidden,
      isHidden,
      isMetaHiddenInCart,
      isMetaHiddenInSummary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BundleDataCopyWith<_$_BundleData> get copyWith =>
      __$$_BundleDataCopyWithImpl<_$_BundleData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BundleDataToJson(
      this,
    );
  }
}

abstract class _BundleData implements BundleData {
  const factory _BundleData(
      {final Map<String, Configuration>? configuration,
      @JsonKey(name: 'is_editable') final bool? isEditable,
      @JsonKey(name: 'is_price_hidden') final bool? isPriceHidden,
      @JsonKey(name: 'is_subtotal_hidden') final bool? isSubtotalHidden,
      @JsonKey(name: 'is_hidden') final bool? isHidden,
      @JsonKey(name: 'is_meta_hidden_in_cart') final bool? isMetaHiddenInCart,
      @JsonKey(name: 'is_meta_hidden_in_summary')
      final bool? isMetaHiddenInSummary}) = _$_BundleData;

  factory _BundleData.fromJson(Map<String, dynamic> json) =
      _$_BundleData.fromJson;

  @override
  Map<String, Configuration>? get configuration;
  @override
  @JsonKey(name: 'is_editable')
  bool? get isEditable;
  @override
  @JsonKey(name: 'is_price_hidden')
  bool? get isPriceHidden;
  @override
  @JsonKey(name: 'is_subtotal_hidden')
  bool? get isSubtotalHidden;
  @override
  @JsonKey(name: 'is_hidden')
  bool? get isHidden;
  @override
  @JsonKey(name: 'is_meta_hidden_in_cart')
  bool? get isMetaHiddenInCart;
  @override
  @JsonKey(name: 'is_meta_hidden_in_summary')
  bool? get isMetaHiddenInSummary;
  @override
  @JsonKey(ignore: true)
  _$$_BundleDataCopyWith<_$_BundleData> get copyWith =>
      throw _privateConstructorUsedError;
}

Configuration _$ConfigurationFromJson(Map<String, dynamic> json) {
  return _Configuration.fromJson(json);
}

/// @nodoc
mixin _$Configuration {
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String? get discount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigurationCopyWith<Configuration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigurationCopyWith<$Res> {
  factory $ConfigurationCopyWith(
          Configuration value, $Res Function(Configuration) then) =
      _$ConfigurationCopyWithImpl<$Res, Configuration>;
  @useResult
  $Res call(
      {@JsonKey(name: 'product_id') int productId,
      int quantity,
      String? discount});
}

/// @nodoc
class _$ConfigurationCopyWithImpl<$Res, $Val extends Configuration>
    implements $ConfigurationCopyWith<$Res> {
  _$ConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
    Object? discount = freezed,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConfigurationCopyWith<$Res>
    implements $ConfigurationCopyWith<$Res> {
  factory _$$_ConfigurationCopyWith(
          _$_Configuration value, $Res Function(_$_Configuration) then) =
      __$$_ConfigurationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'product_id') int productId,
      int quantity,
      String? discount});
}

/// @nodoc
class __$$_ConfigurationCopyWithImpl<$Res>
    extends _$ConfigurationCopyWithImpl<$Res, _$_Configuration>
    implements _$$_ConfigurationCopyWith<$Res> {
  __$$_ConfigurationCopyWithImpl(
      _$_Configuration _value, $Res Function(_$_Configuration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
    Object? discount = freezed,
  }) {
    return _then(_$_Configuration(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Configuration implements _Configuration {
  const _$_Configuration(
      {@JsonKey(name: 'product_id') required this.productId,
      required this.quantity,
      this.discount});

  factory _$_Configuration.fromJson(Map<String, dynamic> json) =>
      _$$_ConfigurationFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  final int quantity;
  @override
  final String? discount;

  @override
  String toString() {
    return 'Configuration(productId: $productId, quantity: $quantity, discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Configuration &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, quantity, discount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfigurationCopyWith<_$_Configuration> get copyWith =>
      __$$_ConfigurationCopyWithImpl<_$_Configuration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfigurationToJson(
      this,
    );
  }
}

abstract class _Configuration implements Configuration {
  const factory _Configuration(
      {@JsonKey(name: 'product_id') required final int productId,
      required final int quantity,
      final String? discount}) = _$_Configuration;

  factory _Configuration.fromJson(Map<String, dynamic> json) =
      _$_Configuration.fromJson;

  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  int get quantity;
  @override
  String? get discount;
  @override
  @JsonKey(ignore: true)
  _$$_ConfigurationCopyWith<_$_Configuration> get copyWith =>
      throw _privateConstructorUsedError;
}

BundledItemData _$BundledItemDataFromJson(Map<String, dynamic> json) {
  return _BundledItemData.fromJson(json);
}

/// @nodoc
mixin _$BundledItemData {
  @JsonKey(name: 'bundle_id')
  int get bundleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'bundled_item_id')
  int get bundledItemId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_removable')
  bool? get isRemovable => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_indented')
  bool? get isIndented => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_subtotal_aggregated')
  bool? get isSubtotalAggregated => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_parent_visible')
  bool? get isParentVisible => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_last')
  bool? get isLast => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_price_hidden')
  bool? get isPriceHidden => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_subtotal_hidden')
  bool? get isSubtotalHidden => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_thumbnail_hidden')
  bool? get isThumbnailHidden => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_hidden_in_cart')
  bool? get isHiddenInCart => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_hidden_in_summary')
  bool? get isHiddenInSummary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BundledItemDataCopyWith<BundledItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BundledItemDataCopyWith<$Res> {
  factory $BundledItemDataCopyWith(
          BundledItemData value, $Res Function(BundledItemData) then) =
      _$BundledItemDataCopyWithImpl<$Res, BundledItemData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'bundle_id') int bundleId,
      @JsonKey(name: 'bundled_item_id') int bundledItemId,
      @JsonKey(name: 'is_removable') bool? isRemovable,
      @JsonKey(name: 'is_indented') bool? isIndented,
      @JsonKey(name: 'is_subtotal_aggregated') bool? isSubtotalAggregated,
      @JsonKey(name: 'is_parent_visible') bool? isParentVisible,
      @JsonKey(name: 'is_last') bool? isLast,
      @JsonKey(name: 'is_price_hidden') bool? isPriceHidden,
      @JsonKey(name: 'is_subtotal_hidden') bool? isSubtotalHidden,
      @JsonKey(name: 'is_thumbnail_hidden') bool? isThumbnailHidden,
      @JsonKey(name: 'is_hidden_in_cart') bool? isHiddenInCart,
      @JsonKey(name: 'is_hidden_in_summary') bool? isHiddenInSummary});
}

/// @nodoc
class _$BundledItemDataCopyWithImpl<$Res, $Val extends BundledItemData>
    implements $BundledItemDataCopyWith<$Res> {
  _$BundledItemDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bundleId = null,
    Object? bundledItemId = null,
    Object? isRemovable = freezed,
    Object? isIndented = freezed,
    Object? isSubtotalAggregated = freezed,
    Object? isParentVisible = freezed,
    Object? isLast = freezed,
    Object? isPriceHidden = freezed,
    Object? isSubtotalHidden = freezed,
    Object? isThumbnailHidden = freezed,
    Object? isHiddenInCart = freezed,
    Object? isHiddenInSummary = freezed,
  }) {
    return _then(_value.copyWith(
      bundleId: null == bundleId
          ? _value.bundleId
          : bundleId // ignore: cast_nullable_to_non_nullable
              as int,
      bundledItemId: null == bundledItemId
          ? _value.bundledItemId
          : bundledItemId // ignore: cast_nullable_to_non_nullable
              as int,
      isRemovable: freezed == isRemovable
          ? _value.isRemovable
          : isRemovable // ignore: cast_nullable_to_non_nullable
              as bool?,
      isIndented: freezed == isIndented
          ? _value.isIndented
          : isIndented // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSubtotalAggregated: freezed == isSubtotalAggregated
          ? _value.isSubtotalAggregated
          : isSubtotalAggregated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isParentVisible: freezed == isParentVisible
          ? _value.isParentVisible
          : isParentVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLast: freezed == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPriceHidden: freezed == isPriceHidden
          ? _value.isPriceHidden
          : isPriceHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSubtotalHidden: freezed == isSubtotalHidden
          ? _value.isSubtotalHidden
          : isSubtotalHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      isThumbnailHidden: freezed == isThumbnailHidden
          ? _value.isThumbnailHidden
          : isThumbnailHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      isHiddenInCart: freezed == isHiddenInCart
          ? _value.isHiddenInCart
          : isHiddenInCart // ignore: cast_nullable_to_non_nullable
              as bool?,
      isHiddenInSummary: freezed == isHiddenInSummary
          ? _value.isHiddenInSummary
          : isHiddenInSummary // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BundledItemDataCopyWith<$Res>
    implements $BundledItemDataCopyWith<$Res> {
  factory _$$_BundledItemDataCopyWith(
          _$_BundledItemData value, $Res Function(_$_BundledItemData) then) =
      __$$_BundledItemDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'bundle_id') int bundleId,
      @JsonKey(name: 'bundled_item_id') int bundledItemId,
      @JsonKey(name: 'is_removable') bool? isRemovable,
      @JsonKey(name: 'is_indented') bool? isIndented,
      @JsonKey(name: 'is_subtotal_aggregated') bool? isSubtotalAggregated,
      @JsonKey(name: 'is_parent_visible') bool? isParentVisible,
      @JsonKey(name: 'is_last') bool? isLast,
      @JsonKey(name: 'is_price_hidden') bool? isPriceHidden,
      @JsonKey(name: 'is_subtotal_hidden') bool? isSubtotalHidden,
      @JsonKey(name: 'is_thumbnail_hidden') bool? isThumbnailHidden,
      @JsonKey(name: 'is_hidden_in_cart') bool? isHiddenInCart,
      @JsonKey(name: 'is_hidden_in_summary') bool? isHiddenInSummary});
}

/// @nodoc
class __$$_BundledItemDataCopyWithImpl<$Res>
    extends _$BundledItemDataCopyWithImpl<$Res, _$_BundledItemData>
    implements _$$_BundledItemDataCopyWith<$Res> {
  __$$_BundledItemDataCopyWithImpl(
      _$_BundledItemData _value, $Res Function(_$_BundledItemData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bundleId = null,
    Object? bundledItemId = null,
    Object? isRemovable = freezed,
    Object? isIndented = freezed,
    Object? isSubtotalAggregated = freezed,
    Object? isParentVisible = freezed,
    Object? isLast = freezed,
    Object? isPriceHidden = freezed,
    Object? isSubtotalHidden = freezed,
    Object? isThumbnailHidden = freezed,
    Object? isHiddenInCart = freezed,
    Object? isHiddenInSummary = freezed,
  }) {
    return _then(_$_BundledItemData(
      bundleId: null == bundleId
          ? _value.bundleId
          : bundleId // ignore: cast_nullable_to_non_nullable
              as int,
      bundledItemId: null == bundledItemId
          ? _value.bundledItemId
          : bundledItemId // ignore: cast_nullable_to_non_nullable
              as int,
      isRemovable: freezed == isRemovable
          ? _value.isRemovable
          : isRemovable // ignore: cast_nullable_to_non_nullable
              as bool?,
      isIndented: freezed == isIndented
          ? _value.isIndented
          : isIndented // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSubtotalAggregated: freezed == isSubtotalAggregated
          ? _value.isSubtotalAggregated
          : isSubtotalAggregated // ignore: cast_nullable_to_non_nullable
              as bool?,
      isParentVisible: freezed == isParentVisible
          ? _value.isParentVisible
          : isParentVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLast: freezed == isLast
          ? _value.isLast
          : isLast // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPriceHidden: freezed == isPriceHidden
          ? _value.isPriceHidden
          : isPriceHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSubtotalHidden: freezed == isSubtotalHidden
          ? _value.isSubtotalHidden
          : isSubtotalHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      isThumbnailHidden: freezed == isThumbnailHidden
          ? _value.isThumbnailHidden
          : isThumbnailHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      isHiddenInCart: freezed == isHiddenInCart
          ? _value.isHiddenInCart
          : isHiddenInCart // ignore: cast_nullable_to_non_nullable
              as bool?,
      isHiddenInSummary: freezed == isHiddenInSummary
          ? _value.isHiddenInSummary
          : isHiddenInSummary // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BundledItemData implements _BundledItemData {
  const _$_BundledItemData(
      {@JsonKey(name: 'bundle_id') required this.bundleId,
      @JsonKey(name: 'bundled_item_id') required this.bundledItemId,
      @JsonKey(name: 'is_removable') this.isRemovable,
      @JsonKey(name: 'is_indented') this.isIndented,
      @JsonKey(name: 'is_subtotal_aggregated') this.isSubtotalAggregated,
      @JsonKey(name: 'is_parent_visible') this.isParentVisible,
      @JsonKey(name: 'is_last') this.isLast,
      @JsonKey(name: 'is_price_hidden') this.isPriceHidden,
      @JsonKey(name: 'is_subtotal_hidden') this.isSubtotalHidden,
      @JsonKey(name: 'is_thumbnail_hidden') this.isThumbnailHidden,
      @JsonKey(name: 'is_hidden_in_cart') this.isHiddenInCart,
      @JsonKey(name: 'is_hidden_in_summary') this.isHiddenInSummary});

  factory _$_BundledItemData.fromJson(Map<String, dynamic> json) =>
      _$$_BundledItemDataFromJson(json);

  @override
  @JsonKey(name: 'bundle_id')
  final int bundleId;
  @override
  @JsonKey(name: 'bundled_item_id')
  final int bundledItemId;
  @override
  @JsonKey(name: 'is_removable')
  final bool? isRemovable;
  @override
  @JsonKey(name: 'is_indented')
  final bool? isIndented;
  @override
  @JsonKey(name: 'is_subtotal_aggregated')
  final bool? isSubtotalAggregated;
  @override
  @JsonKey(name: 'is_parent_visible')
  final bool? isParentVisible;
  @override
  @JsonKey(name: 'is_last')
  final bool? isLast;
  @override
  @JsonKey(name: 'is_price_hidden')
  final bool? isPriceHidden;
  @override
  @JsonKey(name: 'is_subtotal_hidden')
  final bool? isSubtotalHidden;
  @override
  @JsonKey(name: 'is_thumbnail_hidden')
  final bool? isThumbnailHidden;
  @override
  @JsonKey(name: 'is_hidden_in_cart')
  final bool? isHiddenInCart;
  @override
  @JsonKey(name: 'is_hidden_in_summary')
  final bool? isHiddenInSummary;

  @override
  String toString() {
    return 'BundledItemData(bundleId: $bundleId, bundledItemId: $bundledItemId, isRemovable: $isRemovable, isIndented: $isIndented, isSubtotalAggregated: $isSubtotalAggregated, isParentVisible: $isParentVisible, isLast: $isLast, isPriceHidden: $isPriceHidden, isSubtotalHidden: $isSubtotalHidden, isThumbnailHidden: $isThumbnailHidden, isHiddenInCart: $isHiddenInCart, isHiddenInSummary: $isHiddenInSummary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BundledItemData &&
            (identical(other.bundleId, bundleId) ||
                other.bundleId == bundleId) &&
            (identical(other.bundledItemId, bundledItemId) ||
                other.bundledItemId == bundledItemId) &&
            (identical(other.isRemovable, isRemovable) ||
                other.isRemovable == isRemovable) &&
            (identical(other.isIndented, isIndented) ||
                other.isIndented == isIndented) &&
            (identical(other.isSubtotalAggregated, isSubtotalAggregated) ||
                other.isSubtotalAggregated == isSubtotalAggregated) &&
            (identical(other.isParentVisible, isParentVisible) ||
                other.isParentVisible == isParentVisible) &&
            (identical(other.isLast, isLast) || other.isLast == isLast) &&
            (identical(other.isPriceHidden, isPriceHidden) ||
                other.isPriceHidden == isPriceHidden) &&
            (identical(other.isSubtotalHidden, isSubtotalHidden) ||
                other.isSubtotalHidden == isSubtotalHidden) &&
            (identical(other.isThumbnailHidden, isThumbnailHidden) ||
                other.isThumbnailHidden == isThumbnailHidden) &&
            (identical(other.isHiddenInCart, isHiddenInCart) ||
                other.isHiddenInCart == isHiddenInCart) &&
            (identical(other.isHiddenInSummary, isHiddenInSummary) ||
                other.isHiddenInSummary == isHiddenInSummary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bundleId,
      bundledItemId,
      isRemovable,
      isIndented,
      isSubtotalAggregated,
      isParentVisible,
      isLast,
      isPriceHidden,
      isSubtotalHidden,
      isThumbnailHidden,
      isHiddenInCart,
      isHiddenInSummary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BundledItemDataCopyWith<_$_BundledItemData> get copyWith =>
      __$$_BundledItemDataCopyWithImpl<_$_BundledItemData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BundledItemDataToJson(
      this,
    );
  }
}

abstract class _BundledItemData implements BundledItemData {
  const factory _BundledItemData(
      {@JsonKey(name: 'bundle_id') required final int bundleId,
      @JsonKey(name: 'bundled_item_id') required final int bundledItemId,
      @JsonKey(name: 'is_removable') final bool? isRemovable,
      @JsonKey(name: 'is_indented') final bool? isIndented,
      @JsonKey(name: 'is_subtotal_aggregated') final bool? isSubtotalAggregated,
      @JsonKey(name: 'is_parent_visible') final bool? isParentVisible,
      @JsonKey(name: 'is_last') final bool? isLast,
      @JsonKey(name: 'is_price_hidden') final bool? isPriceHidden,
      @JsonKey(name: 'is_subtotal_hidden') final bool? isSubtotalHidden,
      @JsonKey(name: 'is_thumbnail_hidden') final bool? isThumbnailHidden,
      @JsonKey(name: 'is_hidden_in_cart') final bool? isHiddenInCart,
      @JsonKey(name: 'is_hidden_in_summary')
      final bool? isHiddenInSummary}) = _$_BundledItemData;

  factory _BundledItemData.fromJson(Map<String, dynamic> json) =
      _$_BundledItemData.fromJson;

  @override
  @JsonKey(name: 'bundle_id')
  int get bundleId;
  @override
  @JsonKey(name: 'bundled_item_id')
  int get bundledItemId;
  @override
  @JsonKey(name: 'is_removable')
  bool? get isRemovable;
  @override
  @JsonKey(name: 'is_indented')
  bool? get isIndented;
  @override
  @JsonKey(name: 'is_subtotal_aggregated')
  bool? get isSubtotalAggregated;
  @override
  @JsonKey(name: 'is_parent_visible')
  bool? get isParentVisible;
  @override
  @JsonKey(name: 'is_last')
  bool? get isLast;
  @override
  @JsonKey(name: 'is_price_hidden')
  bool? get isPriceHidden;
  @override
  @JsonKey(name: 'is_subtotal_hidden')
  bool? get isSubtotalHidden;
  @override
  @JsonKey(name: 'is_thumbnail_hidden')
  bool? get isThumbnailHidden;
  @override
  @JsonKey(name: 'is_hidden_in_cart')
  bool? get isHiddenInCart;
  @override
  @JsonKey(name: 'is_hidden_in_summary')
  bool? get isHiddenInSummary;
  @override
  @JsonKey(ignore: true)
  _$$_BundledItemDataCopyWith<_$_BundledItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageProduct _$ImageProductFromJson(Map<String, dynamic> json) {
  return _ImageProduct.fromJson(json);
}

/// @nodoc
mixin _$ImageProduct {
  int get id => throw _privateConstructorUsedError;
  String get src => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageProductCopyWith<ImageProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageProductCopyWith<$Res> {
  factory $ImageProductCopyWith(
          ImageProduct value, $Res Function(ImageProduct) then) =
      _$ImageProductCopyWithImpl<$Res, ImageProduct>;
  @useResult
  $Res call({int id, String src});
}

/// @nodoc
class _$ImageProductCopyWithImpl<$Res, $Val extends ImageProduct>
    implements $ImageProductCopyWith<$Res> {
  _$ImageProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? src = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageProductCopyWith<$Res>
    implements $ImageProductCopyWith<$Res> {
  factory _$$_ImageProductCopyWith(
          _$_ImageProduct value, $Res Function(_$_ImageProduct) then) =
      __$$_ImageProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String src});
}

/// @nodoc
class __$$_ImageProductCopyWithImpl<$Res>
    extends _$ImageProductCopyWithImpl<$Res, _$_ImageProduct>
    implements _$$_ImageProductCopyWith<$Res> {
  __$$_ImageProductCopyWithImpl(
      _$_ImageProduct _value, $Res Function(_$_ImageProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? src = null,
  }) {
    return _then(_$_ImageProduct(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageProduct implements _ImageProduct {
  _$_ImageProduct({required this.id, required this.src});

  factory _$_ImageProduct.fromJson(Map<String, dynamic> json) =>
      _$$_ImageProductFromJson(json);

  @override
  final int id;
  @override
  final String src;

  @override
  String toString() {
    return 'ImageProduct(id: $id, src: $src)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageProduct &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.src, src) || other.src == src));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, src);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageProductCopyWith<_$_ImageProduct> get copyWith =>
      __$$_ImageProductCopyWithImpl<_$_ImageProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageProductToJson(
      this,
    );
  }
}

abstract class _ImageProduct implements ImageProduct {
  factory _ImageProduct({required final int id, required final String src}) =
      _$_ImageProduct;

  factory _ImageProduct.fromJson(Map<String, dynamic> json) =
      _$_ImageProduct.fromJson;

  @override
  int get id;
  @override
  String get src;
  @override
  @JsonKey(ignore: true)
  _$$_ImageProductCopyWith<_$_ImageProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

Prices _$PricesFromJson(Map<String, dynamic> json) {
  return _Prices.fromJson(json);
}

/// @nodoc
mixin _$Prices {
  String get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PricesCopyWith<Prices> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricesCopyWith<$Res> {
  factory $PricesCopyWith(Prices value, $Res Function(Prices) then) =
      _$PricesCopyWithImpl<$Res, Prices>;
  @useResult
  $Res call({String price});
}

/// @nodoc
class _$PricesCopyWithImpl<$Res, $Val extends Prices>
    implements $PricesCopyWith<$Res> {
  _$PricesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PricesCopyWith<$Res> implements $PricesCopyWith<$Res> {
  factory _$$_PricesCopyWith(_$_Prices value, $Res Function(_$_Prices) then) =
      __$$_PricesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String price});
}

/// @nodoc
class __$$_PricesCopyWithImpl<$Res>
    extends _$PricesCopyWithImpl<$Res, _$_Prices>
    implements _$$_PricesCopyWith<$Res> {
  __$$_PricesCopyWithImpl(_$_Prices _value, $Res Function(_$_Prices) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$_Prices(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Prices implements _Prices {
  _$_Prices({required this.price});

  factory _$_Prices.fromJson(Map<String, dynamic> json) =>
      _$$_PricesFromJson(json);

  @override
  final String price;

  @override
  String toString() {
    return 'Prices(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Prices &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PricesCopyWith<_$_Prices> get copyWith =>
      __$$_PricesCopyWithImpl<_$_Prices>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PricesToJson(
      this,
    );
  }
}

abstract class _Prices implements Prices {
  factory _Prices({required final String price}) = _$_Prices;

  factory _Prices.fromJson(Map<String, dynamic> json) = _$_Prices.fromJson;

  @override
  String get price;
  @override
  @JsonKey(ignore: true)
  _$$_PricesCopyWith<_$_Prices> get copyWith =>
      throw _privateConstructorUsedError;
}
