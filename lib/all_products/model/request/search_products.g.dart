// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchProducts _$$_SearchProductsFromJson(Map<String, dynamic> json) =>
    _$_SearchProducts(
      maxPages: (json['filter[limit]'] as num).toInt(),
      query: json['search'] as String?,
      catalogVisibility: json['status'] as String?,
    );

Map<String, dynamic> _$$_SearchProductsToJson(_$_SearchProducts instance) =>
    <String, dynamic>{
      'filter[limit]': instance.maxPages,
      'search': instance.query,
      'status': instance.catalogVisibility,
    };
