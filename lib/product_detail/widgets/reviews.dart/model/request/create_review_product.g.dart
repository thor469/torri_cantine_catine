// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_review_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateReviewProduct _$$_CreateReviewProductFromJson(
        Map<String, dynamic> json) =>
    _$_CreateReviewProduct(
      product_id: (json['product_id'] as num).toInt(),
      review: json['review'] as String?,
      reviewer: json['reviewer'] as String?,
      reviewer_email: json['reviewer_email'] as String?,
      date_created: json['date_created'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$_CreateReviewProductToJson(
        _$_CreateReviewProduct instance) =>
    <String, dynamic>{
      'product_id': instance.product_id,
      'review': instance.review,
      'reviewer': instance.reviewer,
      'reviewer_email': instance.reviewer_email,
      'date_created': instance.date_created,
      'rating': instance.rating,
    };
