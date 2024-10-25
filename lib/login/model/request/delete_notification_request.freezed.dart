// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'delete_notification_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteNotificationRequest _$DeleteNotificationRequestFromJson(
    Map<String, dynamic> json) {
  return _DeleteNotificationRequest.fromJson(json);
}

/// @nodoc
mixin _$DeleteNotificationRequest {
  String get deviceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteNotificationRequestCopyWith<DeleteNotificationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteNotificationRequestCopyWith<$Res> {
  factory $DeleteNotificationRequestCopyWith(DeleteNotificationRequest value,
          $Res Function(DeleteNotificationRequest) then) =
      _$DeleteNotificationRequestCopyWithImpl<$Res, DeleteNotificationRequest>;
  @useResult
  $Res call({String deviceId});
}

/// @nodoc
class _$DeleteNotificationRequestCopyWithImpl<$Res,
        $Val extends DeleteNotificationRequest>
    implements $DeleteNotificationRequestCopyWith<$Res> {
  _$DeleteNotificationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
  }) {
    return _then(_value.copyWith(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeleteNotificationRequestCopyWith<$Res>
    implements $DeleteNotificationRequestCopyWith<$Res> {
  factory _$$_DeleteNotificationRequestCopyWith(
          _$_DeleteNotificationRequest value,
          $Res Function(_$_DeleteNotificationRequest) then) =
      __$$_DeleteNotificationRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String deviceId});
}

/// @nodoc
class __$$_DeleteNotificationRequestCopyWithImpl<$Res>
    extends _$DeleteNotificationRequestCopyWithImpl<$Res,
        _$_DeleteNotificationRequest>
    implements _$$_DeleteNotificationRequestCopyWith<$Res> {
  __$$_DeleteNotificationRequestCopyWithImpl(
      _$_DeleteNotificationRequest _value,
      $Res Function(_$_DeleteNotificationRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = null,
  }) {
    return _then(_$_DeleteNotificationRequest(
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteNotificationRequest extends _DeleteNotificationRequest {
  _$_DeleteNotificationRequest({required this.deviceId}) : super._();

  factory _$_DeleteNotificationRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteNotificationRequestFromJson(json);

  @override
  final String deviceId;

  @override
  String toString() {
    return 'DeleteNotificationRequest(deviceId: $deviceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteNotificationRequest &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteNotificationRequestCopyWith<_$_DeleteNotificationRequest>
      get copyWith => __$$_DeleteNotificationRequestCopyWithImpl<
          _$_DeleteNotificationRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteNotificationRequestToJson(
      this,
    );
  }
}

abstract class _DeleteNotificationRequest extends DeleteNotificationRequest {
  factory _DeleteNotificationRequest({required final String deviceId}) =
      _$_DeleteNotificationRequest;
  _DeleteNotificationRequest._() : super._();

  factory _DeleteNotificationRequest.fromJson(Map<String, dynamic> json) =
      _$_DeleteNotificationRequest.fromJson;

  @override
  String get deviceId;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteNotificationRequestCopyWith<_$_DeleteNotificationRequest>
      get copyWith => throw _privateConstructorUsedError;
}
