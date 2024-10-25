// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'remove_product_to_cart_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemoveProductToCartRequest _$RemoveProductToCartRequestFromJson(
    Map<String, dynamic> json) {
  return _RemoveProductToCartRequest.fromJson(json);
}

/// @nodoc
mixin _$RemoveProductToCartRequest {
  String get key => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoveProductToCartRequestCopyWith<RemoveProductToCartRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveProductToCartRequestCopyWith<$Res> {
  factory $RemoveProductToCartRequestCopyWith(RemoveProductToCartRequest value,
          $Res Function(RemoveProductToCartRequest) then) =
      _$RemoveProductToCartRequestCopyWithImpl<$Res,
          RemoveProductToCartRequest>;
  @useResult
  $Res call({String key, int quantity});
}

/// @nodoc
class _$RemoveProductToCartRequestCopyWithImpl<$Res,
        $Val extends RemoveProductToCartRequest>
    implements $RemoveProductToCartRequestCopyWith<$Res> {
  _$RemoveProductToCartRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$_RemoveProductToCartRequestCopyWith<$Res>
    implements $RemoveProductToCartRequestCopyWith<$Res> {
  factory _$$_RemoveProductToCartRequestCopyWith(
          _$_RemoveProductToCartRequest value,
          $Res Function(_$_RemoveProductToCartRequest) then) =
      __$$_RemoveProductToCartRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, int quantity});
}

/// @nodoc
class __$$_RemoveProductToCartRequestCopyWithImpl<$Res>
    extends _$RemoveProductToCartRequestCopyWithImpl<$Res,
        _$_RemoveProductToCartRequest>
    implements _$$_RemoveProductToCartRequestCopyWith<$Res> {
  __$$_RemoveProductToCartRequestCopyWithImpl(
      _$_RemoveProductToCartRequest _value,
      $Res Function(_$_RemoveProductToCartRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? quantity = null,
  }) {
    return _then(_$_RemoveProductToCartRequest(
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
class _$_RemoveProductToCartRequest extends _RemoveProductToCartRequest {
  _$_RemoveProductToCartRequest({required this.key, required this.quantity})
      : super._();

  factory _$_RemoveProductToCartRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RemoveProductToCartRequestFromJson(json);

  @override
  final String key;
  @override
  final int quantity;

  @override
  String toString() {
    return 'RemoveProductToCartRequest(key: $key, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveProductToCartRequest &&
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
  _$$_RemoveProductToCartRequestCopyWith<_$_RemoveProductToCartRequest>
      get copyWith => __$$_RemoveProductToCartRequestCopyWithImpl<
          _$_RemoveProductToCartRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemoveProductToCartRequestToJson(
      this,
    );
  }
}

abstract class _RemoveProductToCartRequest extends RemoveProductToCartRequest {
  factory _RemoveProductToCartRequest(
      {required final String key,
      required final int quantity}) = _$_RemoveProductToCartRequest;
  _RemoveProductToCartRequest._() : super._();

  factory _RemoveProductToCartRequest.fromJson(Map<String, dynamic> json) =
      _$_RemoveProductToCartRequest.fromJson;

  @override
  String get key;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_RemoveProductToCartRequestCopyWith<_$_RemoveProductToCartRequest>
      get copyWith => throw _privateConstructorUsedError;
}
