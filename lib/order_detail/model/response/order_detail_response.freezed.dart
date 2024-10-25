// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDetailResponse _$OrderDetailResponseFromJson(Map<String, dynamic> json) {
  return _OrderDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailResponse {
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailResponseCopyWith<OrderDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailResponseCopyWith<$Res> {
  factory $OrderDetailResponseCopyWith(
          OrderDetailResponse value, $Res Function(OrderDetailResponse) then) =
      _$OrderDetailResponseCopyWithImpl<$Res, OrderDetailResponse>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class _$OrderDetailResponseCopyWithImpl<$Res, $Val extends OrderDetailResponse>
    implements $OrderDetailResponseCopyWith<$Res> {
  _$OrderDetailResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_OrderDetailResponseCopyWith<$Res>
    implements $OrderDetailResponseCopyWith<$Res> {
  factory _$$_OrderDetailResponseCopyWith(_$_OrderDetailResponse value,
          $Res Function(_$_OrderDetailResponse) then) =
      __$$_OrderDetailResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$_OrderDetailResponseCopyWithImpl<$Res>
    extends _$OrderDetailResponseCopyWithImpl<$Res, _$_OrderDetailResponse>
    implements _$$_OrderDetailResponseCopyWith<$Res> {
  __$$_OrderDetailResponseCopyWithImpl(_$_OrderDetailResponse _value,
      $Res Function(_$_OrderDetailResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_OrderDetailResponse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderDetailResponse implements _OrderDetailResponse {
  _$_OrderDetailResponse({this.id});

  factory _$_OrderDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDetailResponseFromJson(json);

  @override
  final int? id;

  @override
  String toString() {
    return 'OrderDetailResponse(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDetailResponse &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDetailResponseCopyWith<_$_OrderDetailResponse> get copyWith =>
      __$$_OrderDetailResponseCopyWithImpl<_$_OrderDetailResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDetailResponseToJson(
      this,
    );
  }
}

abstract class _OrderDetailResponse implements OrderDetailResponse {
  factory _OrderDetailResponse({final int? id}) = _$_OrderDetailResponse;

  factory _OrderDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_OrderDetailResponse.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDetailResponseCopyWith<_$_OrderDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
