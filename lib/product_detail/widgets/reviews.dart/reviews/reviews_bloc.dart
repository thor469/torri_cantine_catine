import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/model/request/create_review_product.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/model/request/reviews_request.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/model/response/reviews_response.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/service/reviews_service.dart';

part 'reviews_state.dart';
part 'reviews_event.dart';
part 'reviews_bloc.freezed.dart';

class ReviewsBloc extends Bloc<ReviewsEvent, ReviewsState> {
  ReviewsService service;
  ReviewsBloc(this.service) : super(const _Initial());

  @override
  Stream<ReviewsState> mapEventToState(
    ReviewsEvent event,
  ) async* {
    yield* event.when(
      fetch: _fetch,
      createReview: _createReview,
    );
  }

  Stream<ReviewsState> _fetch(int productId) async* {
    yield const ReviewsState.initial();
    yield const ReviewsState.loading();
    try {
      List<int> productIdList = [productId];
      int pageNumber = 1;
      bool isHunderdReview = true;
      List<Review> listReview = [];
      do {
        final response = await service.getReviews(ReviewsRequest(
            product: productIdList, per_page: 100, page: pageNumber));

        listReview.addAll(response.reviews!);

        if (response.reviews!.length < 100) {
          isHunderdReview = false;
        }

        pageNumber++;
      } while (isHunderdReview);
      yield ReviewsState.loaded(
        ReviewsResponse(reviews: listReview),
      );
    } catch (e) {
      yield const ReviewsState.error();
    }
  }

  Stream<ReviewsState> _createReview(
    int product_id,
    String? review,
    String? reviewer,
    String? reviewer_email,
    String? date_created,
    int? rating,
  ) async* {
    yield const ReviewsState.initial();
    yield const ReviewsState.loading();
    try {
      final response = await service.createReview(
        CreateReviewProduct(
            product_id: product_id,
            review: review,
            reviewer: reviewer,
            reviewer_email: reviewer_email,
            date_created: date_created,
            rating: rating),
      );
      yield ReviewsState.loaded(response);
    } on ApiException catch (e) {
      yield const ReviewsState.error();
    }
  }
}
