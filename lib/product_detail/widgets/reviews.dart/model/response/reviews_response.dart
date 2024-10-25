import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'reviews_response.freezed.dart';
part 'reviews_response.g.dart';

@freezed
class ReviewsResponse extends ResponseBase with _$ReviewsResponse {
  factory ReviewsResponse({
    @Default(<Review>[]) List<Review>? reviews,
  }) = _ReviewsResponse;

  factory ReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewsResponseFromJson(json);
}

@freezed
class Review with _$Review {
  factory Review({
    int? product_id,
    int? rating,
    String? reviewer,
    String? date_created,
    String? review,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
