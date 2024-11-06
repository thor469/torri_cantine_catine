// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_orders_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyOrdersResponse _$MyOrdersResponseFromJson(Map<String, dynamic> json) {
  return _MyOrdersResponse.fromJson(json);
}

/// @nodoc
mixin _$MyOrdersResponse {
  int? get order_id => throw _privateConstructorUsedError;
  int? get customer_id => throw _privateConstructorUsedError;
  String? get total => throw _privateConstructorUsedError;
  String? get order_number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyOrdersResponseCopyWith<MyOrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersResponseCopyWith<$Res> {
  factory $MyOrdersResponseCopyWith(
          MyOrdersResponse value, $Res Function(MyOrdersResponse) then) =
      _$MyOrdersResponseCopyWithImpl<$Res, MyOrdersResponse>;
  @useResult
  $Res call(
      {int? order_id, int? customer_id, String? total, String? order_number});
}

/// @nodoc
class _$MyOrdersResponseCopyWithImpl<$Res, $Val extends MyOrdersResponse>
    implements $MyOrdersResponseCopyWith<$Res> {
  _$MyOrdersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order_id = freezed,
    Object? customer_id = freezed,
    Object? total = freezed,
    Object? order_number = freezed,
  }) {
    return _then(_value.copyWith(
      order_id: freezed == order_id
          ? _value.order_id
          : order_id // ignore: cast_nullable_to_non_nullable
              as int?,
      customer_id: freezed == customer_id
          ? _value.customer_id
          : customer_id // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      order_number: freezed == order_number
          ? _value.order_number
          : order_number // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyOrdersResponseCopyWith<$Res>
    implements $MyOrdersResponseCopyWith<$Res> {
  factory _$$_MyOrdersResponseCopyWith(
          _$_MyOrdersResponse value, $Res Function(_$_MyOrdersResponse) then) =
      __$$_MyOrdersResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? order_id, int? customer_id, String? total, String? order_number});
}

/// @nodoc
class __$$_MyOrdersResponseCopyWithImpl<$Res>
    extends _$MyOrdersResponseCopyWithImpl<$Res, _$_MyOrdersResponse>
    implements _$$_MyOrdersResponseCopyWith<$Res> {
  __$$_MyOrdersResponseCopyWithImpl(
      _$_MyOrdersResponse _value, $Res Function(_$_MyOrdersResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order_id = freezed,
    Object? customer_id = freezed,
    Object? total = freezed,
    Object? order_number = freezed,
  }) {
    return _then(_$_MyOrdersResponse(
      order_id: freezed == order_id
          ? _value.order_id
          : order_id // ignore: cast_nullable_to_non_nullable
              as int?,
      customer_id: freezed == customer_id
          ? _value.customer_id
          : customer_id // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      order_number: freezed == order_number
          ? _value.order_number
          : order_number // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyOrdersResponse implements _MyOrdersResponse {
  _$_MyOrdersResponse(
      {this.order_id, this.customer_id, this.total, this.order_number});

  factory _$_MyOrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MyOrdersResponseFromJson(json);

  @override
  final int? order_id;
  @override
  final int? customer_id;
  @override
  final String? total;
  @override
  final String? order_number;

  @override
  String toString() {
    return 'MyOrdersResponse(order_id: $order_id, customer_id: $customer_id, total: $total, order_number: $order_number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MyOrdersResponse &&
            (identical(other.order_id, order_id) || other.order_id == order_id) &&
            (identical(other.customer_id, customer_id) || other.customer_id == customer_id) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.order_number, order_number) || other.order_number == order_number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, order_id, customer_id, total, order_number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyOrdersResponseCopyWith<_$_MyOrdersResponse> get copyWith =>
      __$$_MyOrdersResponseCopyWithImpl<_$_MyOrdersResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyOrdersResponseToJson(
      this,
    );
  }
}

abstract class _MyOrdersResponse implements MyOrdersResponse {
  factory _MyOrdersResponse(
      {final int? order_id,
      final int? customer_id,
      final String? total,
      final String? order_number}) = _$_MyOrdersResponse;

  factory _MyOrdersResponse.fromJson(Map<String, dynamic> json) =
      _$_MyOrdersResponse.fromJson;

  @override
  int? get order_id;
  @override
  int? get customer_id;
  @override
  String? get total;
  @override
  String? get order_number;
  @override
  @JsonKey(ignore: true)
  _$$_MyOrdersResponseCopyWith<_$_MyOrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
