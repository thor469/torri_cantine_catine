// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_customer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateCustomerResponse _$UpdateCustomerResponseFromJson(
    Map<String, dynamic> json) {
  return _UpdateCustomerResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdateCustomerResponse {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCustomerResponseCopyWith<$Res> {
  factory $UpdateCustomerResponseCopyWith(UpdateCustomerResponse value,
          $Res Function(UpdateCustomerResponse) then) =
      _$UpdateCustomerResponseCopyWithImpl<$Res, UpdateCustomerResponse>;
}

/// @nodoc
class _$UpdateCustomerResponseCopyWithImpl<$Res,
        $Val extends UpdateCustomerResponse>
    implements $UpdateCustomerResponseCopyWith<$Res> {
  _$UpdateCustomerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UpdateCustomerResponseCopyWith<$Res> {
  factory _$$_UpdateCustomerResponseCopyWith(_$_UpdateCustomerResponse value,
          $Res Function(_$_UpdateCustomerResponse) then) =
      __$$_UpdateCustomerResponseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateCustomerResponseCopyWithImpl<$Res>
    extends _$UpdateCustomerResponseCopyWithImpl<$Res,
        _$_UpdateCustomerResponse>
    implements _$$_UpdateCustomerResponseCopyWith<$Res> {
  __$$_UpdateCustomerResponseCopyWithImpl(_$_UpdateCustomerResponse _value,
      $Res Function(_$_UpdateCustomerResponse) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_UpdateCustomerResponse implements _UpdateCustomerResponse {
  _$_UpdateCustomerResponse();

  factory _$_UpdateCustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateCustomerResponseFromJson(json);

  @override
  String toString() {
    return 'UpdateCustomerResponse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateCustomerResponse);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateCustomerResponseToJson(
      this,
    );
  }
}

abstract class _UpdateCustomerResponse implements UpdateCustomerResponse {
  factory _UpdateCustomerResponse() = _$_UpdateCustomerResponse;

  factory _UpdateCustomerResponse.fromJson(Map<String, dynamic> json) =
      _$_UpdateCustomerResponse.fromJson;
}
