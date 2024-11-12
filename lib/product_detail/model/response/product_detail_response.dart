import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'product_detail_response.freezed.dart';
part 'product_detail_response.g.dart';


int parseInter(dynamic input) {

  // print('### PARSEINTER');
  // print(input);
  // print(input.runtimeType);

  if (input == null) return 0;
  if (input.runtimeType == String) return 0;
  if (input is String) {
  return int.parse(input);
  } else {
  return input;
  }
}

String? parseToString(dynamic input) {
  if (input == null) return null;
  return input.toString();
}


@freezed
class ProductDetailResponse extends ResponseBase with _$ProductDetailResponse {
  factory ProductDetailResponse({
    required String name,
    String? price,
    String? regular_price,
    String? description,
    String? type,
    bool? on_sale,
    String? short_description,
    String? average_rating,
    String? weight,
    bool? featured,
    @Default(0) @JsonKey(name: 'bundle_min_size', fromJson: parseInter ) int bundle_min_size,
    @Default(0) @JsonKey(name: 'bundle_max_size', fromJson: parseInter ) int bundle_max_size,
    // @Default(0) int? bundle_min_size,
    // @Default(0) int? bundle_max_size,
    String? bundle_stock_status,
    @JsonKey(fromJson: parseToString) String? bundle_stock_quantity,
    // String? bundle_stock_quantity,

    @Default(<ImageProduct>[]) List<ImageProduct>? images,
    @Default(<ProductTags>[]) List<ProductTags>? tags,
    @Default(<MetaData>[]) List<MetaData>? meta_data,
    @Default(<ProductCategories>[]) List<ProductCategories>? categories,
    @Default(<BundledItems>[]) List<BundledItems>? bundled_items,
  }) = _ProductDetailResponse;


  factory ProductDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailResponseFromJson(json);
}




@freezed
class BundledItems with _$BundledItems {
  factory BundledItems({
    required int bundled_item_id,
    required int product_id,
    required int menu_order,
    required int quantity_min,
    required int quantity_max,
    required int quantity_default,
    required bool priced_individually,
    required bool shipped_individually,
    required bool override_title,
    required bool override_description,
    required String description,
    required bool optional,
    required bool hide_thumbnail,
    required String discount,
    required bool override_variations,
    //allowed_variations: [],
    required bool override_default_variation_attributes,
    //default_variation_attributes: [],
    required String title,
    required String single_product_visibility,
    required String cart_visibility,
    required String order_visibility,
    required String single_product_price_visibility,
    required String cart_price_visibility,
    required String order_price_visibility,
    required String stock_status
  }) = _BundledItems;

  factory BundledItems.fromJson(Map<String, dynamic> json) =>
      _$BundledItemsFromJson(json);
}


@freezed
class ImageProduct with _$ImageProduct {
  factory ImageProduct({
    required int id,
    required String src,
  }) = _ImageProduct;

  factory ImageProduct.fromJson(Map<String, dynamic> json) =>
      _$ImageProductFromJson(json);
}





@freezed
class ProductTags with _$ProductTags {
  factory ProductTags({
    required int id,
    required String name,
    required String slug,
  }) = _ProductTags;

  factory ProductTags.fromJson(Map<String, dynamic> json) =>
      _$ProductTagsFromJson(json);
}


@freezed
class MetaData with _$MetaData {
  factory MetaData({
    required int id,
    required String key,
    dynamic value,
  }) = _MetaData;

  factory MetaData.fromJson(Map<String, dynamic> json) =>
      _$MetaDataFromJson(json);
}


@freezed
class ProductCategories with _$ProductCategories {
  factory ProductCategories({
    required int id,
    required String name,
    required String slug,
    ImageCategory? image,
  }) = _ProductCategories;

  factory ProductCategories.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoriesFromJson(json);
}

@freezed
class ImageCategory with _$ImageCategory {
  factory ImageCategory({
    required int id,
    required dynamic src,
  }) = _ImageCategory;

  factory ImageCategory.fromJson(Map<String, dynamic> json) =>
      _$ImageCategoryFromJson(json);
}
