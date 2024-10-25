// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'registration_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegistrationResponse _$RegistrationResponseFromJson(Map<String, dynamic> json) {
  return _RegistrationResponse.fromJson(json);
}

/// @nodoc
mixin _$RegistrationResponse {
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationResponseCopyWith<RegistrationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationResponseCopyWith<$Res> {
  factory $RegistrationResponseCopyWith(RegistrationResponse value,
          $Res Function(RegistrationResponse) then) =
      _$RegistrationResponseCopyWithImpl<$Res, RegistrationResponse>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$RegistrationResponseCopyWithImpl<$Res,
        $Val extends RegistrationResponse>
    implements $RegistrationResponseCopyWith<$Res> {
  _$RegistrationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegistrationResponseCopyWith<$Res>
    implements $RegistrationResponseCopyWith<$Res> {
  factory _$$_RegistrationResponseCopyWith(_$_RegistrationResponse value,
          $Res Function(_$_RegistrationResponse) then) =
      __$$_RegistrationResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$_RegistrationResponseCopyWithImpl<$Res>
    extends _$RegistrationResponseCopyWithImpl<$Res, _$_RegistrationResponse>
    implements _$$_RegistrationResponseCopyWith<$Res> {
  __$$_RegistrationResponseCopyWithImpl(_$_RegistrationResponse _value,
      $Res Function(_$_RegistrationResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_RegistrationResponse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegistrationResponse implements _RegistrationResponse {
  _$_RegistrationResponse({this.id});

  factory _$_RegistrationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RegistrationResponseFromJson(json);

  @override
  final int? id;

  @override
  String toString() {
    return 'RegistrationResponse(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationResponse &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationResponseCopyWith<_$_RegistrationResponse> get copyWith =>
      __$$_RegistrationResponseCopyWithImpl<_$_RegistrationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegistrationResponseToJson(
      this,
    );
  }
}

abstract class _RegistrationResponse implements RegistrationResponse {
  factory _RegistrationResponse({final int? id}) = _$_RegistrationResponse;

  factory _RegistrationResponse.fromJson(Map<String, dynamic> json) =
      _$_RegistrationResponse.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_RegistrationResponseCopyWith<_$_RegistrationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
