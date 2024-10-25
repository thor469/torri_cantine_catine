// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_customer_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateCustomerRequest _$UpdateCustomerRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateCustomerRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateCustomerRequest {
  int? get id => throw _privateConstructorUsedError;
  String? get first_name => throw _privateConstructorUsedError;
  String? get last_name => throw _privateConstructorUsedError;
  Billing? get billing => throw _privateConstructorUsedError;
  Shipping? get shipping => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCustomerRequestCopyWith<UpdateCustomerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCustomerRequestCopyWith<$Res> {
  factory $UpdateCustomerRequestCopyWith(UpdateCustomerRequest value,
          $Res Function(UpdateCustomerRequest) then) =
      _$UpdateCustomerRequestCopyWithImpl<$Res, UpdateCustomerRequest>;
  @useResult
  $Res call(
      {int? id,
      String? first_name,
      String? last_name,
      Billing? billing,
      Shipping? shipping});

  $BillingCopyWith<$Res>? get billing;
  $ShippingCopyWith<$Res>? get shipping;
}

/// @nodoc
class _$UpdateCustomerRequestCopyWithImpl<$Res,
        $Val extends UpdateCustomerRequest>
    implements $UpdateCustomerRequestCopyWith<$Res> {
  _$UpdateCustomerRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? billing = freezed,
    Object? shipping = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      billing: freezed == billing
          ? _value.billing
          : billing // ignore: cast_nullable_to_non_nullable
              as Billing?,
      shipping: freezed == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as Shipping?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BillingCopyWith<$Res>? get billing {
    if (_value.billing == null) {
      return null;
    }

    return $BillingCopyWith<$Res>(_value.billing!, (value) {
      return _then(_value.copyWith(billing: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShippingCopyWith<$Res>? get shipping {
    if (_value.shipping == null) {
      return null;
    }

    return $ShippingCopyWith<$Res>(_value.shipping!, (value) {
      return _then(_value.copyWith(shipping: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UpdateCustomerRequestCopyWith<$Res>
    implements $UpdateCustomerRequestCopyWith<$Res> {
  factory _$$_UpdateCustomerRequestCopyWith(_$_UpdateCustomerRequest value,
          $Res Function(_$_UpdateCustomerRequest) then) =
      __$$_UpdateCustomerRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? first_name,
      String? last_name,
      Billing? billing,
      Shipping? shipping});

  @override
  $BillingCopyWith<$Res>? get billing;
  @override
  $ShippingCopyWith<$Res>? get shipping;
}

/// @nodoc
class __$$_UpdateCustomerRequestCopyWithImpl<$Res>
    extends _$UpdateCustomerRequestCopyWithImpl<$Res, _$_UpdateCustomerRequest>
    implements _$$_UpdateCustomerRequestCopyWith<$Res> {
  __$$_UpdateCustomerRequestCopyWithImpl(_$_UpdateCustomerRequest _value,
      $Res Function(_$_UpdateCustomerRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? billing = freezed,
    Object? shipping = freezed,
  }) {
    return _then(_$_UpdateCustomerRequest(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      billing: freezed == billing
          ? _value.billing
          : billing // ignore: cast_nullable_to_non_nullable
              as Billing?,
      shipping: freezed == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as Shipping?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateCustomerRequest extends _UpdateCustomerRequest {
  _$_UpdateCustomerRequest(
      {required this.id,
      required this.first_name,
      required this.last_name,
      this.billing,
      this.shipping})
      : super._();

  factory _$_UpdateCustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateCustomerRequestFromJson(json);

  @override
  final int? id;
  @override
  final String? first_name;
  @override
  final String? last_name;
  @override
  final Billing? billing;
  @override
  final Shipping? shipping;

  @override
  String toString() {
    return 'UpdateCustomerRequest(id: $id, first_name: $first_name, last_name: $last_name, billing: $billing, shipping: $shipping)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateCustomerRequest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.billing, billing) || other.billing == billing) &&
            (identical(other.shipping, shipping) ||
                other.shipping == shipping));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, first_name, last_name, billing, shipping);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCustomerRequestCopyWith<_$_UpdateCustomerRequest> get copyWith =>
      __$$_UpdateCustomerRequestCopyWithImpl<_$_UpdateCustomerRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateCustomerRequestToJson(
      this,
    );
  }
}

abstract class _UpdateCustomerRequest extends UpdateCustomerRequest {
  factory _UpdateCustomerRequest(
      {required final int? id,
      required final String? first_name,
      required final String? last_name,
      final Billing? billing,
      final Shipping? shipping}) = _$_UpdateCustomerRequest;
  _UpdateCustomerRequest._() : super._();

  factory _UpdateCustomerRequest.fromJson(Map<String, dynamic> json) =
      _$_UpdateCustomerRequest.fromJson;

  @override
  int? get id;
  @override
  String? get first_name;
  @override
  String? get last_name;
  @override
  Billing? get billing;
  @override
  Shipping? get shipping;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateCustomerRequestCopyWith<_$_UpdateCustomerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
