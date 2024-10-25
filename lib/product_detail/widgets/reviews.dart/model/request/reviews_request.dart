import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'reviews_request.freezed.dart';
part 'reviews_request.g.dart';

@freezed
class ReviewsRequest extends RequestBase with _$ReviewsRequest {
  ReviewsRequest._();
  factory ReviewsRequest({
    required List<int> product,
    required int page,
    required int per_page,
  }) = _ReviewsRequest;

  factory ReviewsRequest.fromJson(Map<String, dynamic> json) =>
      _$ReviewsRequestFromJson(json);

  @override
  String get endpoint => '/wp-json/wc/v3/products/reviews';
}
