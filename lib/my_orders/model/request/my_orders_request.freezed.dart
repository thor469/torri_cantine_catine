// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_orders_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyOrdersRequest _$MyOrdersRequestFromJson(Map<String, dynamic> json) {
  return _MyOrdersRequest.fromJson(json);
}

/// @nodoc
mixin _$MyOrdersRequest {
  Billing? get billing_address => throw _privateConstructorUsedError;
  Shipping? get shipping_address => throw _privateConstructorUsedError;
  String? get customer_note => throw _privateConstructorUsedError;
  bool? get create_account => throw _privateConstructorUsedError;
  String? get payment_method => throw _privateConstructorUsedError;
  List<Map<String, dynamic>>? get payment_data =>
      throw _privateConstructorUsedError;
  Map<dynamic, dynamic>? get extensions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyOrdersRequestCopyWith<MyOrdersRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersRequestCopyWith<$Res> {
  factory $MyOrdersRequestCopyWith(
          MyOrdersRequest value, $Res Function(MyOrdersRequest) then) =
      _$MyOrdersRequestCopyWithImpl<$Res, MyOrdersRequest>;
  @useResult
  $Res call(
      {Billing? billing_address,
      Shipping? shipping_address,
      String? customer_note,
      bool? create_account,
      String? payment_method,
      List<Map<String, dynamic>>? payment_data,
      Map<dynamic, dynamic>? extensions});

  $BillingCopyWith<$Res>? get billing_address;
  $ShippingCopyWith<$Res>? get shipping_address;
}

/// @nodoc
class _$MyOrdersRequestCopyWithImpl<$Res, $Val extends MyOrdersRequest>
    implements $MyOrdersRequestCopyWith<$Res> {
  _$MyOrdersRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billing_address = freezed,
    Object? shipping_address = freezed,
    Object? customer_note = freezed,
    Object? create_account = freezed,
    Object? payment_method = freezed,
    Object? payment_data = freezed,
    Object? extensions = freezed,
  }) {
    return _then(_value.copyWith(
      billing_address: freezed == billing_address
          ? _value.billing_address
          : billing_address // ignore: cast_nullable_to_non_nullable
              as Billing?,
      shipping_address: freezed == shipping_address
          ? _value.shipping_address
          : shipping_address // ignore: cast_nullable_to_non_nullable
              as Shipping?,
      customer_note: freezed == customer_note
          ? _value.customer_note
          : customer_note // ignore: cast_nullable_to_non_nullable
              as String?,
      create_account: freezed == create_account
          ? _value.create_account
          : create_account // ignore: cast_nullable_to_non_nullable
              as bool?,
      payment_method: freezed == payment_method
          ? _value.payment_method
          : payment_method // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_data: freezed == payment_data
          ? _value.payment_data
          : payment_data // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      extensions: freezed == extensions
          ? _value.extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BillingCopyWith<$Res>? get billing_address {
    if (_value.billing_address == null) {
      return null;
    }

    return $BillingCopyWith<$Res>(_value.billing_address!, (value) {
      return _then(_value.copyWith(billing_address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShippingCopyWith<$Res>? get shipping_address {
    if (_value.shipping_address == null) {
      return null;
    }

    return $ShippingCopyWith<$Res>(_value.shipping_address!, (value) {
      return _then(_value.copyWith(shipping_address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MyOrdersRequestCopyWith<$Res>
    implements $MyOrdersRequestCopyWith<$Res> {
  factory _$$_MyOrdersRequestCopyWith(
          _$_MyOrdersRequest value, $Res Function(_$_MyOrdersRequest) then) =
      __$$_MyOrdersRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Billing? billing_address,
      Shipping? shipping_address,
      String? customer_note,
      bool? create_account,
      String? payment_method,
      List<Map<String, dynamic>>? payment_data,
      Map<dynamic, dynamic>? extensions});

  @override
  $BillingCopyWith<$Res>? get billing_address;
  @override
  $ShippingCopyWith<$Res>? get shipping_address;
}

/// @nodoc
class __$$_MyOrdersRequestCopyWithImpl<$Res>
    extends _$MyOrdersRequestCopyWithImpl<$Res, _$_MyOrdersRequest>
    implements _$$_MyOrdersRequestCopyWith<$Res> {
  __$$_MyOrdersRequestCopyWithImpl(
      _$_MyOrdersRequest _value, $Res Function(_$_MyOrdersRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billing_address = freezed,
    Object? shipping_address = freezed,
    Object? customer_note = freezed,
    Object? create_account = freezed,
    Object? payment_method = freezed,
    Object? payment_data = freezed,
    Object? extensions = freezed,
  }) {
    return _then(_$_MyOrdersRequest(
      billing_address: freezed == billing_address
          ? _value.billing_address
          : billing_address // ignore: cast_nullable_to_non_nullable
              as Billing?,
      shipping_address: freezed == shipping_address
          ? _value.shipping_address
          : shipping_address // ignore: cast_nullable_to_non_nullable
              as Shipping?,
      customer_note: freezed == customer_note
          ? _value.customer_note
          : customer_note // ignore: cast_nullable_to_non_nullable
              as String?,
      create_account: freezed == create_account
          ? _value.create_account
          : create_account // ignore: cast_nullable_to_non_nullable
              as bool?,
      payment_method: freezed == payment_method
          ? _value.payment_method
          : payment_method // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_data: freezed == payment_data
          ? _value._payment_data
          : payment_data // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>?,
      extensions: freezed == extensions
          ? _value._extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyOrdersRequest extends _MyOrdersRequest {
  _$_MyOrdersRequest(
      {this.billing_address,
      this.shipping_address,
      this.customer_note,
      this.create_account,
      this.payment_method,
      final List<Map<String, dynamic>>? payment_data,
      final Map<dynamic, dynamic>? extensions})
      : _payment_data = payment_data,
        _extensions = extensions,
        super._();

  factory _$_MyOrdersRequest.fromJson(Map<String, dynamic> json) =>
      _$$_MyOrdersRequestFromJson(json);

  @override
  final Billing? billing_address;
  @override
  final Shipping? shipping_address;
  @override
  final String? customer_note;
  @override
  final bool? create_account;
  @override
  final String? payment_method;
  final List<Map<String, dynamic>>? _payment_data;
  @override
  List<Map<String, dynamic>>? get payment_data {
    final value = _payment_data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<dynamic, dynamic>? _extensions;
  @override
  Map<dynamic, dynamic>? get extensions {
    final value = _extensions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MyOrdersRequest(billing_address: $billing_address, shipping_address: $shipping_address, customer_note: $customer_note, create_account: $create_account, payment_method: $payment_method, payment_data: $payment_data, extensions: $extensions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyOrdersRequest &&
            (identical(other.billing_address, billing_address) ||
                other.billing_address == billing_address) &&
            (identical(other.shipping_address, shipping_address) ||
                other.shipping_address == shipping_address) &&
            (identical(other.customer_note, customer_note) ||
                other.customer_note == customer_note) &&
            (identical(other.create_account, create_account) ||
                other.create_account == create_account) &&
            (identical(other.payment_method, payment_method) ||
                other.payment_method == payment_method) &&
            const DeepCollectionEquality()
                .equals(other._payment_data, _payment_data) &&
            const DeepCollectionEquality()
                .equals(other._extensions, _extensions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      billing_address,
      shipping_address,
      customer_note,
      create_account,
      payment_method,
      const DeepCollectionEquality().hash(_payment_data),
      const DeepCollectionEquality().hash(_extensions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyOrdersRequestCopyWith<_$_MyOrdersRequest> get copyWith =>
      __$$_MyOrdersRequestCopyWithImpl<_$_MyOrdersRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyOrdersRequestToJson(
      this,
    );
  }
}

abstract class _MyOrdersRequest extends MyOrdersRequest {
  factory _MyOrdersRequest(
      {final Billing? billing_address,
      final Shipping? shipping_address,
      final String? customer_note,
      final bool? create_account,
      final String? payment_method,
      final List<Map<String, dynamic>>? payment_data,
      final Map<dynamic, dynamic>? extensions}) = _$_MyOrdersRequest;
  _MyOrdersRequest._() : super._();

  factory _MyOrdersRequest.fromJson(Map<String, dynamic> json) =
      _$_MyOrdersRequest.fromJson;

  @override
  Billing? get billing_address;
  @override
  Shipping? get shipping_address;
  @override
  String? get customer_note;
  @override
  bool? get create_account;
  @override
  String? get payment_method;
  @override
  List<Map<String, dynamic>>? get payment_data;
  @override
  Map<dynamic, dynamic>? get extensions;
  @override
  @JsonKey(ignore: true)
  _$$_MyOrdersRequestCopyWith<_$_MyOrdersRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

Billing _$BillingFromJson(Map<String, dynamic> json) {
  return _Billing.fromJson(json);
}

/// @nodoc
mixin _$Billing {
  String? get first_name => throw _privateConstructorUsedError;
  String? get last_name => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  String? get address_1 => throw _privateConstructorUsedError;
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
      String? company,
      String? address_1,
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
    Object? company = freezed,
    Object? address_1 = freezed,
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
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      address_1: freezed == address_1
          ? _value.address_1
          : address_1 // ignore: cast_nullable_to_non_nullable
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
      String? company,
      String? address_1,
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
    Object? company = freezed,
    Object? address_1 = freezed,
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
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      address_1: freezed == address_1
          ? _value.address_1
          : address_1 // ignore: cast_nullable_to_non_nullable
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
class _$_Billing implements _Billing {
  _$_Billing(
      {this.first_name,
      this.last_name,
      this.company,
      this.address_1,
      this.address_2,
      this.city,
      this.state,
      this.postcode,
      this.country,
      this.email,
      this.phone});

  factory _$_Billing.fromJson(Map<String, dynamic> json) =>
      _$$_BillingFromJson(json);

  @override
  final String? first_name;
  @override
  final String? last_name;
  @override
  final String? company;
  @override
  final String? address_1;
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
    return 'Billing(first_name: $first_name, last_name: $last_name, company: $company, address_1: $address_1, address_2: $address_2, city: $city, state: $state, postcode: $postcode, country: $country, email: $email, phone: $phone)';
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
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, first_name, last_name, company,
      address_1, address_2, city, state, postcode, country, email, phone);

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

abstract class _Billing implements Billing {
  factory _Billing(
      {final String? first_name,
      final String? last_name,
      final String? company,
      final String? address_1,
      final String? address_2,
      final String? city,
      final String? state,
      final String? postcode,
      final String? country,
      final String? email,
      final String? phone}) = _$_Billing;

  factory _Billing.fromJson(Map<String, dynamic> json) = _$_Billing.fromJson;

  @override
  String? get first_name;
  @override
  String? get last_name;
  @override
  String? get company;
  @override
  String? get address_1;
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
  String? get company => throw _privateConstructorUsedError;
  String? get address_1 => throw _privateConstructorUsedError;
  String? get address_2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get postcode => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

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
      String? company,
      String? address_1,
      String? address_2,
      String? city,
      String? state,
      String? postcode,
      String? country,
      String? phone});
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
    Object? company = freezed,
    Object? address_1 = freezed,
    Object? address_2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
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
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      address_1: freezed == address_1
          ? _value.address_1
          : address_1 // ignore: cast_nullable_to_non_nullable
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
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
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
      String? company,
      String? address_1,
      String? address_2,
      String? city,
      String? state,
      String? postcode,
      String? country,
      String? phone});
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
    Object? company = freezed,
    Object? address_1 = freezed,
    Object? address_2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
    Object? phone = freezed,
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
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      address_1: freezed == address_1
          ? _value.address_1
          : address_1 // ignore: cast_nullable_to_non_nullable
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
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Shipping implements _Shipping {
  _$_Shipping(
      {this.first_name,
      this.last_name,
      this.company,
      this.address_1,
      this.address_2,
      this.city,
      this.state,
      this.postcode,
      this.country,
      this.phone});

  factory _$_Shipping.fromJson(Map<String, dynamic> json) =>
      _$$_ShippingFromJson(json);

  @override
  final String? first_name;
  @override
  final String? last_name;
  @override
  final String? company;
  @override
  final String? address_1;
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
  final String? phone;

  @override
  String toString() {
    return 'Shipping(first_name: $first_name, last_name: $last_name, company: $company, address_1: $address_1, address_2: $address_2, city: $city, state: $state, postcode: $postcode, country: $country, phone: $phone)';
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
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, first_name, last_name, company,
      address_1, address_2, city, state, postcode, country, phone);

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

abstract class _Shipping implements Shipping {
  factory _Shipping(
      {final String? first_name,
      final String? last_name,
      final String? company,
      final String? address_1,
      final String? address_2,
      final String? city,
      final String? state,
      final String? postcode,
      final String? country,
      final String? phone}) = _$_Shipping;

  factory _Shipping.fromJson(Map<String, dynamic> json) = _$_Shipping.fromJson;

  @override
  String? get first_name;
  @override
  String? get last_name;
  @override
  String? get company;
  @override
  String? get address_1;
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
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$_ShippingCopyWith<_$_Shipping> get copyWith =>
      throw _privateConstructorUsedError;
}
