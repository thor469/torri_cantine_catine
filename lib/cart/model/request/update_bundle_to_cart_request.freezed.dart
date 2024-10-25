// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_bundle_to_cart_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateBundleToCartRequest _$UpdateBundleToCartRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateBundleToCartRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateBundleToCartRequest {
  String get key => throw _privateConstructorUsedError;
  Map<dynamic, dynamic> get data => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateBundleToCartRequestCopyWith<UpdateBundleToCartRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateBundleToCartRequestCopyWith<$Res> {
  factory $UpdateBundleToCartRequestCopyWith(UpdateBundleToCartRequest value,
          $Res Function(UpdateBundleToCartRequest) then) =
      _$UpdateBundleToCartRequestCopyWithImpl<$Res, UpdateBundleToCartRequest>;
  @useResult
  $Res call({String key, Map<dynamic, dynamic> data, int quantity});
}

/// @nodoc
class _$UpdateBundleToCartRequestCopyWithImpl<$Res,
        $Val extends UpdateBundleToCartRequest>
    implements $UpdateBundleToCartRequestCopyWith<$Res> {
  _$UpdateBundleToCartRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? data = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateBundleToCartRequestCopyWith<$Res>
    implements $UpdateBundleToCartRequestCopyWith<$Res> {
  factory _$$_UpdateBundleToCartRequestCopyWith(
          _$_UpdateBundleToCartRequest value,
          $Res Function(_$_UpdateBundleToCartRequest) then) =
      __$$_UpdateBundleToCartRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, Map<dynamic, dynamic> data, int quantity});
}

/// @nodoc
class __$$_UpdateBundleToCartRequestCopyWithImpl<$Res>
    extends _$UpdateBundleToCartRequestCopyWithImpl<$Res,
        _$_UpdateBundleToCartRequest>
    implements _$$_UpdateBundleToCartRequestCopyWith<$Res> {
  __$$_UpdateBundleToCartRequestCopyWithImpl(
      _$_UpdateBundleToCartRequest _value,
      $Res Function(_$_UpdateBundleToCartRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? data = null,
    Object? quantity = null,
  }) {
    return _then(_$_UpdateBundleToCartRequest(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateBundleToCartRequest extends _UpdateBundleToCartRequest {
  _$_UpdateBundleToCartRequest(
      {required this.key,
      required final Map<dynamic, dynamic> data,
      required this.quantity})
      : _data = data,
        super._();

  factory _$_UpdateBundleToCartRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateBundleToCartRequestFromJson(json);

  @override
  final String key;
  final Map<dynamic, dynamic> _data;
  @override
  Map<dynamic, dynamic> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final int quantity;

  @override
  String toString() {
    return 'UpdateBundleToCartRequest(key: $key, data: $data, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateBundleToCartRequest &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, key, const DeepCollectionEquality().hash(_data), quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateBundleToCartRequestCopyWith<_$_UpdateBundleToCartRequest>
      get copyWith => __$$_UpdateBundleToCartRequestCopyWithImpl<
          _$_UpdateBundleToCartRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateBundleToCartRequestToJson(
      this,
    );
  }
}

abstract class _UpdateBundleToCartRequest extends UpdateBundleToCartRequest {
  factory _UpdateBundleToCartRequest(
      {required final String key,
      required final Map<dynamic, dynamic> data,
      required final int quantity}) = _$_UpdateBundleToCartRequest;
  _UpdateBundleToCartRequest._() : super._();

  factory _UpdateBundleToCartRequest.fromJson(Map<String, dynamic> json) =
      _$_UpdateBundleToCartRequest.fromJson;

  @override
  String get key;
  @override
  Map<dynamic, dynamic> get data;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateBundleToCartRequestCopyWith<_$_UpdateBundleToCartRequest>
      get copyWith => throw _privateConstructorUsedError;
}
