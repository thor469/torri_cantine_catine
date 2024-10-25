// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoriesResponse _$$_CategoriesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CategoriesResponse(
      categories: (json['categories'] as List<dynamic>?)
              ?.map(
                  (e) => ProductCategories.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductCategories>[],
    );

Map<String, dynamic> _$$_CategoriesResponseToJson(
        _$_CategoriesResponse instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };
