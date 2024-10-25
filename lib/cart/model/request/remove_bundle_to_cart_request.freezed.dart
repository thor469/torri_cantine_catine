// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'remove_bundle_to_cart_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemoveBundleToCartRequest _$RemoveBundleToCartRequestFromJson(
    Map<String, dynamic> json) {
  return _RemoveBundleToCartRequest.fromJson(json);
}

/// @nodoc
mixin _$RemoveBundleToCartRequest {
  String get key => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoveBundleToCartRequestCopyWith<RemoveBundleToCartRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveBundleToCartRequestCopyWith<$Res> {
  factory $RemoveBundleToCartRequestCopyWith(RemoveBundleToCartRequest value,
          $Res Function(RemoveBundleToCartRequest) then) =
      _$RemoveBundleToCartRequestCopyWithImpl<$Res, RemoveBundleToCartRequest>;
  @useResult
  $Res call({String key, int quantity});
}

/// @nodoc
class _$RemoveBundleToCartRequestCopyWithImpl<$Res,
        $Val extends RemoveBundleToCartRequest>
    implements $RemoveBundleToCartRequestCopyWith<$Res> {
  _$RemoveBundleToCartRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$_RemoveBundleToCartRequestCopyWith<$Res>
    implements $RemoveBundleToCartRequestCopyWith<$Res> {
  factory _$$_RemoveBundleToCartRequestCopyWith(
          _$_RemoveBundleToCartRequest value,
          $Res Function(_$_RemoveBundleToCartRequest) then) =
      __$$_RemoveBundleToCartRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, int quantity});
}

/// @nodoc
class __$$_RemoveBundleToCartRequestCopyWithImpl<$Res>
    extends _$RemoveBundleToCartRequestCopyWithImpl<$Res,
        _$_RemoveBundleToCartRequest>
    implements _$$_RemoveBundleToCartRequestCopyWith<$Res> {
  __$$_RemoveBundleToCartRequestCopyWithImpl(
      _$_RemoveBundleToCartRequest _value,
      $Res Function(_$_RemoveBundleToCartRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? quantity = null,
  }) {
    return _then(_$_RemoveBundleToCartRequest(
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
class _$_RemoveBundleToCartRequest extends _RemoveBundleToCartRequest {
  _$_RemoveBundleToCartRequest({required this.key, required this.quantity})
      : super._();

  factory _$_RemoveBundleToCartRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RemoveBundleToCartRequestFromJson(json);

  @override
  final String key;
  @override
  final int quantity;

  @override
  String toString() {
    return 'RemoveBundleToCartRequest(key: $key, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveBundleToCartRequest &&
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
  _$$_RemoveBundleToCartRequestCopyWith<_$_RemoveBundleToCartRequest>
      get copyWith => __$$_RemoveBundleToCartRequestCopyWithImpl<
          _$_RemoveBundleToCartRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemoveBundleToCartRequestToJson(
      this,
    );
  }
}

abstract class _RemoveBundleToCartRequest extends RemoveBundleToCartRequest {
  factory _RemoveBundleToCartRequest(
      {required final String key,
      required final int quantity}) = _$_RemoveBundleToCartRequest;
  _RemoveBundleToCartRequest._() : super._();

  factory _RemoveBundleToCartRequest.fromJson(Map<String, dynamic> json) =
      _$_RemoveBundleToCartRequest.fromJson;

  @override
  String get key;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_RemoveBundleToCartRequestCopyWith<_$_RemoveBundleToCartRequest>
      get copyWith => throw _privateConstructorUsedError;
}
