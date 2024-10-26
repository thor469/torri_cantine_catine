import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'cart_response.freezed.dart';
part 'cart_response.g.dart';





Map<String, dynamic> extensionsParser(dynamic input) {

  print('### PARSEINTER extensionsParser');
  print(input);
  print(input.runtimeType);

  // if (input == null) return {};
  if (input.runtimeType == List<dynamic>) return { "bundles": {} } ;

  return input;
  // if (input is String) {
  //   return int.parse(input);
  // } else {
  //   return input;
  // }
}





@freezed
class CartResponse extends ResponseBase with _$CartResponse {
  factory CartResponse({
    @Default(<Items>[]) final List<Items> items,
    required final Totals totals,
    @JsonKey(name: 'items_count') required final int totalItems,
    @JsonKey(name: "coupons")
    final List<Coupon?>? coupons,
  }) = _CartResponse;

  factory CartResponse.fromJson(Map<String, dynamic> json) =>
      _$CartResponseFromJson(json);
}

@freezed
class Totals with _$Totals {
  factory Totals({
    @JsonKey(name: 'total_items') required final String totalItems,
    @JsonKey(name: 'total_items_tax') required final String totalItemsTax,
    @JsonKey(name: 'total_discount')  final String? totalDiscount,
    @JsonKey(name: 'total_discount_tax')  final String? totalDiscountTax,
    @JsonKey(name: 'total_price')  final String? totalPrice,
    @JsonKey(name: 'total_tax')  final String? totalTax,
    @JsonKey(name: 'total_shipping')  final String? totalShipping,
    @JsonKey(name: 'total_shipping_tax')  final String? totalShippingTax,


  }) = _Totals;

  //final String total_items_taxed = (double.tryParse(totalItems)+double.tryParse(totalItems).toStringAsFixed(2)).toString();

  factory Totals.fromJson(Map<String, dynamic> json) => _$TotalsFromJson(json);
}



@freezed
class Coupon with _$Coupon {
  const factory Coupon({
    @JsonKey(name: "code")
    required String code,
    @JsonKey(name: "discount_type")
    required String discountType,
    @JsonKey(name: "totals")
    required CouponTotals totals,
  }) = _Coupon;

  factory Coupon.fromJson(Map<String, dynamic> json) => _$CouponFromJson(json);
}

@freezed
class CouponTotals with _$CouponTotals {
  const factory CouponTotals({
    @JsonKey(name: "total_discount")
    required String totalDiscount,
    @JsonKey(name: "total_discount_tax")
    required String totalDiscountTax,
    @JsonKey(name: "currency_code")
    required String currencyCode,
    @JsonKey(name: "currency_symbol")
    required String currencySymbol,
    @JsonKey(name: "currency_minor_unit")
    required int currencyMinorUnit,
    @JsonKey(name: "currency_decimal_separator")
    required String currencyDecimalSeparator,
    @JsonKey(name: "currency_thousand_separator")
    required String currencyThousandSeparator,
    @JsonKey(name: "currency_prefix")
    required String currencyPrefix,
    @JsonKey(name: "currency_suffix")
    required String currencySuffix,
  }) = _CouponTotals;

  factory CouponTotals.fromJson(Map<String, dynamic> json) => _$CouponTotalsFromJson(json);
}


@freezed
class Items with _$Items {
  factory Items({
    final int? id,
    final int? quantity,
    final String? description,
    final String? name,
    final String? key,
    @Default(<ImageProduct>[]) final List<ImageProduct> images,
    required Extensions? extensions,
    final Prices? prices,
  }) = _Items;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}





@freezed
class Extensions with _$Extensions {
  const factory Extensions({
    @Default({}) @JsonKey(name: 'bundles', fromJson: extensionsParser ) Map<String, dynamic> bundles,
    //Bundles? bundles,
  }) = _Extensions;

  factory Extensions.fromJson(Map<String, dynamic> json) => _$ExtensionsFromJson(json);
}

@freezed
class Bundles with _$Bundles {
  const factory Bundles({
    @JsonKey(name: 'bundled_by') final String? bundledBy,
    @JsonKey(name: 'bundled_item_data') final BundledItemData? bundledItemData,
    @JsonKey(name: 'bundled_items') final List<String>? bundledItems,
    @JsonKey(name: 'bundle_data') final BundleData? bundleData,
  }) = _Bundles;

  factory Bundles.fromJson(Map<String, dynamic> json) => _$BundlesFromJson(json);
}

@freezed
class BundleData with _$BundleData {
  const factory BundleData({
    final Map<String, Configuration>? configuration,
    @JsonKey(name: 'is_editable') final bool? isEditable,
    @JsonKey(name: 'is_price_hidden') final bool? isPriceHidden,
    @JsonKey(name: 'is_subtotal_hidden') final bool? isSubtotalHidden,
    @JsonKey(name: 'is_hidden') final bool? isHidden,
    @JsonKey(name: 'is_meta_hidden_in_cart') final bool? isMetaHiddenInCart,
    @JsonKey(name: 'is_meta_hidden_in_summary') final bool? isMetaHiddenInSummary,
  }) = _BundleData;

  factory BundleData.fromJson(Map<String, dynamic> json) => _$BundleDataFromJson(json);
}

@freezed
class Configuration with _$Configuration {
  const factory Configuration({
    @JsonKey(name: 'product_id') required int productId,
    required int quantity,
    final String? discount,
  }) = _Configuration;

  factory Configuration.fromJson(Map<String, dynamic> json) => _$ConfigurationFromJson(json);
}

@freezed
class BundledItemData with _$BundledItemData {
  const factory BundledItemData({
    @JsonKey(name: 'bundle_id') required int bundleId,
    @JsonKey(name: 'bundled_item_id') required int bundledItemId,
    @JsonKey(name: 'is_removable') final bool? isRemovable,
    @JsonKey(name: 'is_indented') final bool? isIndented,
    @JsonKey(name: 'is_subtotal_aggregated') final bool? isSubtotalAggregated,
    @JsonKey(name: 'is_parent_visible') final bool? isParentVisible,
    @JsonKey(name: 'is_last') final bool? isLast,
    @JsonKey(name: 'is_price_hidden') final bool? isPriceHidden,
    @JsonKey(name: 'is_subtotal_hidden') final bool? isSubtotalHidden,
    @JsonKey(name: 'is_thumbnail_hidden') final bool? isThumbnailHidden,
    @JsonKey(name: 'is_hidden_in_cart') final bool? isHiddenInCart,
    @JsonKey(name: 'is_hidden_in_summary') final bool? isHiddenInSummary,
  }) = _BundledItemData;

  factory BundledItemData.fromJson(Map<String, dynamic> json) => _$BundledItemDataFromJson(json);
}







@freezed
class ImageProduct with _$ImageProduct {
  factory ImageProduct({
    required final int id,
    required final String src,
  }) = _ImageProduct;

  factory ImageProduct.fromJson(Map<String, dynamic> json) =>
      _$ImageProductFromJson(json);
}

@freezed
class Prices with _$Prices {
  factory Prices({
    required final String price,
  }) = _Prices;

  factory Prices.fromJson(Map<String, dynamic> json) => _$PricesFromJson(json);
}
