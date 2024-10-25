// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_tags_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductTagsResponse _$$_ProductTagsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ProductTagsResponse(
      tags: (json['tags'] as List<dynamic>?)
              ?.map((e) => ProductTags.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductTags>[],
    );

Map<String, dynamic> _$$_ProductTagsResponseToJson(
        _$_ProductTagsResponse instance) =>
    <String, dynamic>{
      'tags': instance.tags,
    };
