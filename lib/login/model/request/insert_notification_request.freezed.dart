// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'insert_notification_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InsertNotificationRequest _$InsertNotificationRequestFromJson(
    Map<String, dynamic> json) {
  return _InsertNotificationRequest.fromJson(json);
}

/// @nodoc
mixin _$InsertNotificationRequest {
  String get token => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InsertNotificationRequestCopyWith<InsertNotificationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsertNotificationRequestCopyWith<$Res> {
  factory $InsertNotificationRequestCopyWith(InsertNotificationRequest value,
          $Res Function(InsertNotificationRequest) then) =
      _$InsertNotificationRequestCopyWithImpl<$Res, InsertNotificationRequest>;
  @useResult
  $Res call({String token, String deviceId, String email});
}

/// @nodoc
class _$InsertNotificationRequestCopyWithImpl<$Res,
        $Val extends InsertNotificationRequest>
    implements $InsertNotificationRequestCopyWith<$Res> {
  _$InsertNotificationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? deviceId = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InsertNotificationRequestCopyWith<$Res>
    implements $InsertNotificationRequestCopyWith<$Res> {
  factory _$$_InsertNotificationRequestCopyWith(
          _$_InsertNotificationRequest value,
          $Res Function(_$_InsertNotificationRequest) then) =
      __$$_InsertNotificationRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String deviceId, String email});
}

/// @nodoc
class __$$_InsertNotificationRequestCopyWithImpl<$Res>
    extends _$InsertNotificationRequestCopyWithImpl<$Res,
        _$_InsertNotificationRequest>
    implements _$$_InsertNotificationRequestCopyWith<$Res> {
  __$$_InsertNotificationRequestCopyWithImpl(
      _$_InsertNotificationRequest _value,
      $Res Function(_$_InsertNotificationRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? deviceId = null,
    Object? email = null,
  }) {
    return _then(_$_InsertNotificationRequest(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InsertNotificationRequest extends _InsertNotificationRequest {
  _$_InsertNotificationRequest(
      {required this.token, required this.deviceId, required this.email})
      : super._();

  factory _$_InsertNotificationRequest.fromJson(Map<String, dynamic> json) =>
      _$$_InsertNotificationRequestFromJson(json);

  @override
  final String token;
  @override
  final String deviceId;
  @override
  final String email;

  @override
  String toString() {
    return 'InsertNotificationRequest(token: $token, deviceId: $deviceId, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsertNotificationRequest &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, deviceId, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InsertNotificationRequestCopyWith<_$_InsertNotificationRequest>
      get copyWith => __$$_InsertNotificationRequestCopyWithImpl<
          _$_InsertNotificationRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InsertNotificationRequestToJson(
      this,
    );
  }
}

abstract class _InsertNotificationRequest extends InsertNotificationRequest {
  factory _InsertNotificationRequest(
      {required final String token,
      required final String deviceId,
      required final String email}) = _$_InsertNotificationRequest;
  _InsertNotificationRequest._() : super._();

  factory _InsertNotificationRequest.fromJson(Map<String, dynamic> json) =
      _$_InsertNotificationRequest.fromJson;

  @override
  String get token;
  @override
  String get deviceId;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_InsertNotificationRequestCopyWith<_$_InsertNotificationRequest>
      get copyWith => throw _privateConstructorUsedError;
}
