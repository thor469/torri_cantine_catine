// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_product_to_cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddProductToCart _$AddProductToCartFromJson(Map<String, dynamic> json) {
  return _AddProductToCart.fromJson(json);
}

/// @nodoc
mixin _$AddProductToCart {
  int get id => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddProductToCartCopyWith<AddProductToCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductToCartCopyWith<$Res> {
  factory $AddProductToCartCopyWith(
          AddProductToCart value, $Res Function(AddProductToCart) then) =
      _$AddProductToCartCopyWithImpl<$Res, AddProductToCart>;
  @useResult
  $Res call({int id, int quantity});
}

/// @nodoc
class _$AddProductToCartCopyWithImpl<$Res, $Val extends AddProductToCart>
    implements $AddProductToCartCopyWith<$Res> {
  _$AddProductToCartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddProductToCartCopyWith<$Res>
    implements $AddProductToCartCopyWith<$Res> {
  factory _$$_AddProductToCartCopyWith(
          _$_AddProductToCart value, $Res Function(_$_AddProductToCart) then) =
      __$$_AddProductToCartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int quantity});
}

/// @nodoc
class __$$_AddProductToCartCopyWithImpl<$Res>
    extends _$AddProductToCartCopyWithImpl<$Res, _$_AddProductToCart>
    implements _$$_AddProductToCartCopyWith<$Res> {
  __$$_AddProductToCartCopyWithImpl(
      _$_AddProductToCart _value, $Res Function(_$_AddProductToCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
  }) {
    return _then(_$_AddProductToCart(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddProductToCart extends _AddProductToCart {
  _$_AddProductToCart({required this.id, required this.quantity}) : super._();

  factory _$_AddProductToCart.fromJson(Map<String, dynamic> json) =>
      _$$_AddProductToCartFromJson(json);

  @override
  final int id;
  @override
  final int quantity;

  @override
  String toString() {
    return 'AddProductToCart(id: $id, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddProductToCart &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddProductToCartCopyWith<_$_AddProductToCart> get copyWith =>
      __$$_AddProductToCartCopyWithImpl<_$_AddProductToCart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddProductToCartToJson(
      this,
    );
  }
}

abstract class _AddProductToCart extends AddProductToCart {
  factory _AddProductToCart(
      {required final int id,
      required final int quantity}) = _$_AddProductToCart;
  _AddProductToCart._() : super._();

  factory _AddProductToCart.fromJson(Map<String, dynamic> json) =
      _$_AddProductToCart.fromJson;

  @override
  int get id;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_AddProductToCartCopyWith<_$_AddProductToCart> get copyWith =>
      throw _privateConstructorUsedError;
}
