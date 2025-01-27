// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'insert_notification_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InsertNotificationResponse _$InsertNotificationResponseFromJson(
    Map<String, dynamic> json) {
  return _InsertNotificationResponse.fromJson(json);
}

/// @nodoc
mixin _$InsertNotificationResponse {
  dynamic get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InsertNotificationResponseCopyWith<InsertNotificationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsertNotificationResponseCopyWith<$Res> {
  factory $InsertNotificationResponseCopyWith(InsertNotificationResponse value,
          $Res Function(InsertNotificationResponse) then) =
      _$InsertNotificationResponseCopyWithImpl<$Res,
          InsertNotificationResponse>;
  @useResult
  $Res call({dynamic id});
}

/// @nodoc
class _$InsertNotificationResponseCopyWithImpl<$Res,
        $Val extends InsertNotificationResponse>
    implements $InsertNotificationResponseCopyWith<$Res> {
  _$InsertNotificationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InsertNotificationResponseCopyWith<$Res>
    implements $InsertNotificationResponseCopyWith<$Res> {
  factory _$$_InsertNotificationResponseCopyWith(
          _$_InsertNotificationResponse value,
          $Res Function(_$_InsertNotificationResponse) then) =
      __$$_InsertNotificationResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic id});
}

/// @nodoc
class __$$_InsertNotificationResponseCopyWithImpl<$Res>
    extends _$InsertNotificationResponseCopyWithImpl<$Res,
        _$_InsertNotificationResponse>
    implements _$$_InsertNotificationResponseCopyWith<$Res> {
  __$$_InsertNotificationResponseCopyWithImpl(
      _$_InsertNotificationResponse _value,
      $Res Function(_$_InsertNotificationResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_InsertNotificationResponse(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InsertNotificationResponse implements _InsertNotificationResponse {
  _$_InsertNotificationResponse({required this.id});

  factory _$_InsertNotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_InsertNotificationResponseFromJson(json);

  @override
  final dynamic id;

  @override
  String toString() {
    return 'InsertNotificationResponse(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsertNotificationResponse &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InsertNotificationResponseCopyWith<_$_InsertNotificationResponse>
      get copyWith => __$$_InsertNotificationResponseCopyWithImpl<
          _$_InsertNotificationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InsertNotificationResponseToJson(
      this,
    );
  }
}

abstract class _InsertNotificationResponse
    implements InsertNotificationResponse {
  factory _InsertNotificationResponse({required final dynamic id}) =
      _$_InsertNotificationResponse;

  factory _InsertNotificationResponse.fromJson(Map<String, dynamic> json) =
      _$_InsertNotificationResponse.fromJson;

  @override
  dynamic get id;
  @override
  @JsonKey(ignore: true)
  _$$_InsertNotificationResponseCopyWith<_$_InsertNotificationResponse>
      get copyWith => throw _privateConstructorUsedError;
}
