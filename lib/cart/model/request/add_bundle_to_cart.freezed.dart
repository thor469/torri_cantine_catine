// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_bundle_to_cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddBundleToCart _$AddBundleToCartFromJson(Map<String, dynamic> json) {
  return _AddBundleToCart.fromJson(json);
}

/// @nodoc
mixin _$AddBundleToCart {
  int get id => throw _privateConstructorUsedError;
  Map<dynamic, dynamic> get data => throw _privateConstructorUsedError;
  String get cartUrl => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddBundleToCartCopyWith<AddBundleToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddBundleToCartCopyWith<$Res> {
  factory $AddBundleToCartCopyWith(
          AddBundleToCart value, $Res Function(AddBundleToCart) then) =
      _$AddBundleToCartCopyWithImpl<$Res, AddBundleToCart>;
  @useResult
  $Res call({int id, Map<dynamic, dynamic> data, String cartUrl, int quantity});
}

/// @nodoc
class _$AddBundleToCartCopyWithImpl<$Res, $Val extends AddBundleToCart>
    implements $AddBundleToCartCopyWith<$Res> {
  _$AddBundleToCartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
    Object? cartUrl = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      cartUrl: null == cartUrl
          ? _value.cartUrl
          : cartUrl // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddBundleToCartCopyWith<$Res>
    implements $AddBundleToCartCopyWith<$Res> {
  factory _$$_AddBundleToCartCopyWith(
          _$_AddBundleToCart value, $Res Function(_$_AddBundleToCart) then) =
      __$$_AddBundleToCartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Map<dynamic, dynamic> data, String cartUrl, int quantity});
}

/// @nodoc
class __$$_AddBundleToCartCopyWithImpl<$Res>
    extends _$AddBundleToCartCopyWithImpl<$Res, _$_AddBundleToCart>
    implements _$$_AddBundleToCartCopyWith<$Res> {
  __$$_AddBundleToCartCopyWithImpl(
      _$_AddBundleToCart _value, $Res Function(_$_AddBundleToCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? data = null,
    Object? cartUrl = null,
    Object? quantity = null,
  }) {
    return _then(_$_AddBundleToCart(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      cartUrl: null == cartUrl
          ? _value.cartUrl
          : cartUrl // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddBundleToCart extends _AddBundleToCart {
  _$_AddBundleToCart(
      {required this.id,
      required final Map<dynamic, dynamic> data,
      required this.cartUrl,
      required this.quantity})
      : _data = data,
        super._();

  factory _$_AddBundleToCart.fromJson(Map<String, dynamic> json) =>
      _$$_AddBundleToCartFromJson(json);

  @override
  final int id;
  final Map<dynamic, dynamic> _data;
  @override
  Map<dynamic, dynamic> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final String cartUrl;
  @override
  final int quantity;

  @override
  String toString() {
    return 'AddBundleToCart(id: $id, data: $data, cartUrl: $cartUrl, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddBundleToCart &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.cartUrl, cartUrl) || other.cartUrl == cartUrl) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_data), cartUrl, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddBundleToCartCopyWith<_$_AddBundleToCart> get copyWith =>
      __$$_AddBundleToCartCopyWithImpl<_$_AddBundleToCart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddBundleToCartToJson(
      this,
    );
  }
}

abstract class _AddBundleToCart extends AddBundleToCart {
  factory _AddBundleToCart(
      {required final int id,
      required final Map<dynamic, dynamic> data,
      required final String cartUrl,
      required final int quantity}) = _$_AddBundleToCart;
  _AddBundleToCart._() : super._();

  factory _AddBundleToCart.fromJson(Map<String, dynamic> json) =
      _$_AddBundleToCart.fromJson;

  @override
  int get id;
  @override
  Map<dynamic, dynamic> get data;
  @override
  String get cartUrl;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_AddBundleToCartCopyWith<_$_AddBundleToCart> get copyWith =>
      throw _privateConstructorUsedError;
}
