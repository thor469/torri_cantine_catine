// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_all_orders_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListAllOrdersRequest _$ListAllOrdersRequestFromJson(Map<String, dynamic> json) {
  return _ListAllOrdersRequest.fromJson(json);
}

/// @nodoc
mixin _$ListAllOrdersRequest {
  int? get customer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListAllOrdersRequestCopyWith<ListAllOrdersRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListAllOrdersRequestCopyWith<$Res> {
  factory $ListAllOrdersRequestCopyWith(ListAllOrdersRequest value,
          $Res Function(ListAllOrdersRequest) then) =
      _$ListAllOrdersRequestCopyWithImpl<$Res, ListAllOrdersRequest>;
  @useResult
  $Res call({int? customer});
}

/// @nodoc
class _$ListAllOrdersRequestCopyWithImpl<$Res,
        $Val extends ListAllOrdersRequest>
    implements $ListAllOrdersRequestCopyWith<$Res> {
  _$ListAllOrdersRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = freezed,
  }) {
    return _then(_value.copyWith(
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListAllOrdersRequestCopyWith<$Res>
    implements $ListAllOrdersRequestCopyWith<$Res> {
  factory _$$_ListAllOrdersRequestCopyWith(_$_ListAllOrdersRequest value,
          $Res Function(_$_ListAllOrdersRequest) then) =
      __$$_ListAllOrdersRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? customer});
}

/// @nodoc
class __$$_ListAllOrdersRequestCopyWithImpl<$Res>
    extends _$ListAllOrdersRequestCopyWithImpl<$Res, _$_ListAllOrdersRequest>
    implements _$$_ListAllOrdersRequestCopyWith<$Res> {
  __$$_ListAllOrdersRequestCopyWithImpl(_$_ListAllOrdersRequest _value,
      $Res Function(_$_ListAllOrdersRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = freezed,
  }) {
    return _then(_$_ListAllOrdersRequest(
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListAllOrdersRequest extends _ListAllOrdersRequest {
  _$_ListAllOrdersRequest({this.customer}) : super._();

  factory _$_ListAllOrdersRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ListAllOrdersRequestFromJson(json);

  @override
  final int? customer;

  @override
  String toString() {
    return 'ListAllOrdersRequest(customer: $customer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListAllOrdersRequest &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, customer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListAllOrdersRequestCopyWith<_$_ListAllOrdersRequest> get copyWith =>
      __$$_ListAllOrdersRequestCopyWithImpl<_$_ListAllOrdersRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListAllOrdersRequestToJson(
      this,
    );
  }
}

abstract class _ListAllOrdersRequest extends ListAllOrdersRequest {
  factory _ListAllOrdersRequest({final int? customer}) =
      _$_ListAllOrdersRequest;
  _ListAllOrdersRequest._() : super._();

  factory _ListAllOrdersRequest.fromJson(Map<String, dynamic> json) =
      _$_ListAllOrdersRequest.fromJson;

  @override
  int? get customer;
  @override
  @JsonKey(ignore: true)
  _$$_ListAllOrdersRequestCopyWith<_$_ListAllOrdersRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
