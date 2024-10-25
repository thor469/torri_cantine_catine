// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_product_to_cart_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateProductToCartRequest _$UpdateProductToCartRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateProductToCartRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateProductToCartRequest {
  String get key => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProductToCartRequestCopyWith<UpdateProductToCartRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProductToCartRequestCopyWith<$Res> {
  factory $UpdateProductToCartRequestCopyWith(UpdateProductToCartRequest value,
          $Res Function(UpdateProductToCartRequest) then) =
      _$UpdateProductToCartRequestCopyWithImpl<$Res,
          UpdateProductToCartRequest>;
  @useResult
  $Res call({String key, int quantity});
}

/// @nodoc
class _$UpdateProductToCartRequestCopyWithImpl<$Res,
        $Val extends UpdateProductToCartRequest>
    implements $UpdateProductToCartRequestCopyWith<$Res> {
  _$UpdateProductToCartRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateProductToCartRequestCopyWith<$Res>
    implements $UpdateProductToCartRequestCopyWith<$Res> {
  factory _$$_UpdateProductToCartRequestCopyWith(
          _$_UpdateProductToCartRequest value,
          $Res Function(_$_UpdateProductToCartRequest) then) =
      __$$_UpdateProductToCartRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, int quantity});
}

/// @nodoc
class __$$_UpdateProductToCartRequestCopyWithImpl<$Res>
    extends _$UpdateProductToCartRequestCopyWithImpl<$Res,
        _$_UpdateProductToCartRequest>
    implements _$$_UpdateProductToCartRequestCopyWith<$Res> {
  __$$_UpdateProductToCartRequestCopyWithImpl(
      _$_UpdateProductToCartRequest _value,
      $Res Function(_$_UpdateProductToCartRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? quantity = null,
  }) {
    return _then(_$_UpdateProductToCartRequest(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
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
class _$_UpdateProductToCartRequest extends _UpdateProductToCartRequest {
  _$_UpdateProductToCartRequest({required this.key, required this.quantity})
      : super._();

  factory _$_UpdateProductToCartRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateProductToCartRequestFromJson(json);

  @override
  final String key;
  @override
  final int quantity;

  @override
  String toString() {
    return 'UpdateProductToCartRequest(key: $key, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateProductToCartRequest &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateProductToCartRequestCopyWith<_$_UpdateProductToCartRequest>
      get copyWith => __$$_UpdateProductToCartRequestCopyWithImpl<
          _$_UpdateProductToCartRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateProductToCartRequestToJson(
      this,
    );
  }
}

abstract class _UpdateProductToCartRequest extends UpdateProductToCartRequest {
  factory _UpdateProductToCartRequest(
      {required final String key,
      required final int quantity}) = _$_UpdateProductToCartRequest;
  _UpdateProductToCartRequest._() : super._();

  factory _UpdateProductToCartRequest.fromJson(Map<String, dynamic> json) =
      _$_UpdateProductToCartRequest.fromJson;

  @override
  String get key;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateProductToCartRequestCopyWith<_$_UpdateProductToCartRequest>
      get copyWith => throw _privateConstructorUsedError;
}