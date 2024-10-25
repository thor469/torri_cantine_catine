// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationRequest _$NotificationRequestFromJson(Map<String, dynamic> json) {
  return _NotificationRequest.fromJson(json);
}

/// @nodoc
mixin _$NotificationRequest {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationRequestCopyWith<$Res> {
  factory $NotificationRequestCopyWith(
          NotificationRequest value, $Res Function(NotificationRequest) then) =
      _$NotificationRequestCopyWithImpl<$Res, NotificationRequest>;
}

/// @nodoc
class _$NotificationRequestCopyWithImpl<$Res, $Val extends NotificationRequest>
    implements $NotificationRequestCopyWith<$Res> {
  _$NotificationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NotificationRequestCopyWith<$Res> {
  factory _$$_NotificationRequestCopyWith(_$_NotificationRequest value,
          $Res Function(_$_NotificationRequest) then) =
      __$$_NotificationRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NotificationRequestCopyWithImpl<$Res>
    extends _$NotificationRequestCopyWithImpl<$Res, _$_NotificationRequest>
    implements _$$_NotificationRequestCopyWith<$Res> {
  __$$_NotificationRequestCopyWithImpl(_$_NotificationRequest _value,
      $Res Function(_$_NotificationRequest) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_NotificationRequest extends _NotificationRequest {
  _$_NotificationRequest() : super._();

  factory _$_NotificationRequest.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationRequestFromJson(json);

  @override
  String toString() {
    return 'NotificationRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NotificationRequest);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationRequestToJson(
      this,
    );
  }
}

abstract class _NotificationRequest extends NotificationRequest {
  factory _NotificationRequest() = _$_NotificationRequest;
  _NotificationRequest._() : super._();

  factory _NotificationRequest.fromJson(Map<String, dynamic> json) =
      _$_NotificationRequest.fromJson;
}
