// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchProducts _$$_SearchProductsFromJson(Map<String, dynamic> json) =>
    _$_SearchProducts(
      maxPages: (json['filter[limit]'] as num).toInt(),
      pageNumber: (json['page'] as num).toInt(),
      limit: (json['per_page'] as num).toInt(),
      query: json['search'] as String?,
      catalogVisibility: json['catalog_visibility'] as String?,
    );

Map<String, dynamic> _$$_SearchProductsToJson(_$_SearchProducts instance) =>
    <String, dynamic>{
      'filter[limit]': instance.maxPages,
      'page': instance.pageNumber,
      'per_page': instance.limit,
      'search': instance.query,
      'catalog_visibility': instance.catalogVisibility,
    };
