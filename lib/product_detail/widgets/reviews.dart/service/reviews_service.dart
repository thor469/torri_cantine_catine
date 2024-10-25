import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/model/request/create_review_product.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/model/request/reviews_request.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/model/response/reviews_response.dart';

class ReviewsService extends HttpServiceBase {
  ReviewsService(Dio dioInstance) : super(dioInstance);

  Future<ReviewsResponse> getReviews(ReviewsRequest request) =>
      getQuery(
        request: request,
        mapper: (json, _) => ReviewsResponse.fromJson(json),
        orElse: (json, data) =>
            ReviewsResponse.fromJson({'reviews': json}),
      );

       Future<ReviewsResponse> createReview(CreateReviewProduct request) =>
      postData(
        queryParameters: request.toData(),
        request: request,
        mapper: (json, _) => ReviewsResponse.fromJson(json),
        orElse: (json, data) =>
            ReviewsResponse.fromJson({'reviews': json}),
      );
}
