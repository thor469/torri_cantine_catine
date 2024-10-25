// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewsRequest _$$_ReviewsRequestFromJson(Map<String, dynamic> json) =>
    _$_ReviewsRequest(
      product: (json['product'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      page: (json['page'] as num).toInt(),
      per_page: (json['per_page'] as num).toInt(),
    );

Map<String, dynamic> _$$_ReviewsRequestToJson(_$_ReviewsRequest instance) =>
    <String, dynamic>{
      'product': instance.product,
      'page': instance.page,
      'per_page': instance.per_page,
    };
