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
  String? get status => throw _privateConstructorUsedError;
  String? get order_key => throw _privateConstructorUsedError;
  String? get order_number => throw _privateConstructorUsedError;
  String? get customer_note => throw _privateConstructorUsedError;
  int? get customer_id => throw _privateConstructorUsedError;
  AddressResponse? get billing_address => throw _privateConstructorUsedError;
  AddressResponse? get shipping_address => throw _privateConstructorUsedError;
  String? get payment_method => throw _privateConstructorUsedError;
  PaymentResult? get payment_result => throw _privateConstructorUsedError;
  List<dynamic>? get additional_fields => throw _privateConstructorUsedError;
  Map<String, dynamic>? get extensions => throw _privateConstructorUsedError;

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
      {int? order_id,
      String? status,
      String? order_key,
      String? order_number,
      String? customer_note,
      int? customer_id,
      AddressResponse? billing_address,
      AddressResponse? shipping_address,
      String? payment_method,
      PaymentResult? payment_result,
      List<dynamic>? additional_fields,
      Map<String, dynamic>? extensions});

  $AddressResponseCopyWith<$Res>? get billing_address;
  $AddressResponseCopyWith<$Res>? get shipping_address;
  $PaymentResultCopyWith<$Res>? get payment_result;
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
    Object? status = freezed,
    Object? order_key = freezed,
    Object? order_number = freezed,
    Object? customer_note = freezed,
    Object? customer_id = freezed,
    Object? billing_address = freezed,
    Object? shipping_address = freezed,
    Object? payment_method = freezed,
    Object? payment_result = freezed,
    Object? additional_fields = freezed,
    Object? extensions = freezed,
  }) {
    return _then(_value.copyWith(
      order_id: freezed == order_id
          ? _value.order_id
          : order_id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      order_key: freezed == order_key
          ? _value.order_key
          : order_key // ignore: cast_nullable_to_non_nullable
              as String?,
      order_number: freezed == order_number
          ? _value.order_number
          : order_number // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_note: freezed == customer_note
          ? _value.customer_note
          : customer_note // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_id: freezed == customer_id
          ? _value.customer_id
          : customer_id // ignore: cast_nullable_to_non_nullable
              as int?,
      billing_address: freezed == billing_address
          ? _value.billing_address
          : billing_address // ignore: cast_nullable_to_non_nullable
              as AddressResponse?,
      shipping_address: freezed == shipping_address
          ? _value.shipping_address
          : shipping_address // ignore: cast_nullable_to_non_nullable
              as AddressResponse?,
      payment_method: freezed == payment_method
          ? _value.payment_method
          : payment_method // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_result: freezed == payment_result
          ? _value.payment_result
          : payment_result // ignore: cast_nullable_to_non_nullable
              as PaymentResult?,
      additional_fields: freezed == additional_fields
          ? _value.additional_fields
          : additional_fields // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      extensions: freezed == extensions
          ? _value.extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressResponseCopyWith<$Res>? get billing_address {
    if (_value.billing_address == null) {
      return null;
    }

    return $AddressResponseCopyWith<$Res>(_value.billing_address!, (value) {
      return _then(_value.copyWith(billing_address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressResponseCopyWith<$Res>? get shipping_address {
    if (_value.shipping_address == null) {
      return null;
    }

    return $AddressResponseCopyWith<$Res>(_value.shipping_address!, (value) {
      return _then(_value.copyWith(shipping_address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentResultCopyWith<$Res>? get payment_result {
    if (_value.payment_result == null) {
      return null;
    }

    return $PaymentResultCopyWith<$Res>(_value.payment_result!, (value) {
      return _then(_value.copyWith(payment_result: value) as $Val);
    });
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
      {int? order_id,
      String? status,
      String? order_key,
      String? order_number,
      String? customer_note,
      int? customer_id,
      AddressResponse? billing_address,
      AddressResponse? shipping_address,
      String? payment_method,
      PaymentResult? payment_result,
      List<dynamic>? additional_fields,
      Map<String, dynamic>? extensions});

  @override
  $AddressResponseCopyWith<$Res>? get billing_address;
  @override
  $AddressResponseCopyWith<$Res>? get shipping_address;
  @override
  $PaymentResultCopyWith<$Res>? get payment_result;
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
    Object? status = freezed,
    Object? order_key = freezed,
    Object? order_number = freezed,
    Object? customer_note = freezed,
    Object? customer_id = freezed,
    Object? billing_address = freezed,
    Object? shipping_address = freezed,
    Object? payment_method = freezed,
    Object? payment_result = freezed,
    Object? additional_fields = freezed,
    Object? extensions = freezed,
  }) {
    return _then(_$_MyOrdersResponse(
      order_id: freezed == order_id
          ? _value.order_id
          : order_id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      order_key: freezed == order_key
          ? _value.order_key
          : order_key // ignore: cast_nullable_to_non_nullable
              as String?,
      order_number: freezed == order_number
          ? _value.order_number
          : order_number // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_note: freezed == customer_note
          ? _value.customer_note
          : customer_note // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_id: freezed == customer_id
          ? _value.customer_id
          : customer_id // ignore: cast_nullable_to_non_nullable
              as int?,
      billing_address: freezed == billing_address
          ? _value.billing_address
          : billing_address // ignore: cast_nullable_to_non_nullable
              as AddressResponse?,
      shipping_address: freezed == shipping_address
          ? _value.shipping_address
          : shipping_address // ignore: cast_nullable_to_non_nullable
              as AddressResponse?,
      payment_method: freezed == payment_method
          ? _value.payment_method
          : payment_method // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_result: freezed == payment_result
          ? _value.payment_result
          : payment_result // ignore: cast_nullable_to_non_nullable
              as PaymentResult?,
      additional_fields: freezed == additional_fields
          ? _value._additional_fields
          : additional_fields // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      extensions: freezed == extensions
          ? _value._extensions
          : extensions // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyOrdersResponse implements _MyOrdersResponse {
  _$_MyOrdersResponse(
      {this.order_id,
      this.status,
      this.order_key,
      this.order_number,
      this.customer_note,
      this.customer_id,
      this.billing_address,
      this.shipping_address,
      this.payment_method,
      this.payment_result,
      final List<dynamic>? additional_fields,
      final Map<String, dynamic>? extensions})
      : _additional_fields = additional_fields,
        _extensions = extensions;

  factory _$_MyOrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MyOrdersResponseFromJson(json);

  @override
  final int? order_id;
  @override
  final String? status;
  @override
  final String? order_key;
  @override
  final String? order_number;
  @override
  final String? customer_note;
  @override
  final int? customer_id;
  @override
  final AddressResponse? billing_address;
  @override
  final AddressResponse? shipping_address;
  @override
  final String? payment_method;
  @override
  final PaymentResult? payment_result;
  final List<dynamic>? _additional_fields;
  @override
  List<dynamic>? get additional_fields {
    final value = _additional_fields;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _extensions;
  @override
  Map<String, dynamic>? get extensions {
    final value = _extensions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MyOrdersResponse(order_id: $order_id, status: $status, order_key: $order_key, order_number: $order_number, customer_note: $customer_note, customer_id: $customer_id, billing_address: $billing_address, shipping_address: $shipping_address, payment_method: $payment_method, payment_result: $payment_result, additional_fields: $additional_fields, extensions: $extensions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyOrdersResponse &&
            (identical(other.order_id, order_id) ||
                other.order_id == order_id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.order_key, order_key) ||
                other.order_key == order_key) &&
            (identical(other.order_number, order_number) ||
                other.order_number == order_number) &&
            (identical(other.customer_note, customer_note) ||
                other.customer_note == customer_note) &&
            (identical(other.customer_id, customer_id) ||
                other.customer_id == customer_id) &&
            (identical(other.billing_address, billing_address) ||
                other.billing_address == billing_address) &&
            (identical(other.shipping_address, shipping_address) ||
                other.shipping_address == shipping_address) &&
            (identical(other.payment_method, payment_method) ||
                other.payment_method == payment_method) &&
            (identical(other.payment_result, payment_result) ||
                other.payment_result == payment_result) &&
            const DeepCollectionEquality()
                .equals(other._additional_fields, _additional_fields) &&
            const DeepCollectionEquality()
                .equals(other._extensions, _extensions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      order_id,
      status,
      order_key,
      order_number,
      customer_note,
      customer_id,
      billing_address,
      shipping_address,
      payment_method,
      payment_result,
      const DeepCollectionEquality().hash(_additional_fields),
      const DeepCollectionEquality().hash(_extensions));

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
      final String? status,
      final String? order_key,
      final String? order_number,
      final String? customer_note,
      final int? customer_id,
      final AddressResponse? billing_address,
      final AddressResponse? shipping_address,
      final String? payment_method,
      final PaymentResult? payment_result,
      final List<dynamic>? additional_fields,
      final Map<String, dynamic>? extensions}) = _$_MyOrdersResponse;

  factory _MyOrdersResponse.fromJson(Map<String, dynamic> json) =
      _$_MyOrdersResponse.fromJson;

  @override
  int? get order_id;
  @override
  String? get status;
  @override
  String? get order_key;
  @override
  String? get order_number;
  @override
  String? get customer_note;
  @override
  int? get customer_id;
  @override
  AddressResponse? get billing_address;
  @override
  AddressResponse? get shipping_address;
  @override
  String? get payment_method;
  @override
  PaymentResult? get payment_result;
  @override
  List<dynamic>? get additional_fields;
  @override
  Map<String, dynamic>? get extensions;
  @override
  @JsonKey(ignore: true)
  _$$_MyOrdersResponseCopyWith<_$_MyOrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressResponse _$AddressResponseFromJson(Map<String, dynamic> json) {
  return _AddressResponse.fromJson(json);
}

/// @nodoc
mixin _$AddressResponse {
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
  $AddressResponseCopyWith<AddressResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressResponseCopyWith<$Res> {
  factory $AddressResponseCopyWith(
          AddressResponse value, $Res Function(AddressResponse) then) =
      _$AddressResponseCopyWithImpl<$Res, AddressResponse>;
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
abstract class _$$_AddressResponseCopyWith<$Res>
    implements $AddressResponseCopyWith<$Res> {
  factory _$$_AddressResponseCopyWith(
          _$_AddressResponse value, $Res Function(_$_AddressResponse) then) =
      __$$_AddressResponseCopyWithImpl<$Res>;
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
class __$$_AddressResponseCopyWithImpl<$Res>
    extends _$AddressResponseCopyWithImpl<$Res, _$_AddressResponse>
    implements _$$_AddressResponseCopyWith<$Res> {
  __$$_AddressResponseCopyWithImpl(
      _$_AddressResponse _value, $Res Function(_$_AddressResponse) _then)
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
    return _then(_$_AddressResponse(
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
class _$_AddressResponse implements _AddressResponse {
  _$_AddressResponse(
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

  factory _$_AddressResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AddressResponseFromJson(json);

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
    return 'AddressResponse(first_name: $first_name, last_name: $last_name, company: $company, address_1: $address_1, address_2: $address_2, city: $city, state: $state, postcode: $postcode, country: $country, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressResponse &&
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
      final String? phone}) = _$_AddressResponse;

  factory _AddressResponse.fromJson(Map<String, dynamic> json) =
      _$_AddressResponse.fromJson;

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
  _$$_AddressResponseCopyWith<_$_AddressResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentResult _$PaymentResultFromJson(Map<String, dynamic> json) {
  return _PaymentResult.fromJson(json);
}

/// @nodoc
mixin _$PaymentResult {
  String? get payment_status => throw _privateConstructorUsedError;
  List<PaymentDetails>? get payment_details =>
      throw _privateConstructorUsedError;
  String? get redirect_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentResultCopyWith<PaymentResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentResultCopyWith<$Res> {
  factory $PaymentResultCopyWith(
          PaymentResult value, $Res Function(PaymentResult) then) =
      _$PaymentResultCopyWithImpl<$Res, PaymentResult>;
  @useResult
  $Res call(
      {String? payment_status,
      List<PaymentDetails>? payment_details,
      String? redirect_url});
}

/// @nodoc
class _$PaymentResultCopyWithImpl<$Res, $Val extends PaymentResult>
    implements $PaymentResultCopyWith<$Res> {
  _$PaymentResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payment_status = freezed,
    Object? payment_details = freezed,
    Object? redirect_url = freezed,
  }) {
    return _then(_value.copyWith(
      payment_status: freezed == payment_status
          ? _value.payment_status
          : payment_status // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_details: freezed == payment_details
          ? _value.payment_details
          : payment_details // ignore: cast_nullable_to_non_nullable
              as List<PaymentDetails>?,
      redirect_url: freezed == redirect_url
          ? _value.redirect_url
          : redirect_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentResultCopyWith<$Res>
    implements $PaymentResultCopyWith<$Res> {
  factory _$$_PaymentResultCopyWith(
          _$_PaymentResult value, $Res Function(_$_PaymentResult) then) =
      __$$_PaymentResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? payment_status,
      List<PaymentDetails>? payment_details,
      String? redirect_url});
}

/// @nodoc
class __$$_PaymentResultCopyWithImpl<$Res>
    extends _$PaymentResultCopyWithImpl<$Res, _$_PaymentResult>
    implements _$$_PaymentResultCopyWith<$Res> {
  __$$_PaymentResultCopyWithImpl(
      _$_PaymentResult _value, $Res Function(_$_PaymentResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payment_status = freezed,
    Object? payment_details = freezed,
    Object? redirect_url = freezed,
  }) {
    return _then(_$_PaymentResult(
      payment_status: freezed == payment_status
          ? _value.payment_status
          : payment_status // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_details: freezed == payment_details
          ? _value._payment_details
          : payment_details // ignore: cast_nullable_to_non_nullable
              as List<PaymentDetails>?,
      redirect_url: freezed == redirect_url
          ? _value.redirect_url
          : redirect_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentResult implements _PaymentResult {
  _$_PaymentResult(
      {this.payment_status,
      final List<PaymentDetails>? payment_details,
      this.redirect_url})
      : _payment_details = payment_details;

  factory _$_PaymentResult.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentResultFromJson(json);

  @override
  final String? payment_status;
  final List<PaymentDetails>? _payment_details;
  @override
  List<PaymentDetails>? get payment_details {
    final value = _payment_details;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? redirect_url;

  @override
  String toString() {
    return 'PaymentResult(payment_status: $payment_status, payment_details: $payment_details, redirect_url: $redirect_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentResult &&
            (identical(other.payment_status, payment_status) ||
                other.payment_status == payment_status) &&
            const DeepCollectionEquality()
                .equals(other._payment_details, _payment_details) &&
            (identical(other.redirect_url, redirect_url) ||
                other.redirect_url == redirect_url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, payment_status,
      const DeepCollectionEquality().hash(_payment_details), redirect_url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentResultCopyWith<_$_PaymentResult> get copyWith =>
      __$$_PaymentResultCopyWithImpl<_$_PaymentResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentResultToJson(
      this,
    );
  }
}

abstract class _PaymentResult implements PaymentResult {
  factory _PaymentResult(
      {final String? payment_status,
      final List<PaymentDetails>? payment_details,
      final String? redirect_url}) = _$_PaymentResult;

  factory _PaymentResult.fromJson(Map<String, dynamic> json) =
      _$_PaymentResult.fromJson;

  @override
  String? get payment_status;
  @override
  List<PaymentDetails>? get payment_details;
  @override
  String? get redirect_url;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentResultCopyWith<_$_PaymentResult> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentDetails _$PaymentDetailsFromJson(Map<String, dynamic> json) {
  return _PaymentDetails.fromJson(json);
}

/// @nodoc
mixin _$PaymentDetails {
  String? get key => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentDetailsCopyWith<PaymentDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDetailsCopyWith<$Res> {
  factory $PaymentDetailsCopyWith(
          PaymentDetails value, $Res Function(PaymentDetails) then) =
      _$PaymentDetailsCopyWithImpl<$Res, PaymentDetails>;
  @useResult
  $Res call({String? key, String? value});
}

/// @nodoc
class _$PaymentDetailsCopyWithImpl<$Res, $Val extends PaymentDetails>
    implements $PaymentDetailsCopyWith<$Res> {
  _$PaymentDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentDetailsCopyWith<$Res>
    implements $PaymentDetailsCopyWith<$Res> {
  factory _$$_PaymentDetailsCopyWith(
          _$_PaymentDetails value, $Res Function(_$_PaymentDetails) then) =
      __$$_PaymentDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? key, String? value});
}

/// @nodoc
class __$$_PaymentDetailsCopyWithImpl<$Res>
    extends _$PaymentDetailsCopyWithImpl<$Res, _$_PaymentDetails>
    implements _$$_PaymentDetailsCopyWith<$Res> {
  __$$_PaymentDetailsCopyWithImpl(
      _$_PaymentDetails _value, $Res Function(_$_PaymentDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_PaymentDetails(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentDetails implements _PaymentDetails {
  _$_PaymentDetails({this.key, this.value});

  factory _$_PaymentDetails.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentDetailsFromJson(json);

  @override
  final String? key;
  @override
  final String? value;

  @override
  String toString() {
    return 'PaymentDetails(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentDetails &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentDetailsCopyWith<_$_PaymentDetails> get copyWith =>
      __$$_PaymentDetailsCopyWithImpl<_$_PaymentDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentDetailsToJson(
      this,
    );
  }
}

abstract class _PaymentDetails implements PaymentDetails {
  factory _PaymentDetails({final String? key, final String? value}) =
      _$_PaymentDetails;

  factory _PaymentDetails.fromJson(Map<String, dynamic> json) =
      _$_PaymentDetails.fromJson;

  @override
  String? get key;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentDetailsCopyWith<_$_PaymentDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
