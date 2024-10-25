// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filters_products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FiltersProducts _$$_FiltersProductsFromJson(Map<String, dynamic> json) =>
    _$_FiltersProducts(
      maxPages: (json['filter[limit]'] as num).toInt(),
      pageNumber: (json['page'] as num).toInt(),
      categories: json['category'] as String?,
      tags: json['tag'] as String?,
      minPrice: json['min_price'] as String?,
      maxPrice: json['max_price'] as String?,
      catalogVisibility: json['catalog_visibility'] as String?,
      productStatus: json['status'] as String?,
    );

Map<String, dynamic> _$$_FiltersProductsToJson(_$_FiltersProducts instance) =>
    <String, dynamic>{
      'filter[limit]': instance.maxPages,
      'page': instance.pageNumber,
      'category': instance.categories,
      'tag': instance.tags,
      'min_price': instance.minPrice,
      'max_price': instance.maxPrice,
      'catalog_visibility': instance.catalogVisibility,
      'status': instance.productStatus,
    };
