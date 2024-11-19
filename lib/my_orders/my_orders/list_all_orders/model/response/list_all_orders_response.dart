

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
part 'list_all_orders_response.freezed.dart';
part 'list_all_orders_response.g.dart';



int parseInter(dynamic input) {

  // print('### PARSEINTER');
  // print(input);
  // print(input.runtimeType);

  if (input == null || input =='') return 0;
  //if (input.runtimeType == String) return 0;
  if (input is String) {
    return int.parse(input);
  } else {
    return input;
  }
}




@freezed
class ListAllOrdersResponse extends ResponseBase with _$ListAllOrdersResponse {
  factory ListAllOrdersResponse({
   @Default(<Order>[]) List<Order>? orders,

  }) = _ListAllOrdersResponse;

  factory ListAllOrdersResponse.fromJson(Map<String, dynamic> json) =>
			_$ListAllOrdersResponseFromJson(json);
}




@freezed
class Order with _$Order {
  const factory Order({
    @JsonKey(name: "id")
    required int id,
    @JsonKey(name: "parent_id")
    required int parentId,
    @JsonKey(name: "status")
    required String status,
    @JsonKey(name: "currency")
    required String currency,
    @JsonKey(name: "version")
    required String version,
    @JsonKey(name: "prices_include_tax")
    required bool pricesIncludeTax,
    @JsonKey(name: "date_created")
    required DateTime dateCreated,
    @JsonKey(name: "date_modified")
    required DateTime dateModified,
    @JsonKey(name: "discount_total")
    required String discountTotal,
    @JsonKey(name: "discount_tax")
    required String discountTax,
    @JsonKey(name: "shipping_total")
    required String shippingTotal,
    @JsonKey(name: "shipping_tax")
    required String shippingTax,
    @JsonKey(name: "cart_tax")
    required String cartTax,
    @JsonKey(name: "total")
    required String total,
    @JsonKey(name: "total_tax")
    required String totalTax,
    @JsonKey(name: "customer_id")
    required int customerId,
    @JsonKey(name: "order_key")
    required String orderKey,
    @JsonKey(name: "billing")
    required Ing billing,
    @JsonKey(name: "shipping")
    required Ing shipping,
    @JsonKey(name: "payment_method")
    required String paymentMethod,
    @JsonKey(name: "payment_method_title")
    required String paymentMethodTitle,
    @JsonKey(name: "transaction_id")
    required String transactionId,
    @JsonKey(name: "customer_ip_address")
    required String customerIpAddress,
    @JsonKey(name: "customer_user_agent")
    required String customerUserAgent,
    @JsonKey(name: "created_via")
    required String createdVia,
    @JsonKey(name: "customer_note")
    required String customerNote,
    @JsonKey(name: "date_completed")
    final DateTime?dateCompleted,
    @JsonKey(name: "date_paid")
    final DateTime? datePaid,
    @JsonKey(name: "cart_hash")
    required String cartHash,
    @JsonKey(name: "number")
    required String number,
    @JsonKey(name: "line_items")
    @Default(<LineItem>[]) List<LineItem>?  lineItems,
    @JsonKey(name: "tax_lines")
    @Default(<TaxLine>[]) List<TaxLine>? taxLines,
    @JsonKey(name: "shipping_lines")
    @Default(<ShippingLine>[]) List<ShippingLine>? shippingLines,
    // @JsonKey(name: "fee_lines")
    // final List<dynamic> feeLines,
    // @JsonKey(name: "coupon_lines")
    // final List<dynamic> couponLines,
    // @JsonKey(name: "refunds")
    // final List<dynamic> refunds,
    @JsonKey(name: "payment_url")
    required String paymentUrl,
    @JsonKey(name: "is_editable")
    required bool isEditable,
    @JsonKey(name: "needs_payment")
    required bool needsPayment,
    @JsonKey(name: "needs_processing")
    required bool needsProcessing,
    @JsonKey(name: "date_created_gmt")
    final DateTime? dateCreatedGmt,
    @JsonKey(name: "date_modified_gmt")
    final DateTime? dateModifiedGmt,
    @JsonKey(name: "date_completed_gmt")
    final DateTime? dateCompletedGmt,
    @JsonKey(name: "date_paid_gmt")
    final DateTime? datePaidGmt,
    @JsonKey(name: "email")
    required String? email,
    @JsonKey(name: "final_amount")
    required String? finalAmount,
    @JsonKey(name: "currency_symbol")
    required String? currencySymbol,
    @JsonKey(name: "weight")
    required String? weight,
    @JsonKey(name: "weight_unit")
    required String? weightUnit,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

@freezed
class Ing with _$Ing {
  const factory Ing({
    @JsonKey(name: "first_name")
    final String? firstName,
    @JsonKey(name: "last_name")
    final String? lastName,
    @JsonKey(name: "company")
    final String? company,
    @JsonKey(name: "address_1")
    final String? address1,
    @JsonKey(name: "address_2")
    final String? address2,
    @JsonKey(name: "city")
    final String? city,
    @JsonKey(name: "state")
    final String? state,
    @JsonKey(name: "postcode")
    final String? postcode,
    @JsonKey(name: "country")
    final String? country,
    @JsonKey(name: "email")
    final String? email,
    @JsonKey(name: "phone")
    final String? phone,
  }) = _Ing;

  factory Ing.fromJson(Map<String, dynamic> json) => _$IngFromJson(json);
}

@freezed
class LineItem with _$LineItem {
  const factory LineItem({
    @JsonKey(name: "id")
    required int id,
    @JsonKey(name: "name")
    required String name,
    @JsonKey(name: "product_id")
    required int productId,
    @JsonKey(name: "variation_id")
    required int variationId,
    @JsonKey(name: "quantity")
    required int quantity,
    @JsonKey(name: "tax_class")
    required String taxClass,
    @JsonKey(name: "subtotal")
    required String subtotal,
    @JsonKey(name: "subtotal_tax")
    required String subtotalTax,
    @JsonKey(name: "total")
    required String total,
    @JsonKey(name: "total_tax")
    required String totalTax,
    @JsonKey(name: "taxes")
    @Default(<Tax>[]) List<Tax>? taxes,
    @JsonKey(name: "sku")
    required String sku,
    @JsonKey(name: "price")
    required double price,
    @JsonKey(name: "image")
    Image? image,
    @JsonKey(name: "parent_name")
    final String? parentName,
    @Default(0) @JsonKey(name: 'bundled_by', fromJson: parseInter ) int bundledBy,
    //@JsonKey(name: "bundled_by")
    //final String? bundledBy,
    @JsonKey(name: "bundled_item_title")
    final String? bundledItemTitle,
    @JsonKey(name: "bundled_items")
    @Default(<int>[]) List<int> bundledItems,
  }) = _LineItem;

  factory LineItem.fromJson(Map<String, dynamic> json) => _$LineItemFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    @JsonKey(name: "id")
    required String id,
    @JsonKey(name: "src")
    required String src,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class Tax with _$Tax {
  const factory Tax({
    @JsonKey(name: "id")
    required int id,
    @JsonKey(name: "total")
    required String total,
    @JsonKey(name: "subtotal")
    required String subtotal,
  }) = _Tax;

  factory Tax.fromJson(Map<String, dynamic> json) => _$TaxFromJson(json);
}

@freezed
class ShippingLine with _$ShippingLine {
  const factory ShippingLine({
    @JsonKey(name: "id")
    required int id,
    @JsonKey(name: "method_title")
    required String methodTitle,
    @JsonKey(name: "method_id")
    required String methodId,
    @JsonKey(name: "instance_id")
    required String instanceId,
    @JsonKey(name: "total")
    required String total,
    @JsonKey(name: "total_tax")
    required String totalTax,
    @JsonKey(name: "taxes")
    @Default(<Tax>[]) List<Tax> taxes,
  }) = _ShippingLine;

  factory ShippingLine.fromJson(Map<String, dynamic> json) => _$ShippingLineFromJson(json);
}

@freezed
class TaxLine with _$TaxLine {
  const factory TaxLine({
    @JsonKey(name: "id")
    required int id,
    @JsonKey(name: "rate_code")
    final String? rateCode,
    @JsonKey(name: "rate_id")
    final int? rateId,
    @JsonKey(name: "label")
    final String? label,
    @JsonKey(name: "compound")
    final bool? compound,
    @JsonKey(name: "tax_total")
    final String? taxTotal,
    @JsonKey(name: "shipping_tax_total")
    final String? shippingTaxTotal,
    @JsonKey(name: "rate_percent")
    final int? ratePercent,
  }) = _TaxLine;

  factory TaxLine.fromJson(Map<String, dynamic> json) => _$TaxLineFromJson(json);
}
//
// @freezed
// class ListAllOrdersResponse extends ResponseBase with _$ListAllOrdersResponse {
//   factory ListAllOrdersResponse({
//    @Default(<Order>[]) List<Order>? orders,
//
//   }) = _ListAllOrdersResponse;
//
//   factory ListAllOrdersResponse.fromJson(Map<String, dynamic> json) =>
// 			_$ListAllOrdersResponseFromJson(json);
// }
// @freezed
// class Order with _$Order {
//   factory Order({
//     int? id,
//     int? parent_id,
//     String? status,
//     String? total,
//     String? date_created,
//     String? shipping_total,
//     String? discount_total,
//     String? payment_method,
//     @Default(<LineItems>[]) List<LineItems>? line_items,
//   }) = _Order;
//
//   factory Order.fromJson(Map<String, dynamic> json) =>
//       _$OrderFromJson(json);
// }
//
// @freezed
// class LineItems with _$LineItems {
//   factory LineItems({
//     int? id,
//     String? total,
//     String? src,
//     int? product_id,
//     int? quantity,
//     String? name,
//    Image? image,
//   }) = _LineItems;
//
//   factory LineItems.fromJson(Map<String, dynamic> json) =>
//       _$LineItemsFromJson(json);
// }
//
// @freezed
// class Image with _$Image {
//   factory Image({
//     final String id,
//     final String src,
//   }) = _Image;
//
//   factory Image.fromJson(Map<String, dynamic> json) =>
//       _$ImageFromJson(json);
// }