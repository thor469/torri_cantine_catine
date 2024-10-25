// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_products_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AllProductsRequest _$$_AllProductsRequestFromJson(
        Map<String, dynamic> json) =>
    _$_AllProductsRequest(
      maxPages: (json['per_page'] as num).toInt(),
      pageNumber: (json['page'] as num).toInt(),
      order: json['order'] as String?,
      orderBy: json['orderby'] as String?,
      productStatus: json['status'] as String?,
      catalogVisibility: json['catalog_visibility'] as String?,
    );

Map<String, dynamic> _$$_AllProductsRequestToJson(
        _$_AllProductsRequest instance) =>
    <String, dynamic>{
      'per_page': instance.maxPages,
      'page': instance.pageNumber,
      'order': instance.order,
      'orderby': instance.orderBy,
      'status': instance.productStatus,
      'catalog_visibility': instance.catalogVisibility,
    };
