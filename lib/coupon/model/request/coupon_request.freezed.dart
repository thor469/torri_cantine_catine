// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coupon_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CouponRequest _$CouponRequestFromJson(Map<String, dynamic> json) {
  return _CouponRequest.fromJson(json);
}

/// @nodoc
mixin _$CouponRequest {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponRequestCopyWith<$Res> {
  factory $CouponRequestCopyWith(
          CouponRequest value, $Res Function(CouponRequest) then) =
      _$CouponRequestCopyWithImpl<$Res, CouponRequest>;
}

/// @nodoc
class _$CouponRequestCopyWithImpl<$Res, $Val extends CouponRequest>
    implements $CouponRequestCopyWith<$Res> {
  _$CouponRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CouponRequestCopyWith<$Res> {
  factory _$$_CouponRequestCopyWith(
          _$_CouponRequest value, $Res Function(_$_CouponRequest) then) =
      __$$_CouponRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CouponRequestCopyWithImpl<$Res>
    extends _$CouponRequestCopyWithImpl<$Res, _$_CouponRequest>
    implements _$$_CouponRequestCopyWith<$Res> {
  __$$_CouponRequestCopyWithImpl(
      _$_CouponRequest _value, $Res Function(_$_CouponRequest) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_CouponRequest extends _CouponRequest {
  _$_CouponRequest() : super._();

  factory _$_CouponRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CouponRequestFromJson(json);

  @override
  String toString() {
    return 'CouponRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CouponRequest);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_CouponRequestToJson(
      this,
    );
  }
}

abstract class _CouponRequest extends CouponRequest {
  factory _CouponRequest() = _$_CouponRequest;
  _CouponRequest._() : super._();

  factory _CouponRequest.fromJson(Map<String, dynamic> json) =
      _$_CouponRequest.fromJson;
}
