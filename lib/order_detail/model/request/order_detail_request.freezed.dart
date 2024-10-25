// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_detail_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDetailRequest _$OrderDetailRequestFromJson(Map<String, dynamic> json) {
  return _OrderDetailRequest.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailRequest {
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailRequestCopyWith<OrderDetailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailRequestCopyWith<$Res> {
  factory $OrderDetailRequestCopyWith(
          OrderDetailRequest value, $Res Function(OrderDetailRequest) then) =
      _$OrderDetailRequestCopyWithImpl<$Res, OrderDetailRequest>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$OrderDetailRequestCopyWithImpl<$Res, $Val extends OrderDetailRequest>
    implements $OrderDetailRequestCopyWith<$Res> {
  _$OrderDetailRequestCopyWithImpl(this._value, this._then);

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
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderDetailRequestCopyWith<$Res>
    implements $OrderDetailRequestCopyWith<$Res> {
  factory _$$_OrderDetailRequestCopyWith(_$_OrderDetailRequest value,
          $Res Function(_$_OrderDetailRequest) then) =
      __$$_OrderDetailRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_OrderDetailRequestCopyWithImpl<$Res>
    extends _$OrderDetailRequestCopyWithImpl<$Res, _$_OrderDetailRequest>
    implements _$$_OrderDetailRequestCopyWith<$Res> {
  __$$_OrderDetailRequestCopyWithImpl(
      _$_OrderDetailRequest _value, $Res Function(_$_OrderDetailRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_OrderDetailRequest(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderDetailRequest extends _OrderDetailRequest {
  _$_OrderDetailRequest({required this.id}) : super._();

  factory _$_OrderDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDetailRequestFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'OrderDetailRequest(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDetailRequest &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDetailRequestCopyWith<_$_OrderDetailRequest> get copyWith =>
      __$$_OrderDetailRequestCopyWithImpl<_$_OrderDetailRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDetailRequestToJson(
      this,
    );
  }
}

abstract class _OrderDetailRequest extends OrderDetailRequest {
  factory _OrderDetailRequest({required final int id}) = _$_OrderDetailRequest;
  _OrderDetailRequest._() : super._();

  factory _OrderDetailRequest.fromJson(Map<String, dynamic> json) =
      _$_OrderDetailRequest.fromJson;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDetailRequestCopyWith<_$_OrderDetailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
