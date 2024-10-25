// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountRequest _$AccountRequestFromJson(Map<String, dynamic> json) {
  return _AccountRequest.fromJson(json);
}

/// @nodoc
mixin _$AccountRequest {
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountRequestCopyWith<AccountRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountRequestCopyWith<$Res> {
  factory $AccountRequestCopyWith(
          AccountRequest value, $Res Function(AccountRequest) then) =
      _$AccountRequestCopyWithImpl<$Res, AccountRequest>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$AccountRequestCopyWithImpl<$Res, $Val extends AccountRequest>
    implements $AccountRequestCopyWith<$Res> {
  _$AccountRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountRequestCopyWith<$Res>
    implements $AccountRequestCopyWith<$Res> {
  factory _$$_AccountRequestCopyWith(
          _$_AccountRequest value, $Res Function(_$_AccountRequest) then) =
      __$$_AccountRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_AccountRequestCopyWithImpl<$Res>
    extends _$AccountRequestCopyWithImpl<$Res, _$_AccountRequest>
    implements _$$_AccountRequestCopyWith<$Res> {
  __$$_AccountRequestCopyWithImpl(
      _$_AccountRequest _value, $Res Function(_$_AccountRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_AccountRequest(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountRequest extends _AccountRequest {
  _$_AccountRequest({required this.email}) : super._();

  factory _$_AccountRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AccountRequestFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'AccountRequest(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountRequest &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountRequestCopyWith<_$_AccountRequest> get copyWith =>
      __$$_AccountRequestCopyWithImpl<_$_AccountRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountRequestToJson(
      this,
    );
  }
}

abstract class _AccountRequest extends AccountRequest {
  factory _AccountRequest({required final String email}) = _$_AccountRequest;
  _AccountRequest._() : super._();

  factory _AccountRequest.fromJson(Map<String, dynamic> json) =
      _$_AccountRequest.fromJson;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_AccountRequestCopyWith<_$_AccountRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
