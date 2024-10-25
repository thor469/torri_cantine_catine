part of 'reviews_bloc.dart';

@freezed
class ReviewsEvent with _$ReviewsEvent {
  const factory ReviewsEvent.fetch(int product_id) = _Fetch;
  const factory ReviewsEvent.createReview(
    int product_id,
    String? review,
    String? reviewer,
    String? reviewer_email,
    String? date_created,
    int? rating,
  ) = _CreateReview;
}
