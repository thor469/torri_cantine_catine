// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'point_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PointMaxValueResponse _$PointMaxValueResponseFromJson(
    Map<String, dynamic> json) {
  return _PointMaxValueResponse.fromJson(json);
}

/// @nodoc
mixin _$PointMaxValueResponse {
  int get points => throw _privateConstructorUsedError;
  int get money => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointMaxValueResponseCopyWith<PointMaxValueResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointMaxValueResponseCopyWith<$Res> {
  factory $PointMaxValueResponseCopyWith(PointMaxValueResponse value,
          $Res Function(PointMaxValueResponse) then) =
      _$PointMaxValueResponseCopyWithImpl<$Res, PointMaxValueResponse>;
  @useResult
  $Res call({int points, int money});
}

/// @nodoc
class _$PointMaxValueResponseCopyWithImpl<$Res,
        $Val extends PointMaxValueResponse>
    implements $PointMaxValueResponseCopyWith<$Res> {
  _$PointMaxValueResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? money = null,
  }) {
    return _then(_value.copyWith(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      money: null == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PointMaxValueResponseCopyWith<$Res>
    implements $PointMaxValueResponseCopyWith<$Res> {
  factory _$$_PointMaxValueResponseCopyWith(_$_PointMaxValueResponse value,
          $Res Function(_$_PointMaxValueResponse) then) =
      __$$_PointMaxValueResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int points, int money});
}

/// @nodoc
class __$$_PointMaxValueResponseCopyWithImpl<$Res>
    extends _$PointMaxValueResponseCopyWithImpl<$Res, _$_PointMaxValueResponse>
    implements _$$_PointMaxValueResponseCopyWith<$Res> {
  __$$_PointMaxValueResponseCopyWithImpl(_$_PointMaxValueResponse _value,
      $Res Function(_$_PointMaxValueResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? money = null,
  }) {
    return _then(_$_PointMaxValueResponse(
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      money: null == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PointMaxValueResponse implements _PointMaxValueResponse {
  _$_PointMaxValueResponse({required this.points, required this.money});

  factory _$_PointMaxValueResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PointMaxValueResponseFromJson(json);

  @override
  final int points;
  @override
  final int money;

  @override
  String toString() {
    return 'PointMaxValueResponse(points: $points, money: $money)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PointMaxValueResponse &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.money, money) || other.money == money));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, points, money);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PointMaxValueResponseCopyWith<_$_PointMaxValueResponse> get copyWith =>
      __$$_PointMaxValueResponseCopyWithImpl<_$_PointMaxValueResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PointMaxValueResponseToJson(
      this,
    );
  }
}

abstract class _PointMaxValueResponse implements PointMaxValueResponse {
  factory _PointMaxValueResponse(
      {required final int points,
      required final int money}) = _$_PointMaxValueResponse;

  factory _PointMaxValueResponse.fromJson(Map<String, dynamic> json) =
      _$_PointMaxValueResponse.fromJson;

  @override
  int get points;
  @override
  int get money;
  @override
  @JsonKey(ignore: true)
  _$$_PointMaxValueResponseCopyWith<_$_PointMaxValueResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
