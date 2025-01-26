// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_all_orders_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListAllOrdersResponse _$ListAllOrdersResponseFromJson(
    Map<String, dynamic> json) {
  return _ListAllOrdersResponse.fromJson(json);
}

/// @nodoc
mixin _$ListAllOrdersResponse {
  List<Order>? get orders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListAllOrdersResponseCopyWith<ListAllOrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListAllOrdersResponseCopyWith<$Res> {
  factory $ListAllOrdersResponseCopyWith(ListAllOrdersResponse value,
          $Res Function(ListAllOrdersResponse) then) =
      _$ListAllOrdersResponseCopyWithImpl<$Res, ListAllOrdersResponse>;
  @useResult
  $Res call({List<Order>? orders});
}

/// @nodoc
class _$ListAllOrdersResponseCopyWithImpl<$Res,
        $Val extends ListAllOrdersResponse>
    implements $ListAllOrdersResponseCopyWith<$Res> {
  _$ListAllOrdersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = freezed,
  }) {
    return _then(_value.copyWith(
      orders: freezed == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListAllOrdersResponseCopyWith<$Res>
    implements $ListAllOrdersResponseCopyWith<$Res> {
  factory _$$_ListAllOrdersResponseCopyWith(_$_ListAllOrdersResponse value,
          $Res Function(_$_ListAllOrdersResponse) then) =
      __$$_ListAllOrdersResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Order>? orders});
}

/// @nodoc
class __$$_ListAllOrdersResponseCopyWithImpl<$Res>
    extends _$ListAllOrdersResponseCopyWithImpl<$Res, _$_ListAllOrdersResponse>
    implements _$$_ListAllOrdersResponseCopyWith<$Res> {
  __$$_ListAllOrdersResponseCopyWithImpl(_$_ListAllOrdersResponse _value,
      $Res Function(_$_ListAllOrdersResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = freezed,
  }) {
    return _then(_$_ListAllOrdersResponse(
      orders: freezed == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListAllOrdersResponse implements _ListAllOrdersResponse {
  _$_ListAllOrdersResponse({final List<Order>? orders = const <Order>[]})
      : _orders = orders;

  factory _$_ListAllOrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListAllOrdersResponseFromJson(json);

  final List<Order>? _orders;
  @override
  @JsonKey()
  List<Order>? get orders {
    final value = _orders;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListAllOrdersResponse(orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListAllOrdersResponse &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListAllOrdersResponseCopyWith<_$_ListAllOrdersResponse> get copyWith =>
      __$$_ListAllOrdersResponseCopyWithImpl<_$_ListAllOrdersResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListAllOrdersResponseToJson(
      this,
    );
  }
}

abstract class _ListAllOrdersResponse implements ListAllOrdersResponse {
  factory _ListAllOrdersResponse({final List<Order>? orders}) =
      _$_ListAllOrdersResponse;

  factory _ListAllOrdersResponse.fromJson(Map<String, dynamic> json) =
      _$_ListAllOrdersResponse.fromJson;

  @override
  List<Order>? get orders;
  @override
  @JsonKey(ignore: true)
  _$$_ListAllOrdersResponseCopyWith<_$_ListAllOrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_id")
  int get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "currency")
  String get currency => throw _privateConstructorUsedError;
  @JsonKey(name: "version")
  String get version => throw _privateConstructorUsedError;
  @JsonKey(name: "prices_include_tax")
  bool get pricesIncludeTax => throw _privateConstructorUsedError;
  @JsonKey(name: "date_created")
  DateTime get dateCreated => throw _privateConstructorUsedError;
  @JsonKey(name: "date_modified")
  DateTime get dateModified => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_total")
  String get discountTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_tax")
  String get discountTax => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_total")
  String get shippingTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_tax")
  String get shippingTax => throw _privateConstructorUsedError;
  @JsonKey(name: "cart_tax")
  String get cartTax => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  String get total => throw _privateConstructorUsedError;
  @JsonKey(name: "total_tax")
  String get totalTax => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_id")
  int get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_key")
  String get orderKey => throw _privateConstructorUsedError;
  @JsonKey(name: "billing")
  Ing get billing => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping")
  Ing get shipping => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method")
  String get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method_title")
  String get paymentMethodTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_id")
  String get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_ip_address")
  String get customerIpAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_user_agent")
  String get customerUserAgent => throw _privateConstructorUsedError;
  @JsonKey(name: "created_via")
  String get createdVia => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_note")
  String get customerNote => throw _privateConstructorUsedError;
  @JsonKey(name: "date_completed")
  DateTime? get dateCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: "date_paid")
  DateTime? get datePaid => throw _privateConstructorUsedError;
  @JsonKey(name: "cart_hash")
  String get cartHash => throw _privateConstructorUsedError;
  @JsonKey(name: "number")
  String get number => throw _privateConstructorUsedError;
  @JsonKey(name: "line_items")
  List<LineItem>? get lineItems => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_lines")
  List<TaxLine>? get taxLines => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_lines")
  List<ShippingLine>? get shippingLines => throw _privateConstructorUsedError;
  @JsonKey(name: "fee_lines")
  List<FeeLine> get feeLines =>
      throw _privateConstructorUsedError; // @JsonKey(name: "coupon_lines")
// final List<dynamic> couponLines,
// @JsonKey(name: "refunds")
// final List<dynamic> refunds,
  @JsonKey(name: "payment_url")
  String get paymentUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "is_editable")
  bool get isEditable => throw _privateConstructorUsedError;
  @JsonKey(name: "needs_payment")
  bool get needsPayment => throw _privateConstructorUsedError;
  @JsonKey(name: "needs_processing")
  bool get needsProcessing => throw _privateConstructorUsedError;
  @JsonKey(name: "date_created_gmt")
  DateTime? get dateCreatedGmt => throw _privateConstructorUsedError;
  @JsonKey(name: "date_modified_gmt")
  DateTime? get dateModifiedGmt => throw _privateConstructorUsedError;
  @JsonKey(name: "date_completed_gmt")
  DateTime? get dateCompletedGmt => throw _privateConstructorUsedError;
  @JsonKey(name: "date_paid_gmt")
  DateTime? get datePaidGmt => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "final_amount")
  String? get finalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_symbol")
  String? get currencySymbol => throw _privateConstructorUsedError;
  @JsonKey(name: "weight")
  String? get weight => throw _privateConstructorUsedError;
  @JsonKey(name: "weight_unit")
  String? get weightUnit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "parent_id") int parentId,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "currency") String currency,
      @JsonKey(name: "version") String version,
      @JsonKey(name: "prices_include_tax") bool pricesIncludeTax,
      @JsonKey(name: "date_created") DateTime dateCreated,
      @JsonKey(name: "date_modified") DateTime dateModified,
      @JsonKey(name: "discount_total") String discountTotal,
      @JsonKey(name: "discount_tax") String discountTax,
      @JsonKey(name: "shipping_total") String shippingTotal,
      @JsonKey(name: "shipping_tax") String shippingTax,
      @JsonKey(name: "cart_tax") String cartTax,
      @JsonKey(name: "total") String total,
      @JsonKey(name: "total_tax") String totalTax,
      @JsonKey(name: "customer_id") int customerId,
      @JsonKey(name: "order_key") String orderKey,
      @JsonKey(name: "billing") Ing billing,
      @JsonKey(name: "shipping") Ing shipping,
      @JsonKey(name: "payment_method") String paymentMethod,
      @JsonKey(name: "payment_method_title") String paymentMethodTitle,
      @JsonKey(name: "transaction_id") String transactionId,
      @JsonKey(name: "customer_ip_address") String customerIpAddress,
      @JsonKey(name: "customer_user_agent") String customerUserAgent,
      @JsonKey(name: "created_via") String createdVia,
      @JsonKey(name: "customer_note") String customerNote,
      @JsonKey(name: "date_completed") DateTime? dateCompleted,
      @JsonKey(name: "date_paid") DateTime? datePaid,
      @JsonKey(name: "cart_hash") String cartHash,
      @JsonKey(name: "number") String number,
      @JsonKey(name: "line_items") List<LineItem>? lineItems,
      @JsonKey(name: "tax_lines") List<TaxLine>? taxLines,
      @JsonKey(name: "shipping_lines") List<ShippingLine>? shippingLines,
      @JsonKey(name: "fee_lines") List<FeeLine> feeLines,
      @JsonKey(name: "payment_url") String paymentUrl,
      @JsonKey(name: "is_editable") bool isEditable,
      @JsonKey(name: "needs_payment") bool needsPayment,
      @JsonKey(name: "needs_processing") bool needsProcessing,
      @JsonKey(name: "date_created_gmt") DateTime? dateCreatedGmt,
      @JsonKey(name: "date_modified_gmt") DateTime? dateModifiedGmt,
      @JsonKey(name: "date_completed_gmt") DateTime? dateCompletedGmt,
      @JsonKey(name: "date_paid_gmt") DateTime? datePaidGmt,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "final_amount") String? finalAmount,
      @JsonKey(name: "currency_symbol") String? currencySymbol,
      @JsonKey(name: "weight") String? weight,
      @JsonKey(name: "weight_unit") String? weightUnit});

  $IngCopyWith<$Res> get billing;
  $IngCopyWith<$Res> get shipping;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? status = null,
    Object? currency = null,
    Object? version = null,
    Object? pricesIncludeTax = null,
    Object? dateCreated = null,
    Object? dateModified = null,
    Object? discountTotal = null,
    Object? discountTax = null,
    Object? shippingTotal = null,
    Object? shippingTax = null,
    Object? cartTax = null,
    Object? total = null,
    Object? totalTax = null,
    Object? customerId = null,
    Object? orderKey = null,
    Object? billing = null,
    Object? shipping = null,
    Object? paymentMethod = null,
    Object? paymentMethodTitle = null,
    Object? transactionId = null,
    Object? customerIpAddress = null,
    Object? customerUserAgent = null,
    Object? createdVia = null,
    Object? customerNote = null,
    Object? dateCompleted = freezed,
    Object? datePaid = freezed,
    Object? cartHash = null,
    Object? number = null,
    Object? lineItems = freezed,
    Object? taxLines = freezed,
    Object? shippingLines = freezed,
    Object? feeLines = null,
    Object? paymentUrl = null,
    Object? isEditable = null,
    Object? needsPayment = null,
    Object? needsProcessing = null,
    Object? dateCreatedGmt = freezed,
    Object? dateModifiedGmt = freezed,
    Object? dateCompletedGmt = freezed,
    Object? datePaidGmt = freezed,
    Object? email = freezed,
    Object? finalAmount = freezed,
    Object? currencySymbol = freezed,
    Object? weight = freezed,
    Object? weightUnit = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      pricesIncludeTax: null == pricesIncludeTax
          ? _value.pricesIncludeTax
          : pricesIncludeTax // ignore: cast_nullable_to_non_nullable
              as bool,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateModified: null == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime,
      discountTotal: null == discountTotal
          ? _value.discountTotal
          : discountTotal // ignore: cast_nullable_to_non_nullable
              as String,
      discountTax: null == discountTax
          ? _value.discountTax
          : discountTax // ignore: cast_nullable_to_non_nullable
              as String,
      shippingTotal: null == shippingTotal
          ? _value.shippingTotal
          : shippingTotal // ignore: cast_nullable_to_non_nullable
              as String,
      shippingTax: null == shippingTax
          ? _value.shippingTax
          : shippingTax // ignore: cast_nullable_to_non_nullable
              as String,
      cartTax: null == cartTax
          ? _value.cartTax
          : cartTax // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      totalTax: null == totalTax
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      orderKey: null == orderKey
          ? _value.orderKey
          : orderKey // ignore: cast_nullable_to_non_nullable
              as String,
      billing: null == billing
          ? _value.billing
          : billing // ignore: cast_nullable_to_non_nullable
              as Ing,
      shipping: null == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as Ing,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodTitle: null == paymentMethodTitle
          ? _value.paymentMethodTitle
          : paymentMethodTitle // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      customerIpAddress: null == customerIpAddress
          ? _value.customerIpAddress
          : customerIpAddress // ignore: cast_nullable_to_non_nullable
              as String,
      customerUserAgent: null == customerUserAgent
          ? _value.customerUserAgent
          : customerUserAgent // ignore: cast_nullable_to_non_nullable
              as String,
      createdVia: null == createdVia
          ? _value.createdVia
          : createdVia // ignore: cast_nullable_to_non_nullable
              as String,
      customerNote: null == customerNote
          ? _value.customerNote
          : customerNote // ignore: cast_nullable_to_non_nullable
              as String,
      dateCompleted: freezed == dateCompleted
          ? _value.dateCompleted
          : dateCompleted // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      datePaid: freezed == datePaid
          ? _value.datePaid
          : datePaid // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cartHash: null == cartHash
          ? _value.cartHash
          : cartHash // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      lineItems: freezed == lineItems
          ? _value.lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<LineItem>?,
      taxLines: freezed == taxLines
          ? _value.taxLines
          : taxLines // ignore: cast_nullable_to_non_nullable
              as List<TaxLine>?,
      shippingLines: freezed == shippingLines
          ? _value.shippingLines
          : shippingLines // ignore: cast_nullable_to_non_nullable
              as List<ShippingLine>?,
      feeLines: null == feeLines
          ? _value.feeLines
          : feeLines // ignore: cast_nullable_to_non_nullable
              as List<FeeLine>,
      paymentUrl: null == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isEditable: null == isEditable
          ? _value.isEditable
          : isEditable // ignore: cast_nullable_to_non_nullable
              as bool,
      needsPayment: null == needsPayment
          ? _value.needsPayment
          : needsPayment // ignore: cast_nullable_to_non_nullable
              as bool,
      needsProcessing: null == needsProcessing
          ? _value.needsProcessing
          : needsProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      dateCreatedGmt: freezed == dateCreatedGmt
          ? _value.dateCreatedGmt
          : dateCreatedGmt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateModifiedGmt: freezed == dateModifiedGmt
          ? _value.dateModifiedGmt
          : dateModifiedGmt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateCompletedGmt: freezed == dateCompletedGmt
          ? _value.dateCompletedGmt
          : dateCompletedGmt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      datePaidGmt: freezed == datePaidGmt
          ? _value.datePaidGmt
          : datePaidGmt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      finalAmount: freezed == finalAmount
          ? _value.finalAmount
          : finalAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      weightUnit: freezed == weightUnit
          ? _value.weightUnit
          : weightUnit // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IngCopyWith<$Res> get billing {
    return $IngCopyWith<$Res>(_value.billing, (value) {
      return _then(_value.copyWith(billing: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IngCopyWith<$Res> get shipping {
    return $IngCopyWith<$Res>(_value.shipping, (value) {
      return _then(_value.copyWith(shipping: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "parent_id") int parentId,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "currency") String currency,
      @JsonKey(name: "version") String version,
      @JsonKey(name: "prices_include_tax") bool pricesIncludeTax,
      @JsonKey(name: "date_created") DateTime dateCreated,
      @JsonKey(name: "date_modified") DateTime dateModified,
      @JsonKey(name: "discount_total") String discountTotal,
      @JsonKey(name: "discount_tax") String discountTax,
      @JsonKey(name: "shipping_total") String shippingTotal,
      @JsonKey(name: "shipping_tax") String shippingTax,
      @JsonKey(name: "cart_tax") String cartTax,
      @JsonKey(name: "total") String total,
      @JsonKey(name: "total_tax") String totalTax,
      @JsonKey(name: "customer_id") int customerId,
      @JsonKey(name: "order_key") String orderKey,
      @JsonKey(name: "billing") Ing billing,
      @JsonKey(name: "shipping") Ing shipping,
      @JsonKey(name: "payment_method") String paymentMethod,
      @JsonKey(name: "payment_method_title") String paymentMethodTitle,
      @JsonKey(name: "transaction_id") String transactionId,
      @JsonKey(name: "customer_ip_address") String customerIpAddress,
      @JsonKey(name: "customer_user_agent") String customerUserAgent,
      @JsonKey(name: "created_via") String createdVia,
      @JsonKey(name: "customer_note") String customerNote,
      @JsonKey(name: "date_completed") DateTime? dateCompleted,
      @JsonKey(name: "date_paid") DateTime? datePaid,
      @JsonKey(name: "cart_hash") String cartHash,
      @JsonKey(name: "number") String number,
      @JsonKey(name: "line_items") List<LineItem>? lineItems,
      @JsonKey(name: "tax_lines") List<TaxLine>? taxLines,
      @JsonKey(name: "shipping_lines") List<ShippingLine>? shippingLines,
      @JsonKey(name: "fee_lines") List<FeeLine> feeLines,
      @JsonKey(name: "payment_url") String paymentUrl,
      @JsonKey(name: "is_editable") bool isEditable,
      @JsonKey(name: "needs_payment") bool needsPayment,
      @JsonKey(name: "needs_processing") bool needsProcessing,
      @JsonKey(name: "date_created_gmt") DateTime? dateCreatedGmt,
      @JsonKey(name: "date_modified_gmt") DateTime? dateModifiedGmt,
      @JsonKey(name: "date_completed_gmt") DateTime? dateCompletedGmt,
      @JsonKey(name: "date_paid_gmt") DateTime? datePaidGmt,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "final_amount") String? finalAmount,
      @JsonKey(name: "currency_symbol") String? currencySymbol,
      @JsonKey(name: "weight") String? weight,
      @JsonKey(name: "weight_unit") String? weightUnit});

  @override
  $IngCopyWith<$Res> get billing;
  @override
  $IngCopyWith<$Res> get shipping;
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res, _$_Order>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? status = null,
    Object? currency = null,
    Object? version = null,
    Object? pricesIncludeTax = null,
    Object? dateCreated = null,
    Object? dateModified = null,
    Object? discountTotal = null,
    Object? discountTax = null,
    Object? shippingTotal = null,
    Object? shippingTax = null,
    Object? cartTax = null,
    Object? total = null,
    Object? totalTax = null,
    Object? customerId = null,
    Object? orderKey = null,
    Object? billing = null,
    Object? shipping = null,
    Object? paymentMethod = null,
    Object? paymentMethodTitle = null,
    Object? transactionId = null,
    Object? customerIpAddress = null,
    Object? customerUserAgent = null,
    Object? createdVia = null,
    Object? customerNote = null,
    Object? dateCompleted = freezed,
    Object? datePaid = freezed,
    Object? cartHash = null,
    Object? number = null,
    Object? lineItems = freezed,
    Object? taxLines = freezed,
    Object? shippingLines = freezed,
    Object? feeLines = null,
    Object? paymentUrl = null,
    Object? isEditable = null,
    Object? needsPayment = null,
    Object? needsProcessing = null,
    Object? dateCreatedGmt = freezed,
    Object? dateModifiedGmt = freezed,
    Object? dateCompletedGmt = freezed,
    Object? datePaidGmt = freezed,
    Object? email = freezed,
    Object? finalAmount = freezed,
    Object? currencySymbol = freezed,
    Object? weight = freezed,
    Object? weightUnit = freezed,
  }) {
    return _then(_$_Order(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      pricesIncludeTax: null == pricesIncludeTax
          ? _value.pricesIncludeTax
          : pricesIncludeTax // ignore: cast_nullable_to_non_nullable
              as bool,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateModified: null == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as DateTime,
      discountTotal: null == discountTotal
          ? _value.discountTotal
          : discountTotal // ignore: cast_nullable_to_non_nullable
              as String,
      discountTax: null == discountTax
          ? _value.discountTax
          : discountTax // ignore: cast_nullable_to_non_nullable
              as String,
      shippingTotal: null == shippingTotal
          ? _value.shippingTotal
          : shippingTotal // ignore: cast_nullable_to_non_nullable
              as String,
      shippingTax: null == shippingTax
          ? _value.shippingTax
          : shippingTax // ignore: cast_nullable_to_non_nullable
              as String,
      cartTax: null == cartTax
          ? _value.cartTax
          : cartTax // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      totalTax: null == totalTax
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      orderKey: null == orderKey
          ? _value.orderKey
          : orderKey // ignore: cast_nullable_to_non_nullable
              as String,
      billing: null == billing
          ? _value.billing
          : billing // ignore: cast_nullable_to_non_nullable
              as Ing,
      shipping: null == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as Ing,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodTitle: null == paymentMethodTitle
          ? _value.paymentMethodTitle
          : paymentMethodTitle // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      customerIpAddress: null == customerIpAddress
          ? _value.customerIpAddress
          : customerIpAddress // ignore: cast_nullable_to_non_nullable
              as String,
      customerUserAgent: null == customerUserAgent
          ? _value.customerUserAgent
          : customerUserAgent // ignore: cast_nullable_to_non_nullable
              as String,
      createdVia: null == createdVia
          ? _value.createdVia
          : createdVia // ignore: cast_nullable_to_non_nullable
              as String,
      customerNote: null == customerNote
          ? _value.customerNote
          : customerNote // ignore: cast_nullable_to_non_nullable
              as String,
      dateCompleted: freezed == dateCompleted
          ? _value.dateCompleted
          : dateCompleted // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      datePaid: freezed == datePaid
          ? _value.datePaid
          : datePaid // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cartHash: null == cartHash
          ? _value.cartHash
          : cartHash // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      lineItems: freezed == lineItems
          ? _value._lineItems
          : lineItems // ignore: cast_nullable_to_non_nullable
              as List<LineItem>?,
      taxLines: freezed == taxLines
          ? _value._taxLines
          : taxLines // ignore: cast_nullable_to_non_nullable
              as List<TaxLine>?,
      shippingLines: freezed == shippingLines
          ? _value._shippingLines
          : shippingLines // ignore: cast_nullable_to_non_nullable
              as List<ShippingLine>?,
      feeLines: null == feeLines
          ? _value._feeLines
          : feeLines // ignore: cast_nullable_to_non_nullable
              as List<FeeLine>,
      paymentUrl: null == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isEditable: null == isEditable
          ? _value.isEditable
          : isEditable // ignore: cast_nullable_to_non_nullable
              as bool,
      needsPayment: null == needsPayment
          ? _value.needsPayment
          : needsPayment // ignore: cast_nullable_to_non_nullable
              as bool,
      needsProcessing: null == needsProcessing
          ? _value.needsProcessing
          : needsProcessing // ignore: cast_nullable_to_non_nullable
              as bool,
      dateCreatedGmt: freezed == dateCreatedGmt
          ? _value.dateCreatedGmt
          : dateCreatedGmt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateModifiedGmt: freezed == dateModifiedGmt
          ? _value.dateModifiedGmt
          : dateModifiedGmt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateCompletedGmt: freezed == dateCompletedGmt
          ? _value.dateCompletedGmt
          : dateCompletedGmt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      datePaidGmt: freezed == datePaidGmt
          ? _value.datePaidGmt
          : datePaidGmt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      finalAmount: freezed == finalAmount
          ? _value.finalAmount
          : finalAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      weightUnit: freezed == weightUnit
          ? _value.weightUnit
          : weightUnit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Order implements _Order {
  const _$_Order(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "parent_id") required this.parentId,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "currency") required this.currency,
      @JsonKey(name: "version") required this.version,
      @JsonKey(name: "prices_include_tax") required this.pricesIncludeTax,
      @JsonKey(name: "date_created") required this.dateCreated,
      @JsonKey(name: "date_modified") required this.dateModified,
      @JsonKey(name: "discount_total") required this.discountTotal,
      @JsonKey(name: "discount_tax") required this.discountTax,
      @JsonKey(name: "shipping_total") required this.shippingTotal,
      @JsonKey(name: "shipping_tax") required this.shippingTax,
      @JsonKey(name: "cart_tax") required this.cartTax,
      @JsonKey(name: "total") required this.total,
      @JsonKey(name: "total_tax") required this.totalTax,
      @JsonKey(name: "customer_id") required this.customerId,
      @JsonKey(name: "order_key") required this.orderKey,
      @JsonKey(name: "billing") required this.billing,
      @JsonKey(name: "shipping") required this.shipping,
      @JsonKey(name: "payment_method") required this.paymentMethod,
      @JsonKey(name: "payment_method_title") required this.paymentMethodTitle,
      @JsonKey(name: "transaction_id") required this.transactionId,
      @JsonKey(name: "customer_ip_address") required this.customerIpAddress,
      @JsonKey(name: "customer_user_agent") required this.customerUserAgent,
      @JsonKey(name: "created_via") required this.createdVia,
      @JsonKey(name: "customer_note") required this.customerNote,
      @JsonKey(name: "date_completed") this.dateCompleted,
      @JsonKey(name: "date_paid") this.datePaid,
      @JsonKey(name: "cart_hash") required this.cartHash,
      @JsonKey(name: "number") required this.number,
      @JsonKey(name: "line_items")
      final List<LineItem>? lineItems = const <LineItem>[],
      @JsonKey(name: "tax_lines")
      final List<TaxLine>? taxLines = const <TaxLine>[],
      @JsonKey(name: "shipping_lines")
      final List<ShippingLine>? shippingLines = const <ShippingLine>[],
      @JsonKey(name: "fee_lines")
      final List<FeeLine> feeLines = const <FeeLine>[],
      @JsonKey(name: "payment_url") required this.paymentUrl,
      @JsonKey(name: "is_editable") required this.isEditable,
      @JsonKey(name: "needs_payment") required this.needsPayment,
      @JsonKey(name: "needs_processing") required this.needsProcessing,
      @JsonKey(name: "date_created_gmt") this.dateCreatedGmt,
      @JsonKey(name: "date_modified_gmt") this.dateModifiedGmt,
      @JsonKey(name: "date_completed_gmt") this.dateCompletedGmt,
      @JsonKey(name: "date_paid_gmt") this.datePaidGmt,
      @JsonKey(name: "email") required this.email,
      @JsonKey(name: "final_amount") required this.finalAmount,
      @JsonKey(name: "currency_symbol") required this.currencySymbol,
      @JsonKey(name: "weight") required this.weight,
      @JsonKey(name: "weight_unit") required this.weightUnit})
      : _lineItems = lineItems,
        _taxLines = taxLines,
        _shippingLines = shippingLines,
        _feeLines = feeLines;

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "parent_id")
  final int parentId;
  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "currency")
  final String currency;
  @override
  @JsonKey(name: "version")
  final String version;
  @override
  @JsonKey(name: "prices_include_tax")
  final bool pricesIncludeTax;
  @override
  @JsonKey(name: "date_created")
  final DateTime dateCreated;
  @override
  @JsonKey(name: "date_modified")
  final DateTime dateModified;
  @override
  @JsonKey(name: "discount_total")
  final String discountTotal;
  @override
  @JsonKey(name: "discount_tax")
  final String discountTax;
  @override
  @JsonKey(name: "shipping_total")
  final String shippingTotal;
  @override
  @JsonKey(name: "shipping_tax")
  final String shippingTax;
  @override
  @JsonKey(name: "cart_tax")
  final String cartTax;
  @override
  @JsonKey(name: "total")
  final String total;
  @override
  @JsonKey(name: "total_tax")
  final String totalTax;
  @override
  @JsonKey(name: "customer_id")
  final int customerId;
  @override
  @JsonKey(name: "order_key")
  final String orderKey;
  @override
  @JsonKey(name: "billing")
  final Ing billing;
  @override
  @JsonKey(name: "shipping")
  final Ing shipping;
  @override
  @JsonKey(name: "payment_method")
  final String paymentMethod;
  @override
  @JsonKey(name: "payment_method_title")
  final String paymentMethodTitle;
  @override
  @JsonKey(name: "transaction_id")
  final String transactionId;
  @override
  @JsonKey(name: "customer_ip_address")
  final String customerIpAddress;
  @override
  @JsonKey(name: "customer_user_agent")
  final String customerUserAgent;
  @override
  @JsonKey(name: "created_via")
  final String createdVia;
  @override
  @JsonKey(name: "customer_note")
  final String customerNote;
  @override
  @JsonKey(name: "date_completed")
  final DateTime? dateCompleted;
  @override
  @JsonKey(name: "date_paid")
  final DateTime? datePaid;
  @override
  @JsonKey(name: "cart_hash")
  final String cartHash;
  @override
  @JsonKey(name: "number")
  final String number;
  final List<LineItem>? _lineItems;
  @override
  @JsonKey(name: "line_items")
  List<LineItem>? get lineItems {
    final value = _lineItems;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TaxLine>? _taxLines;
  @override
  @JsonKey(name: "tax_lines")
  List<TaxLine>? get taxLines {
    final value = _taxLines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ShippingLine>? _shippingLines;
  @override
  @JsonKey(name: "shipping_lines")
  List<ShippingLine>? get shippingLines {
    final value = _shippingLines;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FeeLine> _feeLines;
  @override
  @JsonKey(name: "fee_lines")
  List<FeeLine> get feeLines {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feeLines);
  }

// @JsonKey(name: "coupon_lines")
// final List<dynamic> couponLines,
// @JsonKey(name: "refunds")
// final List<dynamic> refunds,
  @override
  @JsonKey(name: "payment_url")
  final String paymentUrl;
  @override
  @JsonKey(name: "is_editable")
  final bool isEditable;
  @override
  @JsonKey(name: "needs_payment")
  final bool needsPayment;
  @override
  @JsonKey(name: "needs_processing")
  final bool needsProcessing;
  @override
  @JsonKey(name: "date_created_gmt")
  final DateTime? dateCreatedGmt;
  @override
  @JsonKey(name: "date_modified_gmt")
  final DateTime? dateModifiedGmt;
  @override
  @JsonKey(name: "date_completed_gmt")
  final DateTime? dateCompletedGmt;
  @override
  @JsonKey(name: "date_paid_gmt")
  final DateTime? datePaidGmt;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "final_amount")
  final String? finalAmount;
  @override
  @JsonKey(name: "currency_symbol")
  final String? currencySymbol;
  @override
  @JsonKey(name: "weight")
  final String? weight;
  @override
  @JsonKey(name: "weight_unit")
  final String? weightUnit;

  @override
  String toString() {
    return 'Order(id: $id, parentId: $parentId, status: $status, currency: $currency, version: $version, pricesIncludeTax: $pricesIncludeTax, dateCreated: $dateCreated, dateModified: $dateModified, discountTotal: $discountTotal, discountTax: $discountTax, shippingTotal: $shippingTotal, shippingTax: $shippingTax, cartTax: $cartTax, total: $total, totalTax: $totalTax, customerId: $customerId, orderKey: $orderKey, billing: $billing, shipping: $shipping, paymentMethod: $paymentMethod, paymentMethodTitle: $paymentMethodTitle, transactionId: $transactionId, customerIpAddress: $customerIpAddress, customerUserAgent: $customerUserAgent, createdVia: $createdVia, customerNote: $customerNote, dateCompleted: $dateCompleted, datePaid: $datePaid, cartHash: $cartHash, number: $number, lineItems: $lineItems, taxLines: $taxLines, shippingLines: $shippingLines, feeLines: $feeLines, paymentUrl: $paymentUrl, isEditable: $isEditable, needsPayment: $needsPayment, needsProcessing: $needsProcessing, dateCreatedGmt: $dateCreatedGmt, dateModifiedGmt: $dateModifiedGmt, dateCompletedGmt: $dateCompletedGmt, datePaidGmt: $datePaidGmt, email: $email, finalAmount: $finalAmount, currencySymbol: $currencySymbol, weight: $weight, weightUnit: $weightUnit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.pricesIncludeTax, pricesIncludeTax) ||
                other.pricesIncludeTax == pricesIncludeTax) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateModified, dateModified) ||
                other.dateModified == dateModified) &&
            (identical(other.discountTotal, discountTotal) ||
                other.discountTotal == discountTotal) &&
            (identical(other.discountTax, discountTax) ||
                other.discountTax == discountTax) &&
            (identical(other.shippingTotal, shippingTotal) ||
                other.shippingTotal == shippingTotal) &&
            (identical(other.shippingTax, shippingTax) ||
                other.shippingTax == shippingTax) &&
            (identical(other.cartTax, cartTax) || other.cartTax == cartTax) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalTax, totalTax) ||
                other.totalTax == totalTax) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.orderKey, orderKey) ||
                other.orderKey == orderKey) &&
            (identical(other.billing, billing) || other.billing == billing) &&
            (identical(other.shipping, shipping) ||
                other.shipping == shipping) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentMethodTitle, paymentMethodTitle) ||
                other.paymentMethodTitle == paymentMethodTitle) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.customerIpAddress, customerIpAddress) ||
                other.customerIpAddress == customerIpAddress) &&
            (identical(other.customerUserAgent, customerUserAgent) ||
                other.customerUserAgent == customerUserAgent) &&
            (identical(other.createdVia, createdVia) ||
                other.createdVia == createdVia) &&
            (identical(other.customerNote, customerNote) ||
                other.customerNote == customerNote) &&
            (identical(other.dateCompleted, dateCompleted) ||
                other.dateCompleted == dateCompleted) &&
            (identical(other.datePaid, datePaid) ||
                other.datePaid == datePaid) &&
            (identical(other.cartHash, cartHash) ||
                other.cartHash == cartHash) &&
            (identical(other.number, number) || other.number == number) &&
            const DeepCollectionEquality()
                .equals(other._lineItems, _lineItems) &&
            const DeepCollectionEquality().equals(other._taxLines, _taxLines) &&
            const DeepCollectionEquality()
                .equals(other._shippingLines, _shippingLines) &&
            const DeepCollectionEquality().equals(other._feeLines, _feeLines) &&
            (identical(other.paymentUrl, paymentUrl) ||
                other.paymentUrl == paymentUrl) &&
            (identical(other.isEditable, isEditable) ||
                other.isEditable == isEditable) &&
            (identical(other.needsPayment, needsPayment) ||
                other.needsPayment == needsPayment) &&
            (identical(other.needsProcessing, needsProcessing) ||
                other.needsProcessing == needsProcessing) &&
            (identical(other.dateCreatedGmt, dateCreatedGmt) ||
                other.dateCreatedGmt == dateCreatedGmt) &&
            (identical(other.dateModifiedGmt, dateModifiedGmt) ||
                other.dateModifiedGmt == dateModifiedGmt) &&
            (identical(other.dateCompletedGmt, dateCompletedGmt) ||
                other.dateCompletedGmt == dateCompletedGmt) &&
            (identical(other.datePaidGmt, datePaidGmt) ||
                other.datePaidGmt == datePaidGmt) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.finalAmount, finalAmount) ||
                other.finalAmount == finalAmount) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.weightUnit, weightUnit) ||
                other.weightUnit == weightUnit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        parentId,
        status,
        currency,
        version,
        pricesIncludeTax,
        dateCreated,
        dateModified,
        discountTotal,
        discountTax,
        shippingTotal,
        shippingTax,
        cartTax,
        total,
        totalTax,
        customerId,
        orderKey,
        billing,
        shipping,
        paymentMethod,
        paymentMethodTitle,
        transactionId,
        customerIpAddress,
        customerUserAgent,
        createdVia,
        customerNote,
        dateCompleted,
        datePaid,
        cartHash,
        number,
        const DeepCollectionEquality().hash(_lineItems),
        const DeepCollectionEquality().hash(_taxLines),
        const DeepCollectionEquality().hash(_shippingLines),
        const DeepCollectionEquality().hash(_feeLines),
        paymentUrl,
        isEditable,
        needsPayment,
        needsProcessing,
        dateCreatedGmt,
        dateModifiedGmt,
        dateCompletedGmt,
        datePaidGmt,
        email,
        finalAmount,
        currencySymbol,
        weight,
        weightUnit
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  const factory _Order(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "parent_id") required final int parentId,
      @JsonKey(name: "status") required final String status,
      @JsonKey(name: "currency") required final String currency,
      @JsonKey(name: "version") required final String version,
      @JsonKey(name: "prices_include_tax") required final bool pricesIncludeTax,
      @JsonKey(name: "date_created") required final DateTime dateCreated,
      @JsonKey(name: "date_modified") required final DateTime dateModified,
      @JsonKey(name: "discount_total") required final String discountTotal,
      @JsonKey(name: "discount_tax") required final String discountTax,
      @JsonKey(name: "shipping_total") required final String shippingTotal,
      @JsonKey(name: "shipping_tax") required final String shippingTax,
      @JsonKey(name: "cart_tax") required final String cartTax,
      @JsonKey(name: "total") required final String total,
      @JsonKey(name: "total_tax") required final String totalTax,
      @JsonKey(name: "customer_id") required final int customerId,
      @JsonKey(name: "order_key") required final String orderKey,
      @JsonKey(name: "billing") required final Ing billing,
      @JsonKey(name: "shipping") required final Ing shipping,
      @JsonKey(name: "payment_method") required final String paymentMethod,
      @JsonKey(name: "payment_method_title")
      required final String paymentMethodTitle,
      @JsonKey(name: "transaction_id") required final String transactionId,
      @JsonKey(name: "customer_ip_address")
      required final String customerIpAddress,
      @JsonKey(name: "customer_user_agent")
      required final String customerUserAgent,
      @JsonKey(name: "created_via") required final String createdVia,
      @JsonKey(name: "customer_note") required final String customerNote,
      @JsonKey(name: "date_completed") final DateTime? dateCompleted,
      @JsonKey(name: "date_paid") final DateTime? datePaid,
      @JsonKey(name: "cart_hash") required final String cartHash,
      @JsonKey(name: "number") required final String number,
      @JsonKey(name: "line_items") final List<LineItem>? lineItems,
      @JsonKey(name: "tax_lines") final List<TaxLine>? taxLines,
      @JsonKey(name: "shipping_lines") final List<ShippingLine>? shippingLines,
      @JsonKey(name: "fee_lines") final List<FeeLine> feeLines,
      @JsonKey(name: "payment_url") required final String paymentUrl,
      @JsonKey(name: "is_editable") required final bool isEditable,
      @JsonKey(name: "needs_payment") required final bool needsPayment,
      @JsonKey(name: "needs_processing") required final bool needsProcessing,
      @JsonKey(name: "date_created_gmt") final DateTime? dateCreatedGmt,
      @JsonKey(name: "date_modified_gmt") final DateTime? dateModifiedGmt,
      @JsonKey(name: "date_completed_gmt") final DateTime? dateCompletedGmt,
      @JsonKey(name: "date_paid_gmt") final DateTime? datePaidGmt,
      @JsonKey(name: "email") required final String? email,
      @JsonKey(name: "final_amount") required final String? finalAmount,
      @JsonKey(name: "currency_symbol") required final String? currencySymbol,
      @JsonKey(name: "weight") required final String? weight,
      @JsonKey(name: "weight_unit")
      required final String? weightUnit}) = _$_Order;

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "parent_id")
  int get parentId;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "currency")
  String get currency;
  @override
  @JsonKey(name: "version")
  String get version;
  @override
  @JsonKey(name: "prices_include_tax")
  bool get pricesIncludeTax;
  @override
  @JsonKey(name: "date_created")
  DateTime get dateCreated;
  @override
  @JsonKey(name: "date_modified")
  DateTime get dateModified;
  @override
  @JsonKey(name: "discount_total")
  String get discountTotal;
  @override
  @JsonKey(name: "discount_tax")
  String get discountTax;
  @override
  @JsonKey(name: "shipping_total")
  String get shippingTotal;
  @override
  @JsonKey(name: "shipping_tax")
  String get shippingTax;
  @override
  @JsonKey(name: "cart_tax")
  String get cartTax;
  @override
  @JsonKey(name: "total")
  String get total;
  @override
  @JsonKey(name: "total_tax")
  String get totalTax;
  @override
  @JsonKey(name: "customer_id")
  int get customerId;
  @override
  @JsonKey(name: "order_key")
  String get orderKey;
  @override
  @JsonKey(name: "billing")
  Ing get billing;
  @override
  @JsonKey(name: "shipping")
  Ing get shipping;
  @override
  @JsonKey(name: "payment_method")
  String get paymentMethod;
  @override
  @JsonKey(name: "payment_method_title")
  String get paymentMethodTitle;
  @override
  @JsonKey(name: "transaction_id")
  String get transactionId;
  @override
  @JsonKey(name: "customer_ip_address")
  String get customerIpAddress;
  @override
  @JsonKey(name: "customer_user_agent")
  String get customerUserAgent;
  @override
  @JsonKey(name: "created_via")
  String get createdVia;
  @override
  @JsonKey(name: "customer_note")
  String get customerNote;
  @override
  @JsonKey(name: "date_completed")
  DateTime? get dateCompleted;
  @override
  @JsonKey(name: "date_paid")
  DateTime? get datePaid;
  @override
  @JsonKey(name: "cart_hash")
  String get cartHash;
  @override
  @JsonKey(name: "number")
  String get number;
  @override
  @JsonKey(name: "line_items")
  List<LineItem>? get lineItems;
  @override
  @JsonKey(name: "tax_lines")
  List<TaxLine>? get taxLines;
  @override
  @JsonKey(name: "shipping_lines")
  List<ShippingLine>? get shippingLines;
  @override
  @JsonKey(name: "fee_lines")
  List<FeeLine> get feeLines;
  @override // @JsonKey(name: "coupon_lines")
// final List<dynamic> couponLines,
// @JsonKey(name: "refunds")
// final List<dynamic> refunds,
  @JsonKey(name: "payment_url")
  String get paymentUrl;
  @override
  @JsonKey(name: "is_editable")
  bool get isEditable;
  @override
  @JsonKey(name: "needs_payment")
  bool get needsPayment;
  @override
  @JsonKey(name: "needs_processing")
  bool get needsProcessing;
  @override
  @JsonKey(name: "date_created_gmt")
  DateTime? get dateCreatedGmt;
  @override
  @JsonKey(name: "date_modified_gmt")
  DateTime? get dateModifiedGmt;
  @override
  @JsonKey(name: "date_completed_gmt")
  DateTime? get dateCompletedGmt;
  @override
  @JsonKey(name: "date_paid_gmt")
  DateTime? get datePaidGmt;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "final_amount")
  String? get finalAmount;
  @override
  @JsonKey(name: "currency_symbol")
  String? get currencySymbol;
  @override
  @JsonKey(name: "weight")
  String? get weight;
  @override
  @JsonKey(name: "weight_unit")
  String? get weightUnit;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}

FeeLine _$FeeLineFromJson(Map<String, dynamic> json) {
  return _FeeLine.fromJson(json);
}

/// @nodoc
mixin _$FeeLine {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  String get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeeLineCopyWith<FeeLine> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeeLineCopyWith<$Res> {
  factory $FeeLineCopyWith(FeeLine value, $Res Function(FeeLine) then) =
      _$FeeLineCopyWithImpl<$Res, FeeLine>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "total") String total});
}

/// @nodoc
class _$FeeLineCopyWithImpl<$Res, $Val extends FeeLine>
    implements $FeeLineCopyWith<$Res> {
  _$FeeLineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeeLineCopyWith<$Res> implements $FeeLineCopyWith<$Res> {
  factory _$$_FeeLineCopyWith(
          _$_FeeLine value, $Res Function(_$_FeeLine) then) =
      __$$_FeeLineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "total") String total});
}

/// @nodoc
class __$$_FeeLineCopyWithImpl<$Res>
    extends _$FeeLineCopyWithImpl<$Res, _$_FeeLine>
    implements _$$_FeeLineCopyWith<$Res> {
  __$$_FeeLineCopyWithImpl(_$_FeeLine _value, $Res Function(_$_FeeLine) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? total = null,
  }) {
    return _then(_$_FeeLine(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeeLine implements _FeeLine {
  const _$_FeeLine(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "total") required this.total});

  factory _$_FeeLine.fromJson(Map<String, dynamic> json) =>
      _$$_FeeLineFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "total")
  final String total;

  @override
  String toString() {
    return 'FeeLine(id: $id, name: $name, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeeLine &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeeLineCopyWith<_$_FeeLine> get copyWith =>
      __$$_FeeLineCopyWithImpl<_$_FeeLine>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeeLineToJson(
      this,
    );
  }
}

abstract class _FeeLine implements FeeLine {
  const factory _FeeLine(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "total") required final String total}) = _$_FeeLine;

  factory _FeeLine.fromJson(Map<String, dynamic> json) = _$_FeeLine.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "total")
  String get total;
  @override
  @JsonKey(ignore: true)
  _$$_FeeLineCopyWith<_$_FeeLine> get copyWith =>
      throw _privateConstructorUsedError;
}

Ing _$IngFromJson(Map<String, dynamic> json) {
  return _Ing.fromJson(json);
}

/// @nodoc
mixin _$Ing {
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "company")
  String? get company => throw _privateConstructorUsedError;
  @JsonKey(name: "address_1")
  String? get address1 => throw _privateConstructorUsedError;
  @JsonKey(name: "address_2")
  String? get address2 => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: "state")
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: "postcode")
  String? get postcode => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngCopyWith<Ing> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngCopyWith<$Res> {
  factory $IngCopyWith(Ing value, $Res Function(Ing) then) =
      _$IngCopyWithImpl<$Res, Ing>;
  @useResult
  $Res call(
      {@JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "company") String? company,
      @JsonKey(name: "address_1") String? address1,
      @JsonKey(name: "address_2") String? address2,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "postcode") String? postcode,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone});
}

/// @nodoc
class _$IngCopyWithImpl<$Res, $Val extends Ing> implements $IngCopyWith<$Res> {
  _$IngCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? company = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_IngCopyWith<$Res> implements $IngCopyWith<$Res> {
  factory _$$_IngCopyWith(_$_Ing value, $Res Function(_$_Ing) then) =
      __$$_IngCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "company") String? company,
      @JsonKey(name: "address_1") String? address1,
      @JsonKey(name: "address_2") String? address2,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "postcode") String? postcode,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone});
}

/// @nodoc
class __$$_IngCopyWithImpl<$Res> extends _$IngCopyWithImpl<$Res, _$_Ing>
    implements _$$_IngCopyWith<$Res> {
  __$$_IngCopyWithImpl(_$_Ing _value, $Res Function(_$_Ing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? company = freezed,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? postcode = freezed,
    Object? country = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$_Ing(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
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
class _$_Ing implements _Ing {
  const _$_Ing(
      {@JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "last_name") this.lastName,
      @JsonKey(name: "company") this.company,
      @JsonKey(name: "address_1") this.address1,
      @JsonKey(name: "address_2") this.address2,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "state") this.state,
      @JsonKey(name: "postcode") this.postcode,
      @JsonKey(name: "country") this.country,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "phone") this.phone});

  factory _$_Ing.fromJson(Map<String, dynamic> json) => _$$_IngFromJson(json);

  @override
  @JsonKey(name: "first_name")
  final String? firstName;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  @JsonKey(name: "company")
  final String? company;
  @override
  @JsonKey(name: "address_1")
  final String? address1;
  @override
  @JsonKey(name: "address_2")
  final String? address2;
  @override
  @JsonKey(name: "city")
  final String? city;
  @override
  @JsonKey(name: "state")
  final String? state;
  @override
  @JsonKey(name: "postcode")
  final String? postcode;
  @override
  @JsonKey(name: "country")
  final String? country;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "phone")
  final String? phone;

  @override
  String toString() {
    return 'Ing(firstName: $firstName, lastName: $lastName, company: $company, address1: $address1, address2: $address2, city: $city, state: $state, postcode: $postcode, country: $country, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ing &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
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
  int get hashCode => Object.hash(runtimeType, firstName, lastName, company,
      address1, address2, city, state, postcode, country, email, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngCopyWith<_$_Ing> get copyWith =>
      __$$_IngCopyWithImpl<_$_Ing>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IngToJson(
      this,
    );
  }
}

abstract class _Ing implements Ing {
  const factory _Ing(
      {@JsonKey(name: "first_name") final String? firstName,
      @JsonKey(name: "last_name") final String? lastName,
      @JsonKey(name: "company") final String? company,
      @JsonKey(name: "address_1") final String? address1,
      @JsonKey(name: "address_2") final String? address2,
      @JsonKey(name: "city") final String? city,
      @JsonKey(name: "state") final String? state,
      @JsonKey(name: "postcode") final String? postcode,
      @JsonKey(name: "country") final String? country,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "phone") final String? phone}) = _$_Ing;

  factory _Ing.fromJson(Map<String, dynamic> json) = _$_Ing.fromJson;

  @override
  @JsonKey(name: "first_name")
  String? get firstName;
  @override
  @JsonKey(name: "last_name")
  String? get lastName;
  @override
  @JsonKey(name: "company")
  String? get company;
  @override
  @JsonKey(name: "address_1")
  String? get address1;
  @override
  @JsonKey(name: "address_2")
  String? get address2;
  @override
  @JsonKey(name: "city")
  String? get city;
  @override
  @JsonKey(name: "state")
  String? get state;
  @override
  @JsonKey(name: "postcode")
  String? get postcode;
  @override
  @JsonKey(name: "country")
  String? get country;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$_IngCopyWith<_$_Ing> get copyWith => throw _privateConstructorUsedError;
}

LineItem _$LineItemFromJson(Map<String, dynamic> json) {
  return _LineItem.fromJson(json);
}

/// @nodoc
mixin _$LineItem {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "variation_id")
  int get variationId => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_class")
  String get taxClass => throw _privateConstructorUsedError;
  @JsonKey(name: "subtotal")
  String get subtotal => throw _privateConstructorUsedError;
  @JsonKey(name: "subtotal_tax")
  String get subtotalTax => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  String get total => throw _privateConstructorUsedError;
  @JsonKey(name: "total_tax")
  String get totalTax => throw _privateConstructorUsedError;
  @JsonKey(name: "taxes")
  List<Tax>? get taxes => throw _privateConstructorUsedError;
  @JsonKey(name: "sku")
  String get sku => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  Image? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_name")
  String? get parentName => throw _privateConstructorUsedError;
  @JsonKey(name: 'bundled_by', fromJson: parseInter)
  int get bundledBy =>
      throw _privateConstructorUsedError; //@JsonKey(name: "bundled_by")
//final String? bundledBy,
  @JsonKey(name: "bundled_item_title")
  String? get bundledItemTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "bundled_items")
  List<int> get bundledItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LineItemCopyWith<LineItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineItemCopyWith<$Res> {
  factory $LineItemCopyWith(LineItem value, $Res Function(LineItem) then) =
      _$LineItemCopyWithImpl<$Res, LineItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "product_id") int productId,
      @JsonKey(name: "variation_id") int variationId,
      @JsonKey(name: "quantity") int quantity,
      @JsonKey(name: "tax_class") String taxClass,
      @JsonKey(name: "subtotal") String subtotal,
      @JsonKey(name: "subtotal_tax") String subtotalTax,
      @JsonKey(name: "total") String total,
      @JsonKey(name: "total_tax") String totalTax,
      @JsonKey(name: "taxes") List<Tax>? taxes,
      @JsonKey(name: "sku") String sku,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "image") Image? image,
      @JsonKey(name: "parent_name") String? parentName,
      @JsonKey(name: 'bundled_by', fromJson: parseInter) int bundledBy,
      @JsonKey(name: "bundled_item_title") String? bundledItemTitle,
      @JsonKey(name: "bundled_items") List<int> bundledItems});

  $ImageCopyWith<$Res>? get image;
}

/// @nodoc
class _$LineItemCopyWithImpl<$Res, $Val extends LineItem>
    implements $LineItemCopyWith<$Res> {
  _$LineItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? productId = null,
    Object? variationId = null,
    Object? quantity = null,
    Object? taxClass = null,
    Object? subtotal = null,
    Object? subtotalTax = null,
    Object? total = null,
    Object? totalTax = null,
    Object? taxes = freezed,
    Object? sku = null,
    Object? price = null,
    Object? image = freezed,
    Object? parentName = freezed,
    Object? bundledBy = null,
    Object? bundledItemTitle = freezed,
    Object? bundledItems = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      variationId: null == variationId
          ? _value.variationId
          : variationId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      taxClass: null == taxClass
          ? _value.taxClass
          : taxClass // ignore: cast_nullable_to_non_nullable
              as String,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as String,
      subtotalTax: null == subtotalTax
          ? _value.subtotalTax
          : subtotalTax // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      totalTax: null == totalTax
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as String,
      taxes: freezed == taxes
          ? _value.taxes
          : taxes // ignore: cast_nullable_to_non_nullable
              as List<Tax>?,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image?,
      parentName: freezed == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String?,
      bundledBy: null == bundledBy
          ? _value.bundledBy
          : bundledBy // ignore: cast_nullable_to_non_nullable
              as int,
      bundledItemTitle: freezed == bundledItemTitle
          ? _value.bundledItemTitle
          : bundledItemTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      bundledItems: null == bundledItems
          ? _value.bundledItems
          : bundledItems // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LineItemCopyWith<$Res> implements $LineItemCopyWith<$Res> {
  factory _$$_LineItemCopyWith(
          _$_LineItem value, $Res Function(_$_LineItem) then) =
      __$$_LineItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "product_id") int productId,
      @JsonKey(name: "variation_id") int variationId,
      @JsonKey(name: "quantity") int quantity,
      @JsonKey(name: "tax_class") String taxClass,
      @JsonKey(name: "subtotal") String subtotal,
      @JsonKey(name: "subtotal_tax") String subtotalTax,
      @JsonKey(name: "total") String total,
      @JsonKey(name: "total_tax") String totalTax,
      @JsonKey(name: "taxes") List<Tax>? taxes,
      @JsonKey(name: "sku") String sku,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "image") Image? image,
      @JsonKey(name: "parent_name") String? parentName,
      @JsonKey(name: 'bundled_by', fromJson: parseInter) int bundledBy,
      @JsonKey(name: "bundled_item_title") String? bundledItemTitle,
      @JsonKey(name: "bundled_items") List<int> bundledItems});

  @override
  $ImageCopyWith<$Res>? get image;
}

/// @nodoc
class __$$_LineItemCopyWithImpl<$Res>
    extends _$LineItemCopyWithImpl<$Res, _$_LineItem>
    implements _$$_LineItemCopyWith<$Res> {
  __$$_LineItemCopyWithImpl(
      _$_LineItem _value, $Res Function(_$_LineItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? productId = null,
    Object? variationId = null,
    Object? quantity = null,
    Object? taxClass = null,
    Object? subtotal = null,
    Object? subtotalTax = null,
    Object? total = null,
    Object? totalTax = null,
    Object? taxes = freezed,
    Object? sku = null,
    Object? price = null,
    Object? image = freezed,
    Object? parentName = freezed,
    Object? bundledBy = null,
    Object? bundledItemTitle = freezed,
    Object? bundledItems = null,
  }) {
    return _then(_$_LineItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      variationId: null == variationId
          ? _value.variationId
          : variationId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      taxClass: null == taxClass
          ? _value.taxClass
          : taxClass // ignore: cast_nullable_to_non_nullable
              as String,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as String,
      subtotalTax: null == subtotalTax
          ? _value.subtotalTax
          : subtotalTax // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      totalTax: null == totalTax
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as String,
      taxes: freezed == taxes
          ? _value._taxes
          : taxes // ignore: cast_nullable_to_non_nullable
              as List<Tax>?,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image?,
      parentName: freezed == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String?,
      bundledBy: null == bundledBy
          ? _value.bundledBy
          : bundledBy // ignore: cast_nullable_to_non_nullable
              as int,
      bundledItemTitle: freezed == bundledItemTitle
          ? _value.bundledItemTitle
          : bundledItemTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      bundledItems: null == bundledItems
          ? _value._bundledItems
          : bundledItems // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LineItem implements _LineItem {
  const _$_LineItem(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "product_id") required this.productId,
      @JsonKey(name: "variation_id") required this.variationId,
      @JsonKey(name: "quantity") required this.quantity,
      @JsonKey(name: "tax_class") required this.taxClass,
      @JsonKey(name: "subtotal") required this.subtotal,
      @JsonKey(name: "subtotal_tax") required this.subtotalTax,
      @JsonKey(name: "total") required this.total,
      @JsonKey(name: "total_tax") required this.totalTax,
      @JsonKey(name: "taxes") final List<Tax>? taxes = const <Tax>[],
      @JsonKey(name: "sku") required this.sku,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "parent_name") this.parentName,
      @JsonKey(name: 'bundled_by', fromJson: parseInter) this.bundledBy = 0,
      @JsonKey(name: "bundled_item_title") this.bundledItemTitle,
      @JsonKey(name: "bundled_items")
      final List<int> bundledItems = const <int>[]})
      : _taxes = taxes,
        _bundledItems = bundledItems;

  factory _$_LineItem.fromJson(Map<String, dynamic> json) =>
      _$$_LineItemFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "product_id")
  final int productId;
  @override
  @JsonKey(name: "variation_id")
  final int variationId;
  @override
  @JsonKey(name: "quantity")
  final int quantity;
  @override
  @JsonKey(name: "tax_class")
  final String taxClass;
  @override
  @JsonKey(name: "subtotal")
  final String subtotal;
  @override
  @JsonKey(name: "subtotal_tax")
  final String subtotalTax;
  @override
  @JsonKey(name: "total")
  final String total;
  @override
  @JsonKey(name: "total_tax")
  final String totalTax;
  final List<Tax>? _taxes;
  @override
  @JsonKey(name: "taxes")
  List<Tax>? get taxes {
    final value = _taxes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "sku")
  final String sku;
  @override
  @JsonKey(name: "price")
  final double price;
  @override
  @JsonKey(name: "image")
  final Image? image;
  @override
  @JsonKey(name: "parent_name")
  final String? parentName;
  @override
  @JsonKey(name: 'bundled_by', fromJson: parseInter)
  final int bundledBy;
//@JsonKey(name: "bundled_by")
//final String? bundledBy,
  @override
  @JsonKey(name: "bundled_item_title")
  final String? bundledItemTitle;
  final List<int> _bundledItems;
  @override
  @JsonKey(name: "bundled_items")
  List<int> get bundledItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bundledItems);
  }

  @override
  String toString() {
    return 'LineItem(id: $id, name: $name, productId: $productId, variationId: $variationId, quantity: $quantity, taxClass: $taxClass, subtotal: $subtotal, subtotalTax: $subtotalTax, total: $total, totalTax: $totalTax, taxes: $taxes, sku: $sku, price: $price, image: $image, parentName: $parentName, bundledBy: $bundledBy, bundledItemTitle: $bundledItemTitle, bundledItems: $bundledItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LineItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.variationId, variationId) ||
                other.variationId == variationId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.taxClass, taxClass) ||
                other.taxClass == taxClass) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.subtotalTax, subtotalTax) ||
                other.subtotalTax == subtotalTax) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalTax, totalTax) ||
                other.totalTax == totalTax) &&
            const DeepCollectionEquality().equals(other._taxes, _taxes) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.parentName, parentName) ||
                other.parentName == parentName) &&
            (identical(other.bundledBy, bundledBy) ||
                other.bundledBy == bundledBy) &&
            (identical(other.bundledItemTitle, bundledItemTitle) ||
                other.bundledItemTitle == bundledItemTitle) &&
            const DeepCollectionEquality()
                .equals(other._bundledItems, _bundledItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      productId,
      variationId,
      quantity,
      taxClass,
      subtotal,
      subtotalTax,
      total,
      totalTax,
      const DeepCollectionEquality().hash(_taxes),
      sku,
      price,
      image,
      parentName,
      bundledBy,
      bundledItemTitle,
      const DeepCollectionEquality().hash(_bundledItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LineItemCopyWith<_$_LineItem> get copyWith =>
      __$$_LineItemCopyWithImpl<_$_LineItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LineItemToJson(
      this,
    );
  }
}

abstract class _LineItem implements LineItem {
  const factory _LineItem(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "product_id") required final int productId,
      @JsonKey(name: "variation_id") required final int variationId,
      @JsonKey(name: "quantity") required final int quantity,
      @JsonKey(name: "tax_class") required final String taxClass,
      @JsonKey(name: "subtotal") required final String subtotal,
      @JsonKey(name: "subtotal_tax") required final String subtotalTax,
      @JsonKey(name: "total") required final String total,
      @JsonKey(name: "total_tax") required final String totalTax,
      @JsonKey(name: "taxes") final List<Tax>? taxes,
      @JsonKey(name: "sku") required final String sku,
      @JsonKey(name: "price") required final double price,
      @JsonKey(name: "image") final Image? image,
      @JsonKey(name: "parent_name") final String? parentName,
      @JsonKey(name: 'bundled_by', fromJson: parseInter) final int bundledBy,
      @JsonKey(name: "bundled_item_title") final String? bundledItemTitle,
      @JsonKey(name: "bundled_items")
      final List<int> bundledItems}) = _$_LineItem;

  factory _LineItem.fromJson(Map<String, dynamic> json) = _$_LineItem.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "product_id")
  int get productId;
  @override
  @JsonKey(name: "variation_id")
  int get variationId;
  @override
  @JsonKey(name: "quantity")
  int get quantity;
  @override
  @JsonKey(name: "tax_class")
  String get taxClass;
  @override
  @JsonKey(name: "subtotal")
  String get subtotal;
  @override
  @JsonKey(name: "subtotal_tax")
  String get subtotalTax;
  @override
  @JsonKey(name: "total")
  String get total;
  @override
  @JsonKey(name: "total_tax")
  String get totalTax;
  @override
  @JsonKey(name: "taxes")
  List<Tax>? get taxes;
  @override
  @JsonKey(name: "sku")
  String get sku;
  @override
  @JsonKey(name: "price")
  double get price;
  @override
  @JsonKey(name: "image")
  Image? get image;
  @override
  @JsonKey(name: "parent_name")
  String? get parentName;
  @override
  @JsonKey(name: 'bundled_by', fromJson: parseInter)
  int get bundledBy;
  @override //@JsonKey(name: "bundled_by")
//final String? bundledBy,
  @JsonKey(name: "bundled_item_title")
  String? get bundledItemTitle;
  @override
  @JsonKey(name: "bundled_items")
  List<int> get bundledItems;
  @override
  @JsonKey(ignore: true)
  _$$_LineItemCopyWith<_$_LineItem> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "src")
  String get src => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call({@JsonKey(name: "id") String id, @JsonKey(name: "src") String src});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? src = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$_ImageCopyWith(_$_Image value, $Res Function(_$_Image) then) =
      __$$_ImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "id") String id, @JsonKey(name: "src") String src});
}

/// @nodoc
class __$$_ImageCopyWithImpl<$Res> extends _$ImageCopyWithImpl<$Res, _$_Image>
    implements _$$_ImageCopyWith<$Res> {
  __$$_ImageCopyWithImpl(_$_Image _value, $Res Function(_$_Image) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? src = null,
  }) {
    return _then(_$_Image(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Image implements _Image {
  const _$_Image(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "src") required this.src});

  factory _$_Image.fromJson(Map<String, dynamic> json) =>
      _$$_ImageFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "src")
  final String src;

  @override
  String toString() {
    return 'Image(id: $id, src: $src)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Image &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.src, src) || other.src == src));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, src);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageCopyWith<_$_Image> get copyWith =>
      __$$_ImageCopyWithImpl<_$_Image>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "src") required final String src}) = _$_Image;

  factory _Image.fromJson(Map<String, dynamic> json) = _$_Image.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "src")
  String get src;
  @override
  @JsonKey(ignore: true)
  _$$_ImageCopyWith<_$_Image> get copyWith =>
      throw _privateConstructorUsedError;
}

Tax _$TaxFromJson(Map<String, dynamic> json) {
  return _Tax.fromJson(json);
}

/// @nodoc
mixin _$Tax {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  String get total => throw _privateConstructorUsedError;
  @JsonKey(name: "subtotal")
  String get subtotal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaxCopyWith<Tax> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxCopyWith<$Res> {
  factory $TaxCopyWith(Tax value, $Res Function(Tax) then) =
      _$TaxCopyWithImpl<$Res, Tax>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "total") String total,
      @JsonKey(name: "subtotal") String subtotal});
}

/// @nodoc
class _$TaxCopyWithImpl<$Res, $Val extends Tax> implements $TaxCopyWith<$Res> {
  _$TaxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? total = null,
    Object? subtotal = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaxCopyWith<$Res> implements $TaxCopyWith<$Res> {
  factory _$$_TaxCopyWith(_$_Tax value, $Res Function(_$_Tax) then) =
      __$$_TaxCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "total") String total,
      @JsonKey(name: "subtotal") String subtotal});
}

/// @nodoc
class __$$_TaxCopyWithImpl<$Res> extends _$TaxCopyWithImpl<$Res, _$_Tax>
    implements _$$_TaxCopyWith<$Res> {
  __$$_TaxCopyWithImpl(_$_Tax _value, $Res Function(_$_Tax) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? total = null,
    Object? subtotal = null,
  }) {
    return _then(_$_Tax(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tax implements _Tax {
  const _$_Tax(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "total") required this.total,
      @JsonKey(name: "subtotal") required this.subtotal});

  factory _$_Tax.fromJson(Map<String, dynamic> json) => _$$_TaxFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "total")
  final String total;
  @override
  @JsonKey(name: "subtotal")
  final String subtotal;

  @override
  String toString() {
    return 'Tax(id: $id, total: $total, subtotal: $subtotal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tax &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, total, subtotal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaxCopyWith<_$_Tax> get copyWith =>
      __$$_TaxCopyWithImpl<_$_Tax>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaxToJson(
      this,
    );
  }
}

abstract class _Tax implements Tax {
  const factory _Tax(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "total") required final String total,
      @JsonKey(name: "subtotal") required final String subtotal}) = _$_Tax;

  factory _Tax.fromJson(Map<String, dynamic> json) = _$_Tax.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "total")
  String get total;
  @override
  @JsonKey(name: "subtotal")
  String get subtotal;
  @override
  @JsonKey(ignore: true)
  _$$_TaxCopyWith<_$_Tax> get copyWith => throw _privateConstructorUsedError;
}

ShippingLine _$ShippingLineFromJson(Map<String, dynamic> json) {
  return _ShippingLine.fromJson(json);
}

/// @nodoc
mixin _$ShippingLine {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "method_title")
  String get methodTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "method_id")
  String get methodId => throw _privateConstructorUsedError;
  @JsonKey(name: "instance_id")
  String get instanceId => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  String get total => throw _privateConstructorUsedError;
  @JsonKey(name: "total_tax")
  String get totalTax => throw _privateConstructorUsedError;
  @JsonKey(name: "taxes")
  List<Tax> get taxes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShippingLineCopyWith<ShippingLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingLineCopyWith<$Res> {
  factory $ShippingLineCopyWith(
          ShippingLine value, $Res Function(ShippingLine) then) =
      _$ShippingLineCopyWithImpl<$Res, ShippingLine>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "method_title") String methodTitle,
      @JsonKey(name: "method_id") String methodId,
      @JsonKey(name: "instance_id") String instanceId,
      @JsonKey(name: "total") String total,
      @JsonKey(name: "total_tax") String totalTax,
      @JsonKey(name: "taxes") List<Tax> taxes});
}

/// @nodoc
class _$ShippingLineCopyWithImpl<$Res, $Val extends ShippingLine>
    implements $ShippingLineCopyWith<$Res> {
  _$ShippingLineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? methodTitle = null,
    Object? methodId = null,
    Object? instanceId = null,
    Object? total = null,
    Object? totalTax = null,
    Object? taxes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      methodTitle: null == methodTitle
          ? _value.methodTitle
          : methodTitle // ignore: cast_nullable_to_non_nullable
              as String,
      methodId: null == methodId
          ? _value.methodId
          : methodId // ignore: cast_nullable_to_non_nullable
              as String,
      instanceId: null == instanceId
          ? _value.instanceId
          : instanceId // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      totalTax: null == totalTax
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as String,
      taxes: null == taxes
          ? _value.taxes
          : taxes // ignore: cast_nullable_to_non_nullable
              as List<Tax>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShippingLineCopyWith<$Res>
    implements $ShippingLineCopyWith<$Res> {
  factory _$$_ShippingLineCopyWith(
          _$_ShippingLine value, $Res Function(_$_ShippingLine) then) =
      __$$_ShippingLineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "method_title") String methodTitle,
      @JsonKey(name: "method_id") String methodId,
      @JsonKey(name: "instance_id") String instanceId,
      @JsonKey(name: "total") String total,
      @JsonKey(name: "total_tax") String totalTax,
      @JsonKey(name: "taxes") List<Tax> taxes});
}

/// @nodoc
class __$$_ShippingLineCopyWithImpl<$Res>
    extends _$ShippingLineCopyWithImpl<$Res, _$_ShippingLine>
    implements _$$_ShippingLineCopyWith<$Res> {
  __$$_ShippingLineCopyWithImpl(
      _$_ShippingLine _value, $Res Function(_$_ShippingLine) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? methodTitle = null,
    Object? methodId = null,
    Object? instanceId = null,
    Object? total = null,
    Object? totalTax = null,
    Object? taxes = null,
  }) {
    return _then(_$_ShippingLine(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      methodTitle: null == methodTitle
          ? _value.methodTitle
          : methodTitle // ignore: cast_nullable_to_non_nullable
              as String,
      methodId: null == methodId
          ? _value.methodId
          : methodId // ignore: cast_nullable_to_non_nullable
              as String,
      instanceId: null == instanceId
          ? _value.instanceId
          : instanceId // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      totalTax: null == totalTax
          ? _value.totalTax
          : totalTax // ignore: cast_nullable_to_non_nullable
              as String,
      taxes: null == taxes
          ? _value._taxes
          : taxes // ignore: cast_nullable_to_non_nullable
              as List<Tax>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShippingLine implements _ShippingLine {
  const _$_ShippingLine(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "method_title") required this.methodTitle,
      @JsonKey(name: "method_id") required this.methodId,
      @JsonKey(name: "instance_id") required this.instanceId,
      @JsonKey(name: "total") required this.total,
      @JsonKey(name: "total_tax") required this.totalTax,
      @JsonKey(name: "taxes") final List<Tax> taxes = const <Tax>[]})
      : _taxes = taxes;

  factory _$_ShippingLine.fromJson(Map<String, dynamic> json) =>
      _$$_ShippingLineFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "method_title")
  final String methodTitle;
  @override
  @JsonKey(name: "method_id")
  final String methodId;
  @override
  @JsonKey(name: "instance_id")
  final String instanceId;
  @override
  @JsonKey(name: "total")
  final String total;
  @override
  @JsonKey(name: "total_tax")
  final String totalTax;
  final List<Tax> _taxes;
  @override
  @JsonKey(name: "taxes")
  List<Tax> get taxes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taxes);
  }

  @override
  String toString() {
    return 'ShippingLine(id: $id, methodTitle: $methodTitle, methodId: $methodId, instanceId: $instanceId, total: $total, totalTax: $totalTax, taxes: $taxes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShippingLine &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.methodTitle, methodTitle) ||
                other.methodTitle == methodTitle) &&
            (identical(other.methodId, methodId) ||
                other.methodId == methodId) &&
            (identical(other.instanceId, instanceId) ||
                other.instanceId == instanceId) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalTax, totalTax) ||
                other.totalTax == totalTax) &&
            const DeepCollectionEquality().equals(other._taxes, _taxes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, methodTitle, methodId,
      instanceId, total, totalTax, const DeepCollectionEquality().hash(_taxes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShippingLineCopyWith<_$_ShippingLine> get copyWith =>
      __$$_ShippingLineCopyWithImpl<_$_ShippingLine>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShippingLineToJson(
      this,
    );
  }
}

abstract class _ShippingLine implements ShippingLine {
  const factory _ShippingLine(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "method_title") required final String methodTitle,
      @JsonKey(name: "method_id") required final String methodId,
      @JsonKey(name: "instance_id") required final String instanceId,
      @JsonKey(name: "total") required final String total,
      @JsonKey(name: "total_tax") required final String totalTax,
      @JsonKey(name: "taxes") final List<Tax> taxes}) = _$_ShippingLine;

  factory _ShippingLine.fromJson(Map<String, dynamic> json) =
      _$_ShippingLine.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "method_title")
  String get methodTitle;
  @override
  @JsonKey(name: "method_id")
  String get methodId;
  @override
  @JsonKey(name: "instance_id")
  String get instanceId;
  @override
  @JsonKey(name: "total")
  String get total;
  @override
  @JsonKey(name: "total_tax")
  String get totalTax;
  @override
  @JsonKey(name: "taxes")
  List<Tax> get taxes;
  @override
  @JsonKey(ignore: true)
  _$$_ShippingLineCopyWith<_$_ShippingLine> get copyWith =>
      throw _privateConstructorUsedError;
}

TaxLine _$TaxLineFromJson(Map<String, dynamic> json) {
  return _TaxLine.fromJson(json);
}

/// @nodoc
mixin _$TaxLine {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "rate_code")
  String? get rateCode => throw _privateConstructorUsedError;
  @JsonKey(name: "rate_id")
  int? get rateId => throw _privateConstructorUsedError;
  @JsonKey(name: "label")
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: "compound")
  bool? get compound => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_total")
  String? get taxTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_tax_total")
  String? get shippingTaxTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "rate_percent")
  int? get ratePercent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaxLineCopyWith<TaxLine> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxLineCopyWith<$Res> {
  factory $TaxLineCopyWith(TaxLine value, $Res Function(TaxLine) then) =
      _$TaxLineCopyWithImpl<$Res, TaxLine>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "rate_code") String? rateCode,
      @JsonKey(name: "rate_id") int? rateId,
      @JsonKey(name: "label") String? label,
      @JsonKey(name: "compound") bool? compound,
      @JsonKey(name: "tax_total") String? taxTotal,
      @JsonKey(name: "shipping_tax_total") String? shippingTaxTotal,
      @JsonKey(name: "rate_percent") int? ratePercent});
}

/// @nodoc
class _$TaxLineCopyWithImpl<$Res, $Val extends TaxLine>
    implements $TaxLineCopyWith<$Res> {
  _$TaxLineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rateCode = freezed,
    Object? rateId = freezed,
    Object? label = freezed,
    Object? compound = freezed,
    Object? taxTotal = freezed,
    Object? shippingTaxTotal = freezed,
    Object? ratePercent = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      rateCode: freezed == rateCode
          ? _value.rateCode
          : rateCode // ignore: cast_nullable_to_non_nullable
              as String?,
      rateId: freezed == rateId
          ? _value.rateId
          : rateId // ignore: cast_nullable_to_non_nullable
              as int?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      compound: freezed == compound
          ? _value.compound
          : compound // ignore: cast_nullable_to_non_nullable
              as bool?,
      taxTotal: freezed == taxTotal
          ? _value.taxTotal
          : taxTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingTaxTotal: freezed == shippingTaxTotal
          ? _value.shippingTaxTotal
          : shippingTaxTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      ratePercent: freezed == ratePercent
          ? _value.ratePercent
          : ratePercent // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaxLineCopyWith<$Res> implements $TaxLineCopyWith<$Res> {
  factory _$$_TaxLineCopyWith(
          _$_TaxLine value, $Res Function(_$_TaxLine) then) =
      __$$_TaxLineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "rate_code") String? rateCode,
      @JsonKey(name: "rate_id") int? rateId,
      @JsonKey(name: "label") String? label,
      @JsonKey(name: "compound") bool? compound,
      @JsonKey(name: "tax_total") String? taxTotal,
      @JsonKey(name: "shipping_tax_total") String? shippingTaxTotal,
      @JsonKey(name: "rate_percent") int? ratePercent});
}

/// @nodoc
class __$$_TaxLineCopyWithImpl<$Res>
    extends _$TaxLineCopyWithImpl<$Res, _$_TaxLine>
    implements _$$_TaxLineCopyWith<$Res> {
  __$$_TaxLineCopyWithImpl(_$_TaxLine _value, $Res Function(_$_TaxLine) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rateCode = freezed,
    Object? rateId = freezed,
    Object? label = freezed,
    Object? compound = freezed,
    Object? taxTotal = freezed,
    Object? shippingTaxTotal = freezed,
    Object? ratePercent = freezed,
  }) {
    return _then(_$_TaxLine(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      rateCode: freezed == rateCode
          ? _value.rateCode
          : rateCode // ignore: cast_nullable_to_non_nullable
              as String?,
      rateId: freezed == rateId
          ? _value.rateId
          : rateId // ignore: cast_nullable_to_non_nullable
              as int?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      compound: freezed == compound
          ? _value.compound
          : compound // ignore: cast_nullable_to_non_nullable
              as bool?,
      taxTotal: freezed == taxTotal
          ? _value.taxTotal
          : taxTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingTaxTotal: freezed == shippingTaxTotal
          ? _value.shippingTaxTotal
          : shippingTaxTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      ratePercent: freezed == ratePercent
          ? _value.ratePercent
          : ratePercent // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaxLine implements _TaxLine {
  const _$_TaxLine(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "rate_code") this.rateCode,
      @JsonKey(name: "rate_id") this.rateId,
      @JsonKey(name: "label") this.label,
      @JsonKey(name: "compound") this.compound,
      @JsonKey(name: "tax_total") this.taxTotal,
      @JsonKey(name: "shipping_tax_total") this.shippingTaxTotal,
      @JsonKey(name: "rate_percent") this.ratePercent});

  factory _$_TaxLine.fromJson(Map<String, dynamic> json) =>
      _$$_TaxLineFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "rate_code")
  final String? rateCode;
  @override
  @JsonKey(name: "rate_id")
  final int? rateId;
  @override
  @JsonKey(name: "label")
  final String? label;
  @override
  @JsonKey(name: "compound")
  final bool? compound;
  @override
  @JsonKey(name: "tax_total")
  final String? taxTotal;
  @override
  @JsonKey(name: "shipping_tax_total")
  final String? shippingTaxTotal;
  @override
  @JsonKey(name: "rate_percent")
  final int? ratePercent;

  @override
  String toString() {
    return 'TaxLine(id: $id, rateCode: $rateCode, rateId: $rateId, label: $label, compound: $compound, taxTotal: $taxTotal, shippingTaxTotal: $shippingTaxTotal, ratePercent: $ratePercent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaxLine &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rateCode, rateCode) ||
                other.rateCode == rateCode) &&
            (identical(other.rateId, rateId) || other.rateId == rateId) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.compound, compound) ||
                other.compound == compound) &&
            (identical(other.taxTotal, taxTotal) ||
                other.taxTotal == taxTotal) &&
            (identical(other.shippingTaxTotal, shippingTaxTotal) ||
                other.shippingTaxTotal == shippingTaxTotal) &&
            (identical(other.ratePercent, ratePercent) ||
                other.ratePercent == ratePercent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, rateCode, rateId, label,
      compound, taxTotal, shippingTaxTotal, ratePercent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaxLineCopyWith<_$_TaxLine> get copyWith =>
      __$$_TaxLineCopyWithImpl<_$_TaxLine>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaxLineToJson(
      this,
    );
  }
}

abstract class _TaxLine implements TaxLine {
  const factory _TaxLine(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "rate_code") final String? rateCode,
      @JsonKey(name: "rate_id") final int? rateId,
      @JsonKey(name: "label") final String? label,
      @JsonKey(name: "compound") final bool? compound,
      @JsonKey(name: "tax_total") final String? taxTotal,
      @JsonKey(name: "shipping_tax_total") final String? shippingTaxTotal,
      @JsonKey(name: "rate_percent") final int? ratePercent}) = _$_TaxLine;

  factory _TaxLine.fromJson(Map<String, dynamic> json) = _$_TaxLine.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "rate_code")
  String? get rateCode;
  @override
  @JsonKey(name: "rate_id")
  int? get rateId;
  @override
  @JsonKey(name: "label")
  String? get label;
  @override
  @JsonKey(name: "compound")
  bool? get compound;
  @override
  @JsonKey(name: "tax_total")
  String? get taxTotal;
  @override
  @JsonKey(name: "shipping_tax_total")
  String? get shippingTaxTotal;
  @override
  @JsonKey(name: "rate_percent")
  int? get ratePercent;
  @override
  @JsonKey(ignore: true)
  _$$_TaxLineCopyWith<_$_TaxLine> get copyWith =>
      throw _privateConstructorUsedError;
}
