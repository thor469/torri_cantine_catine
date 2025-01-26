// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_all_orders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListAllOrdersResponse _$$_ListAllOrdersResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListAllOrdersResponse(
      orders: (json['orders'] as List<dynamic>?)
              ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Order>[],
    );

Map<String, dynamic> _$$_ListAllOrdersResponseToJson(
        _$_ListAllOrdersResponse instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      id: (json['id'] as num).toInt(),
      parentId: (json['parent_id'] as num).toInt(),
      status: json['status'] as String,
      currency: json['currency'] as String,
      version: json['version'] as String,
      pricesIncludeTax: json['prices_include_tax'] as bool,
      dateCreated: DateTime.parse(json['date_created'] as String),
      dateModified: DateTime.parse(json['date_modified'] as String),
      discountTotal: json['discount_total'] as String,
      discountTax: json['discount_tax'] as String,
      shippingTotal: json['shipping_total'] as String,
      shippingTax: json['shipping_tax'] as String,
      cartTax: json['cart_tax'] as String,
      total: json['total'] as String,
      totalTax: json['total_tax'] as String,
      customerId: (json['customer_id'] as num).toInt(),
      orderKey: json['order_key'] as String,
      billing: Ing.fromJson(json['billing'] as Map<String, dynamic>),
      shipping: Ing.fromJson(json['shipping'] as Map<String, dynamic>),
      paymentMethod: json['payment_method'] as String,
      paymentMethodTitle: json['payment_method_title'] as String,
      transactionId: json['transaction_id'] as String,
      customerIpAddress: json['customer_ip_address'] as String,
      customerUserAgent: json['customer_user_agent'] as String,
      createdVia: json['created_via'] as String,
      customerNote: json['customer_note'] as String,
      dateCompleted: json['date_completed'] == null
          ? null
          : DateTime.parse(json['date_completed'] as String),
      datePaid: json['date_paid'] == null
          ? null
          : DateTime.parse(json['date_paid'] as String),
      cartHash: json['cart_hash'] as String,
      number: json['number'] as String,
      lineItems: (json['line_items'] as List<dynamic>?)
              ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <LineItem>[],
      taxLines: (json['tax_lines'] as List<dynamic>?)
              ?.map((e) => TaxLine.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <TaxLine>[],
      shippingLines: (json['shipping_lines'] as List<dynamic>?)
              ?.map((e) => ShippingLine.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ShippingLine>[],
      feeLines: (json['fee_lines'] as List<dynamic>?)
              ?.map((e) => FeeLine.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <FeeLine>[],
      paymentUrl: json['payment_url'] as String,
      isEditable: json['is_editable'] as bool,
      needsPayment: json['needs_payment'] as bool,
      needsProcessing: json['needs_processing'] as bool,
      dateCreatedGmt: json['date_created_gmt'] == null
          ? null
          : DateTime.parse(json['date_created_gmt'] as String),
      dateModifiedGmt: json['date_modified_gmt'] == null
          ? null
          : DateTime.parse(json['date_modified_gmt'] as String),
      dateCompletedGmt: json['date_completed_gmt'] == null
          ? null
          : DateTime.parse(json['date_completed_gmt'] as String),
      datePaidGmt: json['date_paid_gmt'] == null
          ? null
          : DateTime.parse(json['date_paid_gmt'] as String),
      email: json['email'] as String?,
      finalAmount: json['final_amount'] as String?,
      currencySymbol: json['currency_symbol'] as String?,
      weight: json['weight'] as String?,
      weightUnit: json['weight_unit'] as String?,
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'status': instance.status,
      'currency': instance.currency,
      'version': instance.version,
      'prices_include_tax': instance.pricesIncludeTax,
      'date_created': instance.dateCreated.toIso8601String(),
      'date_modified': instance.dateModified.toIso8601String(),
      'discount_total': instance.discountTotal,
      'discount_tax': instance.discountTax,
      'shipping_total': instance.shippingTotal,
      'shipping_tax': instance.shippingTax,
      'cart_tax': instance.cartTax,
      'total': instance.total,
      'total_tax': instance.totalTax,
      'customer_id': instance.customerId,
      'order_key': instance.orderKey,
      'billing': instance.billing,
      'shipping': instance.shipping,
      'payment_method': instance.paymentMethod,
      'payment_method_title': instance.paymentMethodTitle,
      'transaction_id': instance.transactionId,
      'customer_ip_address': instance.customerIpAddress,
      'customer_user_agent': instance.customerUserAgent,
      'created_via': instance.createdVia,
      'customer_note': instance.customerNote,
      'date_completed': instance.dateCompleted?.toIso8601String(),
      'date_paid': instance.datePaid?.toIso8601String(),
      'cart_hash': instance.cartHash,
      'number': instance.number,
      'line_items': instance.lineItems,
      'tax_lines': instance.taxLines,
      'shipping_lines': instance.shippingLines,
      'fee_lines': instance.feeLines,
      'payment_url': instance.paymentUrl,
      'is_editable': instance.isEditable,
      'needs_payment': instance.needsPayment,
      'needs_processing': instance.needsProcessing,
      'date_created_gmt': instance.dateCreatedGmt?.toIso8601String(),
      'date_modified_gmt': instance.dateModifiedGmt?.toIso8601String(),
      'date_completed_gmt': instance.dateCompletedGmt?.toIso8601String(),
      'date_paid_gmt': instance.datePaidGmt?.toIso8601String(),
      'email': instance.email,
      'final_amount': instance.finalAmount,
      'currency_symbol': instance.currencySymbol,
      'weight': instance.weight,
      'weight_unit': instance.weightUnit,
    };

_$_FeeLine _$$_FeeLineFromJson(Map<String, dynamic> json) => _$_FeeLine(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      total: json['total'] as String,
    );

Map<String, dynamic> _$$_FeeLineToJson(_$_FeeLine instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'total': instance.total,
    };

_$_Ing _$$_IngFromJson(Map<String, dynamic> json) => _$_Ing(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      company: json['company'] as String?,
      address1: json['address_1'] as String?,
      address2: json['address_2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$_IngToJson(_$_Ing instance) => <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'company': instance.company,
      'address_1': instance.address1,
      'address_2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'postcode': instance.postcode,
      'country': instance.country,
      'email': instance.email,
      'phone': instance.phone,
    };

_$_LineItem _$$_LineItemFromJson(Map<String, dynamic> json) => _$_LineItem(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      productId: (json['product_id'] as num).toInt(),
      variationId: (json['variation_id'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      taxClass: json['tax_class'] as String,
      subtotal: json['subtotal'] as String,
      subtotalTax: json['subtotal_tax'] as String,
      total: json['total'] as String,
      totalTax: json['total_tax'] as String,
      taxes: (json['taxes'] as List<dynamic>?)
              ?.map((e) => Tax.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Tax>[],
      sku: json['sku'] as String,
      price: (json['price'] as num).toDouble(),
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
      parentName: json['parent_name'] as String?,
      bundledBy:
          json['bundled_by'] == null ? 0 : parseInter(json['bundled_by']),
      bundledItemTitle: json['bundled_item_title'] as String?,
      bundledItems: (json['bundled_items'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const <int>[],
    );

Map<String, dynamic> _$$_LineItemToJson(_$_LineItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'product_id': instance.productId,
      'variation_id': instance.variationId,
      'quantity': instance.quantity,
      'tax_class': instance.taxClass,
      'subtotal': instance.subtotal,
      'subtotal_tax': instance.subtotalTax,
      'total': instance.total,
      'total_tax': instance.totalTax,
      'taxes': instance.taxes,
      'sku': instance.sku,
      'price': instance.price,
      'image': instance.image,
      'parent_name': instance.parentName,
      'bundled_by': instance.bundledBy,
      'bundled_item_title': instance.bundledItemTitle,
      'bundled_items': instance.bundledItems,
    };

_$_Image _$$_ImageFromJson(Map<String, dynamic> json) => _$_Image(
      id: json['id'] as String,
      src: json['src'] as String,
    );

Map<String, dynamic> _$$_ImageToJson(_$_Image instance) => <String, dynamic>{
      'id': instance.id,
      'src': instance.src,
    };

_$_Tax _$$_TaxFromJson(Map<String, dynamic> json) => _$_Tax(
      id: (json['id'] as num).toInt(),
      total: json['total'] as String,
      subtotal: json['subtotal'] as String,
    );

Map<String, dynamic> _$$_TaxToJson(_$_Tax instance) => <String, dynamic>{
      'id': instance.id,
      'total': instance.total,
      'subtotal': instance.subtotal,
    };

_$_ShippingLine _$$_ShippingLineFromJson(Map<String, dynamic> json) =>
    _$_ShippingLine(
      id: (json['id'] as num).toInt(),
      methodTitle: json['method_title'] as String,
      methodId: json['method_id'] as String,
      instanceId: json['instance_id'] as String,
      total: json['total'] as String,
      totalTax: json['total_tax'] as String,
      taxes: (json['taxes'] as List<dynamic>?)
              ?.map((e) => Tax.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Tax>[],
    );

Map<String, dynamic> _$$_ShippingLineToJson(_$_ShippingLine instance) =>
    <String, dynamic>{
      'id': instance.id,
      'method_title': instance.methodTitle,
      'method_id': instance.methodId,
      'instance_id': instance.instanceId,
      'total': instance.total,
      'total_tax': instance.totalTax,
      'taxes': instance.taxes,
    };

_$_TaxLine _$$_TaxLineFromJson(Map<String, dynamic> json) => _$_TaxLine(
      id: (json['id'] as num).toInt(),
      rateCode: json['rate_code'] as String?,
      rateId: (json['rate_id'] as num?)?.toInt(),
      label: json['label'] as String?,
      compound: json['compound'] as bool?,
      taxTotal: json['tax_total'] as String?,
      shippingTaxTotal: json['shipping_tax_total'] as String?,
      ratePercent: (json['rate_percent'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$_TaxLineToJson(_$_TaxLine instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rate_code': instance.rateCode,
      'rate_id': instance.rateId,
      'label': instance.label,
      'compound': instance.compound,
      'tax_total': instance.taxTotal,
      'shipping_tax_total': instance.shippingTaxTotal,
      'rate_percent': instance.ratePercent,
    };
