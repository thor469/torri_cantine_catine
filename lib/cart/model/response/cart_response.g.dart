// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartResponse _$$_CartResponseFromJson(Map<String, dynamic> json) =>
    _$_CartResponse(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Items>[],
      totals: Totals.fromJson(json['totals'] as Map<String, dynamic>),
      totalItems: (json['items_count'] as num).toInt(),
      coupons: (json['coupons'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Coupon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CartResponseToJson(_$_CartResponse instance) =>
    <String, dynamic>{
      'items': instance.items,
      'totals': instance.totals,
      'items_count': instance.totalItems,
      'coupons': instance.coupons,
    };

_$_Totals _$$_TotalsFromJson(Map<String, dynamic> json) => _$_Totals(
      totalItems: json['total_items'] as String,
      totalItemsTax: json['total_items_tax'] as String,
      totalDiscount: json['total_discount'] as String?,
      totalDiscountTax: json['total_discount_tax'] as String?,
      totalPrice: json['total_price'] as String?,
      totalTax: json['total_tax'] as String?,
      totalShipping: json['total_shipping'] as String?,
      totalShippingTax: json['total_shipping_tax'] as String?,
    );

Map<String, dynamic> _$$_TotalsToJson(_$_Totals instance) => <String, dynamic>{
      'total_items': instance.totalItems,
      'total_items_tax': instance.totalItemsTax,
      'total_discount': instance.totalDiscount,
      'total_discount_tax': instance.totalDiscountTax,
      'total_price': instance.totalPrice,
      'total_tax': instance.totalTax,
      'total_shipping': instance.totalShipping,
      'total_shipping_tax': instance.totalShippingTax,
    };

_$_Coupon _$$_CouponFromJson(Map<String, dynamic> json) => _$_Coupon(
      code: json['code'] as String,
      discountType: json['discount_type'] as String,
      totals: CouponTotals.fromJson(json['totals'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CouponToJson(_$_Coupon instance) => <String, dynamic>{
      'code': instance.code,
      'discount_type': instance.discountType,
      'totals': instance.totals,
    };

_$_CouponTotals _$$_CouponTotalsFromJson(Map<String, dynamic> json) =>
    _$_CouponTotals(
      totalDiscount: json['total_discount'] as String,
      totalDiscountTax: json['total_discount_tax'] as String,
      currencyCode: json['currency_code'] as String,
      currencySymbol: json['currency_symbol'] as String,
      currencyMinorUnit: (json['currency_minor_unit'] as num).toInt(),
      currencyDecimalSeparator: json['currency_decimal_separator'] as String,
      currencyThousandSeparator: json['currency_thousand_separator'] as String,
      currencyPrefix: json['currency_prefix'] as String,
      currencySuffix: json['currency_suffix'] as String,
    );

Map<String, dynamic> _$$_CouponTotalsToJson(_$_CouponTotals instance) =>
    <String, dynamic>{
      'total_discount': instance.totalDiscount,
      'total_discount_tax': instance.totalDiscountTax,
      'currency_code': instance.currencyCode,
      'currency_symbol': instance.currencySymbol,
      'currency_minor_unit': instance.currencyMinorUnit,
      'currency_decimal_separator': instance.currencyDecimalSeparator,
      'currency_thousand_separator': instance.currencyThousandSeparator,
      'currency_prefix': instance.currencyPrefix,
      'currency_suffix': instance.currencySuffix,
    };

_$_Items _$$_ItemsFromJson(Map<String, dynamic> json) => _$_Items(
      id: (json['id'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      description: json['description'] as String?,
      name: json['name'] as String?,
      key: json['key'] as String?,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ImageProduct>[],
      extensions: json['extensions'] == null
          ? null
          : Extensions.fromJson(json['extensions'] as Map<String, dynamic>),
      prices: json['prices'] == null
          ? null
          : Prices.fromJson(json['prices'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemsToJson(_$_Items instance) => <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'description': instance.description,
      'name': instance.name,
      'key': instance.key,
      'images': instance.images,
      'extensions': instance.extensions,
      'prices': instance.prices,
    };

_$_Extensions _$$_ExtensionsFromJson(Map<String, dynamic> json) =>
    _$_Extensions(
      bundles: json['bundles'] == null
          ? const {}
          : extensionsParser(json['bundles']),
    );

Map<String, dynamic> _$$_ExtensionsToJson(_$_Extensions instance) =>
    <String, dynamic>{
      'bundles': instance.bundles,
    };

_$_Bundles _$$_BundlesFromJson(Map<String, dynamic> json) => _$_Bundles(
      bundledBy: json['bundled_by'] as String?,
      bundledItemData: json['bundled_item_data'] == null
          ? null
          : BundledItemData.fromJson(
              json['bundled_item_data'] as Map<String, dynamic>),
      bundledItems: (json['bundled_items'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      bundleData: json['bundle_data'] == null
          ? null
          : BundleData.fromJson(json['bundle_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BundlesToJson(_$_Bundles instance) =>
    <String, dynamic>{
      'bundled_by': instance.bundledBy,
      'bundled_item_data': instance.bundledItemData,
      'bundled_items': instance.bundledItems,
      'bundle_data': instance.bundleData,
    };

_$_BundleData _$$_BundleDataFromJson(Map<String, dynamic> json) =>
    _$_BundleData(
      configuration: (json['configuration'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, Configuration.fromJson(e as Map<String, dynamic>)),
      ),
      isEditable: json['is_editable'] as bool?,
      isPriceHidden: json['is_price_hidden'] as bool?,
      isSubtotalHidden: json['is_subtotal_hidden'] as bool?,
      isHidden: json['is_hidden'] as bool?,
      isMetaHiddenInCart: json['is_meta_hidden_in_cart'] as bool?,
      isMetaHiddenInSummary: json['is_meta_hidden_in_summary'] as bool?,
    );

Map<String, dynamic> _$$_BundleDataToJson(_$_BundleData instance) =>
    <String, dynamic>{
      'configuration': instance.configuration,
      'is_editable': instance.isEditable,
      'is_price_hidden': instance.isPriceHidden,
      'is_subtotal_hidden': instance.isSubtotalHidden,
      'is_hidden': instance.isHidden,
      'is_meta_hidden_in_cart': instance.isMetaHiddenInCart,
      'is_meta_hidden_in_summary': instance.isMetaHiddenInSummary,
    };

_$_Configuration _$$_ConfigurationFromJson(Map<String, dynamic> json) =>
    _$_Configuration(
      productId: (json['product_id'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      discount: json['discount'] as String?,
    );

Map<String, dynamic> _$$_ConfigurationToJson(_$_Configuration instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'quantity': instance.quantity,
      'discount': instance.discount,
    };

_$_BundledItemData _$$_BundledItemDataFromJson(Map<String, dynamic> json) =>
    _$_BundledItemData(
      bundleId: (json['bundle_id'] as num).toInt(),
      bundledItemId: (json['bundled_item_id'] as num).toInt(),
      isRemovable: json['is_removable'] as bool?,
      isIndented: json['is_indented'] as bool?,
      isSubtotalAggregated: json['is_subtotal_aggregated'] as bool?,
      isParentVisible: json['is_parent_visible'] as bool?,
      isLast: json['is_last'] as bool?,
      isPriceHidden: json['is_price_hidden'] as bool?,
      isSubtotalHidden: json['is_subtotal_hidden'] as bool?,
      isThumbnailHidden: json['is_thumbnail_hidden'] as bool?,
      isHiddenInCart: json['is_hidden_in_cart'] as bool?,
      isHiddenInSummary: json['is_hidden_in_summary'] as bool?,
    );

Map<String, dynamic> _$$_BundledItemDataToJson(_$_BundledItemData instance) =>
    <String, dynamic>{
      'bundle_id': instance.bundleId,
      'bundled_item_id': instance.bundledItemId,
      'is_removable': instance.isRemovable,
      'is_indented': instance.isIndented,
      'is_subtotal_aggregated': instance.isSubtotalAggregated,
      'is_parent_visible': instance.isParentVisible,
      'is_last': instance.isLast,
      'is_price_hidden': instance.isPriceHidden,
      'is_subtotal_hidden': instance.isSubtotalHidden,
      'is_thumbnail_hidden': instance.isThumbnailHidden,
      'is_hidden_in_cart': instance.isHiddenInCart,
      'is_hidden_in_summary': instance.isHiddenInSummary,
    };

_$_ImageProduct _$$_ImageProductFromJson(Map<String, dynamic> json) =>
    _$_ImageProduct(
      id: (json['id'] as num).toInt(),
      src: json['src'] as String,
    );

Map<String, dynamic> _$$_ImageProductToJson(_$_ImageProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'src': instance.src,
    };

_$_Prices _$$_PricesFromJson(Map<String, dynamic> json) => _$_Prices(
      price: json['price'] as String,
    );

Map<String, dynamic> _$$_PricesToJson(_$_Prices instance) => <String, dynamic>{
      'price': instance.price,
    };
