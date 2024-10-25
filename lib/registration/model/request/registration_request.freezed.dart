// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'registration_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegistrationRequest _$RegistrationRequestFromJson(Map<String, dynamic> json) {
  return _RegistrationRequest.fromJson(json);
}

/// @nodoc
mixin _$RegistrationRequest {
  String get email => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  Billing? get billing => throw _privateConstructorUsedError;
  Shipping? get shipping => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationRequestCopyWith<RegistrationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationRequestCopyWith<$Res> {
  factory $RegistrationRequestCopyWith(
          RegistrationRequest value, $Res Function(RegistrationRequest) then) =
      _$RegistrationRequestCopyWithImpl<$Res, RegistrationRequest>;
  @useResult
  $Res call(
      {String email,
      String first_name,
      String last_name,
      String username,
      String password,
      Billing? billing,
      Shipping? shipping});

  $BillingCopyWith<$Res>? get billing;
  $ShippingCopyWith<$Res>? get shipping;
}

/// @nodoc
class _$RegistrationRequestCopyWithImpl<$Res, $Val extends RegistrationRequest>
    implements $RegistrationRequestCopyWith<$Res> {
  _$RegistrationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? username = null,
    Object? password = null,
    Object? billing = freezed,
    Object? shipping = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_RegistrationRequestCopyWith<$Res>
    implements $RegistrationRequestCopyWith<$Res> {
  factory _$$_RegistrationRequestCopyWith(_$_RegistrationRequest value,
          $Res Function(_$_RegistrationRequest) then) =
      __$$_RegistrationRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String first_name,
      String last_name,
      String username,
      String password,
      Billing? billing,
      Shipping? shipping});

  @override
  $BillingCopyWith<$Res>? get billing;
  @override
  $ShippingCopyWith<$Res>? get shipping;
}

/// @nodoc
class __$$_RegistrationRequestCopyWithImpl<$Res>
    extends _$RegistrationRequestCopyWithImpl<$Res, _$_RegistrationRequest>
    implements _$$_RegistrationRequestCopyWith<$Res> {
  __$$_RegistrationRequestCopyWithImpl(_$_RegistrationRequest _value,
      $Res Function(_$_RegistrationRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? first_name = null,
    Object? last_name = null,
    Object? username = null,
    Object? password = null,
    Object? billing = freezed,
    Object? shipping = freezed,
  }) {
    return _then(_$_RegistrationRequest(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      first_name: null == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: null == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_RegistrationRequest extends _RegistrationRequest {
  _$_RegistrationRequest(
      {required this.email,
      required this.first_name,
      required this.last_name,
      required this.username,
      required this.password,
      this.billing,
      this.shipping})
      : super._();

  factory _$_RegistrationRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RegistrationRequestFromJson(json);

  @override
  final String email;
  @override
  final String first_name;
  @override
  final String last_name;
  @override
  final String username;
  @override
  final String password;
  @override
  final Billing? billing;
  @override
  final Shipping? shipping;

  @override
  String toString() {
    return 'RegistrationRequest(email: $email, first_name: $first_name, last_name: $last_name, username: $username, password: $password, billing: $billing, shipping: $shipping)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationRequest &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.billing, billing) || other.billing == billing) &&
            (identical(other.shipping, shipping) ||
                other.shipping == shipping));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, first_name, last_name,
      username, password, billing, shipping);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationRequestCopyWith<_$_RegistrationRequest> get copyWith =>
      __$$_RegistrationRequestCopyWithImpl<_$_RegistrationRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegistrationRequestToJson(
      this,
    );
  }
}

abstract class _RegistrationRequest extends RegistrationRequest {
  factory _RegistrationRequest(
      {required final String email,
      required final String first_name,
      required final String last_name,
      required final String username,
      required final String password,
      final Billing? billing,
      final Shipping? shipping}) = _$_RegistrationRequest;
  _RegistrationRequest._() : super._();

  factory _RegistrationRequest.fromJson(Map<String, dynamic> json) =
      _$_RegistrationRequest.fromJson;

  @override
  String get email;
  @override
  String get first_name;
  @override
  String get last_name;
  @override
  String get username;
  @override
  String get password;
  @override
  Billing? get billing;
  @override
  Shipping? get shipping;
  @override
  @JsonKey(ignore: true)
  _$$_RegistrationRequestCopyWith<_$_RegistrationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

Billing _$BillingFromJson(Map<String, dynamic> json) {
  return _Billing.fromJson(json);
}

/// @nodoc
mixin _$Billing {
  String? get first_name => throw _privateConstructorUsedError;
  String? get last_name => throw _privateConstructorUsedError;
  String? get address_1 => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  String? get address_2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get postcode => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillingCopyWith<Billing> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingCopyWith<$Res> {
  factory $BillingCopyWith(Billing value, $Res Function(Billing) then) =
      _$BillingCopyWithImpl<$Res, Billing>;
  @useResult
  $Res call(
      {String? first_name,
      String? last_name,
      String? address_1,
      String? company,
      String? address_2,
      String? city,
      String? state,
      String? postcode,
      String? country,
      String? email,
      String? phone});
}

/// @nodoc
class _$BillingCopyWithImpl<$Res, $Val extends Billing>
    implements $BillingCopyWith<$Res> {
  _$BillingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? address_1 = freezed,
    Object? company = freezed,
    Object? address_2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      address_1: freezed == address_1
          ? _value.address_1
          : address_1 // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      address_2: freezed == address_2
          ? _value.address_2
          : address_2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BillingCopyWith<$Res> implements $BillingCopyWith<$Res> {
  factory _$$_BillingCopyWith(
          _$_Billing value, $Res Function(_$_Billing) then) =
      __$$_BillingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? first_name,
      String? last_name,
      String? address_1,
      String? company,
      String? address_2,
      String? city,
      String? state,
      String? postcode,
      String? country,
      String? email,
      String? phone});
}

/// @nodoc
class __$$_BillingCopyWithImpl<$Res>
    extends _$BillingCopyWithImpl<$Res, _$_Billing>
    implements _$$_BillingCopyWith<$Res> {
  __$$_BillingCopyWithImpl(_$_Billing _value, $Res Function(_$_Billing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? address_1 = freezed,
    Object? company = freezed,
    Object? address_2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$_Billing(
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      address_1: freezed == address_1
          ? _value.address_1
          : address_1 // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      address_2: freezed == address_2
          ? _value.address_2
          : address_2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      postcode: freezed == postcode
          ? _value.postcode
          : postcode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Billing extends _Billing {
  _$_Billing(
      {this.first_name,
      this.last_name,
      this.address_1,
      this.company,
      this.address_2,
      this.city,
      this.state,
      this.postcode,
      this.country,
      this.email,
      this.phone})
      : super._();

  factory _$_Billing.fromJson(Map<String, dynamic> json) =>
      _$$_BillingFromJson(json);

  @override
  final String? first_name;
  @override
  final String? last_name;
  @override
  final String? address_1;
  @override
  final String? company;
  @override
  final String? address_2;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? postcode;
  @override
  final String? country;
  @override
  final String? email;
  @override
  final String? phone;

  @override
  String toString() {
    return 'Billing(first_name: $first_name, last_name: $last_name, address_1: $address_1, company: $company, address_2: $address_2, city: $city, state: $state, postcode: $postcode, country: $country, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Billing &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.address_1, address_1) ||
                other.address_1 == address_1) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.address_2, address_2) ||
                other.address_2 == address_2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, first_name, last_name, address_1,
      company, address_2, city, state, postcode, country, email, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BillingCopyWith<_$_Billing> get copyWith =>
      __$$_BillingCopyWithImpl<_$_Billing>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BillingToJson(
      this,
    );
  }
}

abstract class _Billing extends Billing {
  factory _Billing(
      {final String? first_name,
      final String? last_name,
      final String? address_1,
      final String? company,
      final String? address_2,
      final String? city,
      final String? state,
      final String? postcode,
      final String? country,
      final String? email,
      final String? phone}) = _$_Billing;
  _Billing._() : super._();

  factory _Billing.fromJson(Map<String, dynamic> json) = _$_Billing.fromJson;

  @override
  String? get first_name;
  @override
  String? get last_name;
  @override
  String? get address_1;
  @override
  String? get company;
  @override
  String? get address_2;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get postcode;
  @override
  String? get country;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$_BillingCopyWith<_$_Billing> get copyWith =>
      throw _privateConstructorUsedError;
}

Shipping _$ShippingFromJson(Map<String, dynamic> json) {
  return _Shipping.fromJson(json);
}

/// @nodoc
mixin _$Shipping {
  String? get first_name => throw _privateConstructorUsedError;
  String? get last_name => throw _privateConstructorUsedError;
  String? get address_1 => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  String? get address_2 => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get postcode => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingCopyWith<Shipping> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingCopyWith<$Res> {
  factory $ShippingCopyWith(Shipping value, $Res Function(Shipping) then) =
      _$ShippingCopyWithImpl<$Res, Shipping>;
  @useResult
  $Res call(
      {String? first_name,
      String? last_name,
      String? address_1,
      String? company,
      String? address_2,
      String city,
      String state,
      String postcode,
      String country});
}

/// @nodoc
class _$ShippingCopyWithImpl<$Res, $Val extends Shipping>
    implements $ShippingCopyWith<$Res> {
  _$ShippingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? address_1 = freezed,
    Object? company = freezed,
    Object? address_2 = freezed,
    Object? city = null,
    Object? state = null,
    Object? postcode = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      address_1: freezed == address_1
          ? _value.address_1
          : address_1 // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      address_2: freezed == address_2
          ? _value.address_2
          : address_2 // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShippingCopyWith<$Res> implements $ShippingCopyWith<$Res> {
  factory _$$_ShippingCopyWith(
          _$_Shipping value, $Res Function(_$_Shipping) then) =
      __$$_ShippingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? first_name,
      String? last_name,
      String? address_1,
      String? company,
      String? address_2,
      String city,
      String state,
      String postcode,
      String country});
}

/// @nodoc
class __$$_ShippingCopyWithImpl<$Res>
    extends _$ShippingCopyWithImpl<$Res, _$_Shipping>
    implements _$$_ShippingCopyWith<$Res> {
  __$$_ShippingCopyWithImpl(
      _$_Shipping _value, $Res Function(_$_Shipping) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? address_1 = freezed,
    Object? company = freezed,
    Object? address_2 = freezed,
    Object? city = null,
    Object? state = null,
    Object? postcode = null,
    Object? country = null,
  }) {
    return _then(_$_Shipping(
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      address_1: freezed == address_1
          ? _value.address_1
          : address_1 // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      address_2: freezed == address_2
          ? _value.address_2
          : address_2 // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Shipping extends _Shipping {
  _$_Shipping(
      {this.first_name,
      this.last_name,
      this.address_1,
      this.company,
      this.address_2,
      required this.city,
      required this.state,
      required this.postcode,
      required this.country})
      : super._();

  factory _$_Shipping.fromJson(Map<String, dynamic> json) =>
      _$$_ShippingFromJson(json);

  @override
  final String? first_name;
  @override
  final String? last_name;
  @override
  final String? address_1;
  @override
  final String? company;
  @override
  final String? address_2;
  @override
  final String city;
  @override
  final String state;
  @override
  final String postcode;
  @override
  final String country;

  @override
  String toString() {
    return 'Shipping(first_name: $first_name, last_name: $last_name, address_1: $address_1, company: $company, address_2: $address_2, city: $city, state: $state, postcode: $postcode, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Shipping &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.address_1, address_1) ||
                other.address_1 == address_1) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.address_2, address_2) ||
                other.address_2 == address_2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.postcode, postcode) ||
                other.postcode == postcode) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, first_name, last_name, address_1,
      company, address_2, city, state, postcode, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShippingCopyWith<_$_Shipping> get copyWith =>
      __$$_ShippingCopyWithImpl<_$_Shipping>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShippingToJson(
      this,
    );
  }
}

abstract class _Shipping extends Shipping {
  factory _Shipping(
      {final String? first_name,
      final String? last_name,
      final String? address_1,
      final String? company,
      final String? address_2,
      required final String city,
      required final String state,
      required final String postcode,
      required final String country}) = _$_Shipping;
  _Shipping._() : super._();

  factory _Shipping.fromJson(Map<String, dynamic> json) = _$_Shipping.fromJson;

  @override
  String? get first_name;
  @override
  String? get last_name;
  @override
  String? get address_1;
  @override
  String? get company;
  @override
  String? get address_2;
  @override
  String get city;
  @override
  String get state;
  @override
  String get postcode;
  @override
  String get country;
  @override
  @JsonKey(ignore: true)
  _$$_ShippingCopyWith<_$_Shipping> get copyWith =>
      throw _privateConstructorUsedError;
}
