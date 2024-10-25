import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'create_review_product.freezed.dart';
part 'create_review_product.g.dart';

@freezed
class CreateReviewProduct extends RequestBase with _$CreateReviewProduct {
  CreateReviewProduct._();
  factory CreateReviewProduct(
      {required int product_id,
      String? review,
      String? reviewer,
      String? reviewer_email,
      String? date_created,
      int? rating}) = _CreateReviewProduct;

  factory CreateReviewProduct.fromJson(Map<String, dynamic> json) =>
      _$CreateReviewProductFromJson(json);

  @override
  String get endpoint => '/wp-json/wc/v3/products/reviews';
  @override
  Map<String, dynamic> toData() {
    return {
      "product": product_id,
      "review": review,
      "reviewer": reviewer,
      "reviewer_email": reviewer_email,
      "date_created": date_created,
      "rating": rating,
    };
  }
}
