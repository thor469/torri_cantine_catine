import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'all_products_response.freezed.dart';
part 'all_products_response.g.dart';

@freezed
class AllProductsResponse extends ResponseBase with _$AllProductsResponse {
  factory AllProductsResponse({
    @Default(<Product>[]) List<Product>? products,
  }) = _AllProductsResponse;

  factory AllProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$AllProductsResponseFromJson(json);
}

@freezed
class Product with _$Product {
  factory Product({
    required int id,
    required String name,
    String? price,
    String? regular_price,
    String? description,
    String? short_description,
    String? average_rating,
    String? type,
    bool? featured,
    String? date_created,
    int? points,
    @Default(<ImageProduct>[]) List<ImageProduct> images,
    @Default(<ProductTags>[]) List<ProductTags>? tags, 
    @Default(<MetaData>[]) List<MetaData>? metadata,
    @Default(<ProductCategories>[]) List<ProductCategories>? categories,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
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
class MetaData with _$MetaData {
  factory MetaData({
    required int id,
    required String key,
    required String value,
  }) = _MetaData;

  factory MetaData.fromJson(Map<String, dynamic> json) =>
      _$MetaDataFromJson(json);
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
class ProductCategories with _$ProductCategories {
  factory ProductCategories({
    required int id,
    required String name,
    required String slug,
  }) = _ProductCategories;

  factory ProductCategories.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoriesFromJson(json);
}

