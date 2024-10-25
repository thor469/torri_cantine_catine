// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_address_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddAddressResponse _$AddAddressResponseFromJson(Map<String, dynamic> json) {
  return _AddAddressResponse.fromJson(json);
}

/// @nodoc
mixin _$AddAddressResponse {
  List<UserAddress> get billing => throw _privateConstructorUsedError;
  List<UserAddress> get shipping => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddAddressResponseCopyWith<AddAddressResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAddressResponseCopyWith<$Res> {
  factory $AddAddressResponseCopyWith(
          AddAddressResponse value, $Res Function(AddAddressResponse) then) =
      _$AddAddressResponseCopyWithImpl<$Res, AddAddressResponse>;
  @useResult
  $Res call({List<UserAddress> billing, List<UserAddress> shipping});
}

/// @nodoc
class _$AddAddressResponseCopyWithImpl<$Res, $Val extends AddAddressResponse>
    implements $AddAddressResponseCopyWith<$Res> {
  _$AddAddressResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_AddAddressResponseCopyWith<$Res>
    implements $AddAddressResponseCopyWith<$Res> {
  factory _$$_AddAddressResponseCopyWith(_$_AddAddressResponse value,
          $Res Function(_$_AddAddressResponse) then) =
      __$$_AddAddressResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserAddress> billing, List<UserAddress> shipping});
}

/// @nodoc
class __$$_AddAddressResponseCopyWithImpl<$Res>
    extends _$AddAddressResponseCopyWithImpl<$Res, _$_AddAddressResponse>
    implements _$$_AddAddressResponseCopyWith<$Res> {
  __$$_AddAddressResponseCopyWithImpl(
      _$_AddAddressResponse _value, $Res Function(_$_AddAddressResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billing = null,
    Object? shipping = null,
  }) {
    return _then(_$_AddAddressResponse(
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
class _$_AddAddressResponse implements _AddAddressResponse {
  _$_AddAddressResponse(
      {final List<UserAddress> billing = const <UserAddress>[],
      final List<UserAddress> shipping = const <UserAddress>[]})
      : _billing = billing,
        _shipping = shipping;

  factory _$_AddAddressResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AddAddressResponseFromJson(json);

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
    return 'AddAddressResponse(billing: $billing, shipping: $shipping)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddAddressResponse &&
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
  _$$_AddAddressResponseCopyWith<_$_AddAddressResponse> get copyWith =>
      __$$_AddAddressResponseCopyWithImpl<_$_AddAddressResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddAddressResponseToJson(
      this,
    );
  }
}

abstract class _AddAddressResponse implements AddAddressResponse {
  factory _AddAddressResponse(
      {final List<UserAddress> billing,
      final List<UserAddress> shipping}) = _$_AddAddressResponse;

  factory _AddAddressResponse.fromJson(Map<String, dynamic> json) =
      _$_AddAddressResponse.fromJson;

  @override
  List<UserAddress> get billing;
  @override
  List<UserAddress> get shipping;
  @override
  @JsonKey(ignore: true)
  _$$_AddAddressResponseCopyWith<_$_AddAddressResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

UserAddress _$UserAddressFromJson(Map<String, dynamic> json) {
  return _UserAddress.fromJson(json);
}

/// @nodoc
mixin _$UserAddress {
  String get id => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  String get address_1 => throw _privateConstructorUsedError;
  String get address_2 => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get postcode => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  bool get is_default => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAddressCopyWith<UserAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressCopyWith<$Res> {
  factory $UserAddressCopyWith(
          UserAddress value, $Res Function(UserAddress) then) =
      _$UserAddressCopyWithImpl<$Res, UserAddress>;
  @useResult
  $Res call(
      {String id,
      String first_name,
      String last_name,
      String company,
      String address_1,
      String address_2,
      String city,
      String state,
      String postcode,
      String country,
      String email,
      String phone,
      String notes,
      bool is_default});
}

/// @nodoc
class _$UserAddressCopyWithImpl<$Res, $Val extends UserAddress>
    implements $UserAddressCopyWith<$Res> {
  _$UserAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? company = null,
    Object? address_1 = null,
    Object? address_2 = null,
    Object? city = null,
    Object? state = null,
    Object? postcode = null,
    Object? country = null,
    Object? email = null,
    Object? phone = null,
    Object? notes = null,
    Object? is_default = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      address_1: null == address_1
          ? _value.address_1
          : address_1 // ignore: cast_nullable_to_non_nullable
              as String,
      address_2: null == address_2
          ? _value.address_2
          : address_2 // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      is_default: null == is_default
          ? _value.is_default
          : is_default // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserAddressCopyWith<$Res>
    implements $UserAddressCopyWith<$Res> {
  factory _$$_UserAddressCopyWith(
          _$_UserAddress value, $Res Function(_$_UserAddress) then) =
      __$$_UserAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String first_name,
      String last_name,
      String company,
      String address_1,
      String address_2,
      String city,
      String state,
      String postcode,
      String country,
      String email,
      String phone,
      String notes,
      bool is_default});
}

/// @nodoc
class __$$_UserAddressCopyWithImpl<$Res>
    extends _$UserAddressCopyWithImpl<$Res, _$_UserAddress>
    implements _$$_UserAddressCopyWith<$Res> {
  __$$_UserAddressCopyWithImpl(
      _$_UserAddress _value, $Res Function(_$_UserAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? company = null,
    Object? address_1 = null,
    Object? address_2 = null,
    Object? city = null,
    Object? state = null,
    Object? postcode = null,
    Object? country = null,
    Object? email = null,
    Object? phone = null,
    Object? notes = null,
    Object? is_default = null,
  }) {
    return _then(_$_UserAddress(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      address_1: null == address_1
          ? _value.address_1
          : address_1 // ignore: cast_nullable_to_non_nullable
              as String,
      address_2: null == address_2
          ? _value.address_2
          : address_2 // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      postcode: null == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      is_default: null == is_default
          ? _value.is_default
          : is_default // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserAddress implements _UserAddress {
  _$_UserAddress(
      {required this.id,
      required this.first_name,
      required this.last_name,
      required this.company,
      required this.address_1,
      required this.address_2,
      required this.city,
      required this.state,
      required this.postcode,
      required this.country,
      required this.email,
      required this.phone,
      required this.notes,
      required this.is_default});

  factory _$_UserAddress.fromJson(Map<String, dynamic> json) =>
      _$$_UserAddressFromJson(json);

  @override
  final String id;
  @override
  final String first_name;
  @override
  final String last_name;
  @override
  final String company;
  @override
  final String address_1;
  @override
  final String address_2;
  @override
  final String city;
  @override
  final String state;
  @override
  final String postcode;
  @override
  final String country;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String notes;
  @override
  final bool is_default;

  @override
  String toString() {
    return 'UserAddress(id: $id, first_name: $first_name, last_name: $last_name, company: $company, address_1: $address_1, address_2: $address_2, city: $city, state: $state, postcode: $postcode, country: $country, email: $email, phone: $phone, notes: $notes, is_default: $is_default)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAddress &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.address_1, address_1) ||
                other.address_1 == address_1) &&
            (identical(other.address_2, address_2) ||
                other.address_2 == address_2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.is_default, is_default) ||
                other.is_default == is_default));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      first_name,
      last_name,
      company,
      address_1,
      address_2,
      city,
      state,
      postcode,
      country,
      email,
      phone,
      notes,
      is_default);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserAddressCopyWith<_$_UserAddress> get copyWith =>
      __$$_UserAddressCopyWithImpl<_$_UserAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserAddressToJson(
      this,
    );
  }
}

abstract class _UserAddress implements UserAddress {
  factory _UserAddress(
      {required final String id,
      required final String first_name,
      required final String last_name,
      required final String company,
      required final String address_1,
      required final String address_2,
      required final String city,
      required final String state,
      required final String postcode,
      required final String country,
      required final String email,
      required final String phone,
      required final String notes,
      required final bool is_default}) = _$_UserAddress;

  factory _UserAddress.fromJson(Map<String, dynamic> json) =
      _$_UserAddress.fromJson;

  @override
  String get id;
  @override
  String get first_name;
  @override
  String get last_name;
  @override
  String get company;
  @override
  String get address_1;
  @override
  String get address_2;
  @override
  String get city;
  @override
  String get state;
  @override
  String get postcode;
  @override
  String get country;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get notes;
  @override
  bool get is_default;
  @override
  @JsonKey(ignore: true)
  _$$_UserAddressCopyWith<_$_UserAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
