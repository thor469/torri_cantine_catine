// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AllProductsResponse _$$_AllProductsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_AllProductsResponse(
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Product>[],
    );

Map<String, dynamic> _$$_AllProductsResponseToJson(
        _$_AllProductsResponse instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: json['price'] as String?,
      regular_price: json['regular_price'] as String?,
      description: json['description'] as String?,
      short_description: json['short_description'] as String?,
      average_rating: json['average_rating'] as String?,
      type: json['type'] as String?,
      featured: json['featured'] as bool?,
      date_created: json['date_created'] as String?,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ImageProduct>[],
      tags: (json['tags'] as List<dynamic>?)
              ?.map((e) => ProductTags.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductTags>[],
      metadata: (json['metadata'] as List<dynamic>?)
              ?.map((e) => MetaData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MetaData>[],
      categories: (json['categories'] as List<dynamic>?)
              ?.map(
                  (e) => ProductCategories.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductCategories>[],
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'regular_price': instance.regular_price,
      'description': instance.description,
      'short_description': instance.short_description,
      'average_rating': instance.average_rating,
      'type': instance.type,
      'featured': instance.featured,
      'date_created': instance.date_created,
      'images': instance.images,
      'tags': instance.tags,
      'metadata': instance.metadata,
      'categories': instance.categories,
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

_$_MetaData _$$_MetaDataFromJson(Map<String, dynamic> json) => _$_MetaData(
      id: (json['id'] as num).toInt(),
      key: json['key'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$_MetaDataToJson(_$_MetaData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'value': instance.value,
    };

_$_ProductTags _$$_ProductTagsFromJson(Map<String, dynamic> json) =>
    _$_ProductTags(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$$_ProductTagsToJson(_$_ProductTags instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

_$_ProductCategories _$$_ProductCategoriesFromJson(Map<String, dynamic> json) =>
    _$_ProductCategories(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$$_ProductCategoriesToJson(
        _$_ProductCategories instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };
