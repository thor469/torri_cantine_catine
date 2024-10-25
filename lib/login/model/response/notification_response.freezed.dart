// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetNotificationResponse _$GetNotificationResponseFromJson(
    Map<String, dynamic> json) {
  return _GetNotificationResponse.fromJson(json);
}

/// @nodoc
mixin _$GetNotificationResponse {
  List<GetNotificationModel> get notificationsData =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetNotificationResponseCopyWith<GetNotificationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNotificationResponseCopyWith<$Res> {
  factory $GetNotificationResponseCopyWith(GetNotificationResponse value,
          $Res Function(GetNotificationResponse) then) =
      _$GetNotificationResponseCopyWithImpl<$Res, GetNotificationResponse>;
  @useResult
  $Res call({List<GetNotificationModel> notificationsData});
}

/// @nodoc
class _$GetNotificationResponseCopyWithImpl<$Res,
        $Val extends GetNotificationResponse>
    implements $GetNotificationResponseCopyWith<$Res> {
  _$GetNotificationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationsData = null,
  }) {
    return _then(_value.copyWith(
      notificationsData: null == notificationsData
          ? _value.notificationsData
          : notificationsData // ignore: cast_nullable_to_non_nullable
              as List<GetNotificationModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetNotificationResponseCopyWith<$Res>
    implements $GetNotificationResponseCopyWith<$Res> {
  factory _$$_GetNotificationResponseCopyWith(_$_GetNotificationResponse value,
          $Res Function(_$_GetNotificationResponse) then) =
      __$$_GetNotificationResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GetNotificationModel> notificationsData});
}

/// @nodoc
class __$$_GetNotificationResponseCopyWithImpl<$Res>
    extends _$GetNotificationResponseCopyWithImpl<$Res,
        _$_GetNotificationResponse>
    implements _$$_GetNotificationResponseCopyWith<$Res> {
  __$$_GetNotificationResponseCopyWithImpl(_$_GetNotificationResponse _value,
      $Res Function(_$_GetNotificationResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationsData = null,
  }) {
    return _then(_$_GetNotificationResponse(
      notificationsData: null == notificationsData
          ? _value._notificationsData
          : notificationsData // ignore: cast_nullable_to_non_nullable
              as List<GetNotificationModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetNotificationResponse implements _GetNotificationResponse {
  _$_GetNotificationResponse(
      {final List<GetNotificationModel> notificationsData =
          const <GetNotificationModel>[]})
      : _notificationsData = notificationsData;

  factory _$_GetNotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetNotificationResponseFromJson(json);

  final List<GetNotificationModel> _notificationsData;
  @override
  @JsonKey()
  List<GetNotificationModel> get notificationsData {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationsData);
  }

  @override
  String toString() {
    return 'GetNotificationResponse(notificationsData: $notificationsData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetNotificationResponse &&
            const DeepCollectionEquality()
                .equals(other._notificationsData, _notificationsData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notificationsData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetNotificationResponseCopyWith<_$_GetNotificationResponse>
      get copyWith =>
          __$$_GetNotificationResponseCopyWithImpl<_$_GetNotificationResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetNotificationResponseToJson(
      this,
    );
  }
}

abstract class _GetNotificationResponse implements GetNotificationResponse {
  factory _GetNotificationResponse(
          {final List<GetNotificationModel> notificationsData}) =
      _$_GetNotificationResponse;

  factory _GetNotificationResponse.fromJson(Map<String, dynamic> json) =
      _$_GetNotificationResponse.fromJson;

  @override
  List<GetNotificationModel> get notificationsData;
  @override
  @JsonKey(ignore: true)
  _$$_GetNotificationResponseCopyWith<_$_GetNotificationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

GetNotificationModel _$GetNotificationModelFromJson(Map<String, dynamic> json) {
  return _GetNotificationModel.fromJson(json);
}

/// @nodoc
mixin _$GetNotificationModel {
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get dateInsert => throw _privateConstructorUsedError;
  String? get dateUpdate => throw _privateConstructorUsedError;
  String? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetNotificationModelCopyWith<GetNotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNotificationModelCopyWith<$Res> {
  factory $GetNotificationModelCopyWith(GetNotificationModel value,
          $Res Function(GetNotificationModel) then) =
      _$GetNotificationModelCopyWithImpl<$Res, GetNotificationModel>;
  @useResult
  $Res call(
      {String? id,
      String? userId,
      String? deviceId,
      String? token,
      String? dateInsert,
      String? dateUpdate,
      String? active});
}

/// @nodoc
class _$GetNotificationModelCopyWithImpl<$Res,
        $Val extends GetNotificationModel>
    implements $GetNotificationModelCopyWith<$Res> {
  _$GetNotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? deviceId = freezed,
    Object? token = freezed,
    Object? dateInsert = freezed,
    Object? dateUpdate = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      dateInsert: freezed == dateInsert
          ? _value.dateInsert
          : dateInsert // ignore: cast_nullable_to_non_nullable
              as String?,
      dateUpdate: freezed == dateUpdate
          ? _value.dateUpdate
          : dateUpdate // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetNotificationModelCopyWith<$Res>
    implements $GetNotificationModelCopyWith<$Res> {
  factory _$$_GetNotificationModelCopyWith(_$_GetNotificationModel value,
          $Res Function(_$_GetNotificationModel) then) =
      __$$_GetNotificationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? userId,
      String? deviceId,
      String? token,
      String? dateInsert,
      String? dateUpdate,
      String? active});
}

/// @nodoc
class __$$_GetNotificationModelCopyWithImpl<$Res>
    extends _$GetNotificationModelCopyWithImpl<$Res, _$_GetNotificationModel>
    implements _$$_GetNotificationModelCopyWith<$Res> {
  __$$_GetNotificationModelCopyWithImpl(_$_GetNotificationModel _value,
      $Res Function(_$_GetNotificationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? deviceId = freezed,
    Object? token = freezed,
    Object? dateInsert = freezed,
    Object? dateUpdate = freezed,
    Object? active = freezed,
  }) {
    return _then(_$_GetNotificationModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      dateInsert: freezed == dateInsert
          ? _value.dateInsert
          : dateInsert // ignore: cast_nullable_to_non_nullable
              as String?,
      dateUpdate: freezed == dateUpdate
          ? _value.dateUpdate
          : dateUpdate // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetNotificationModel implements _GetNotificationModel {
  _$_GetNotificationModel(
      {this.id,
      this.userId,
      this.deviceId,
      this.token,
      this.dateInsert,
      this.dateUpdate,
      this.active});

  factory _$_GetNotificationModel.fromJson(Map<String, dynamic> json) =>
      _$$_GetNotificationModelFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? deviceId;
  @override
  final String? token;
  @override
  final String? dateInsert;
  @override
  final String? dateUpdate;
  @override
  final String? active;

  @override
  String toString() {
    return 'GetNotificationModel(id: $id, userId: $userId, deviceId: $deviceId, token: $token, dateInsert: $dateInsert, dateUpdate: $dateUpdate, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetNotificationModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.dateInsert, dateInsert) ||
                other.dateInsert == dateInsert) &&
            (identical(other.dateUpdate, dateUpdate) ||
                other.dateUpdate == dateUpdate) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, deviceId, token, dateInsert, dateUpdate, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetNotificationModelCopyWith<_$_GetNotificationModel> get copyWith =>
      __$$_GetNotificationModelCopyWithImpl<_$_GetNotificationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetNotificationModelToJson(
      this,
    );
  }
}

abstract class _GetNotificationModel implements GetNotificationModel {
  factory _GetNotificationModel(
      {final String? id,
      final String? userId,
      final String? deviceId,
      final String? token,
      final String? dateInsert,
      final String? dateUpdate,
      final String? active}) = _$_GetNotificationModel;

  factory _GetNotificationModel.fromJson(Map<String, dynamic> json) =
      _$_GetNotificationModel.fromJson;

  @override
  String? get id;
  @override
  String? get userId;
  @override
  String? get deviceId;
  @override
  String? get token;
  @override
  String? get dateInsert;
  @override
  String? get dateUpdate;
  @override
  String? get active;
  @override
  @JsonKey(ignore: true)
  _$$_GetNotificationModelCopyWith<_$_GetNotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
