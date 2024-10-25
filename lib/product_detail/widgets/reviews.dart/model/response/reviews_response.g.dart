// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewsResponse _$$_ReviewsResponseFromJson(Map<String, dynamic> json) =>
    _$_ReviewsResponse(
      reviews: (json['reviews'] as List<dynamic>?)
              ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Review>[],
    );

Map<String, dynamic> _$$_ReviewsResponseToJson(_$_ReviewsResponse instance) =>
    <String, dynamic>{
      'reviews': instance.reviews,
    };

_$_Review _$$_ReviewFromJson(Map<String, dynamic> json) => _$_Review(
      product_id: (json['product_id'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toInt(),
      reviewer: json['reviewer'] as String?,
      date_created: json['date_created'] as String?,
      review: json['review'] as String?,
    );

Map<String, dynamic> _$$_ReviewToJson(_$_Review instance) => <String, dynamic>{
      'product_id': instance.product_id,
      'rating': instance.rating,
      'reviewer': instance.reviewer,
      'date_created': instance.date_created,
      'review': instance.review,
    };
