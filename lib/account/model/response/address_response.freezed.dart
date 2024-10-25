// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'address_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressResponse _$AddressResponseFromJson(Map<String, dynamic> json) {
  return _AddressResponse.fromJson(json);
}

/// @nodoc
mixin _$AddressResponse {
  List<UserAddress> get billing => throw _privateConstructorUsedError;
  List<UserAddress> get shipping => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressResponseCopyWith<AddressResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressResponseCopyWith<$Res> {
  factory $AddressResponseCopyWith(
          AddressResponse value, $Res Function(AddressResponse) then) =
      _$AddressResponseCopyWithImpl<$Res, AddressResponse>;
  @useResult
  $Res call({List<UserAddress> billing, List<UserAddress> shipping});
}

/// @nodoc
class _$AddressResponseCopyWithImpl<$Res, $Val extends AddressResponse>
    implements $AddressResponseCopyWith<$Res> {
  _$AddressResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billing = null,
    Object? shipping = null,
  }) {
    return _then(_value.copyWith(
      billing: null == billing
          ? _value.billing
          : billing // ignore: cast_nullable_to_non_nullable
              as List<UserAddress>,
      shipping: null == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as List<UserAddress>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressResponseCopyWith<$Res>
    implements $AddressResponseCopyWith<$Res> {
  factory _$$_AddressResponseCopyWith(
          _$_AddressResponse value, $Res Function(_$_AddressResponse) then) =
      __$$_AddressResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserAddress> billing, List<UserAddress> shipping});
}

/// @nodoc
class __$$_AddressResponseCopyWithImpl<$Res>
    extends _$AddressResponseCopyWithImpl<$Res, _$_AddressResponse>
    implements _$$_AddressResponseCopyWith<$Res> {
  __$$_AddressResponseCopyWithImpl(
      _$_AddressResponse _value, $Res Function(_$_AddressResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billing = null,
    Object? shipping = null,
  }) {
    return _then(_$_AddressResponse(
      billing: null == billing
          ? _value._billing
          : billing // ignore: cast_nullable_to_non_nullable
              as List<UserAddress>,
      shipping: null == shipping
          ? _value._shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as List<UserAddress>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressResponse implements _AddressResponse {
  _$_AddressResponse(
      {final List<UserAddress> billing = const <UserAddress>[],
      final List<UserAddress> shipping = const <UserAddress>[]})
      : _billing = billing,
        _shipping = shipping;

  factory _$_AddressResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AddressResponseFromJson(json);

  final List<UserAddress> _billing;
  @override
  @JsonKey()
  List<UserAddress> get billing {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_billing);
  }

  final List<UserAddress> _shipping;
  @override
  @JsonKey()
  List<UserAddress> get shipping {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shipping);
  }

  @override
  String toString() {
    return 'AddressResponse(billing: $billing, shipping: $shipping)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressResponse &&
            const DeepCollectionEquality().equals(other._billing, _billing) &&
            const DeepCollectionEquality().equals(other._shipping, _shipping));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_billing),
      const DeepCollectionEquality().hash(_shipping));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressResponseCopyWith<_$_AddressResponse> get copyWith =>
      __$$_AddressResponseCopyWithImpl<_$_AddressResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressResponseToJson(
      this,
    );
  }
}

abstract class _AddressResponse implements AddressResponse {
  factory _AddressResponse(
      {final List<UserAddress> billing,
      final List<UserAddress> shipping}) = _$_AddressResponse;

  factory _AddressResponse.fromJson(Map<String, dynamic> json) =
      _$_AddressResponse.fromJson;

  @override
  List<UserAddress> get billing;
  @override
  List<UserAddress> get shipping;
  @override
  @JsonKey(ignore: true)
  _$$_AddressResponseCopyWith<_$_AddressResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
