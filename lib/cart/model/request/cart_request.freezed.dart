// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartRequest _$CartRequestFromJson(Map<String, dynamic> json) {
  return _CartRequest.fromJson(json);
}

/// @nodoc
mixin _$CartRequest {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartRequestCopyWith<$Res> {
  factory $CartRequestCopyWith(
          CartRequest value, $Res Function(CartRequest) then) =
      _$CartRequestCopyWithImpl<$Res, CartRequest>;
}

/// @nodoc
class _$CartRequestCopyWithImpl<$Res, $Val extends CartRequest>
    implements $CartRequestCopyWith<$Res> {
  _$CartRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CartRequestCopyWith<$Res> {
  factory _$$_CartRequestCopyWith(
          _$_CartRequest value, $Res Function(_$_CartRequest) then) =
      __$$_CartRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CartRequestCopyWithImpl<$Res>
    extends _$CartRequestCopyWithImpl<$Res, _$_CartRequest>
    implements _$$_CartRequestCopyWith<$Res> {
  __$$_CartRequestCopyWithImpl(
      _$_CartRequest _value, $Res Function(_$_CartRequest) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_CartRequest extends _CartRequest {
  _$_CartRequest() : super._();

  factory _$_CartRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CartRequestFromJson(json);

  @override
  String toString() {
    return 'CartRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CartRequest);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartRequestToJson(
      this,
    );
  }
}

abstract class _CartRequest extends CartRequest {
  factory _CartRequest() = _$_CartRequest;
  _CartRequest._() : super._();

  factory _CartRequest.fromJson(Map<String, dynamic> json) =
      _$_CartRequest.fromJson;
}
