import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/app/cache_manager/http_cache_manager.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/model/request/create_review_product.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/model/request/reviews_request.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/model/response/reviews_response.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/service/reviews_service.dart';

part 'reviews_state.dart';
part 'reviews_event.dart';
part 'reviews_bloc.freezed.dart';

class ReviewsBloc extends Bloc<ReviewsEvent, ReviewsState> {
  final ReviewsService service;
  final CacheManager<ReviewsResponse> cacheManager;

  ReviewsBloc(this.service)
      : cacheManager = CacheManager(cacheDuration: const Duration(minutes: 30)),
        super(const _Initial());

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
    yield const ReviewsState.loading();

// Verifica se i dati sono nella cache.
    final cacheKey = 'reviews_$productId';
    final cachedResponse = cacheManager.get(cacheKey);

    if (cachedResponse != null) {
      yield ReviewsState.loaded(cachedResponse);
      return;
    }

// Effettua una chiamata al servizio se i dati non sono in cache.
    try {
      List<int> productIdList = [productId];
      int pageNumber = 1;
      bool isHundredReview = true;
      List<Review> listReview = [];

      do {
        final response = await service.getReviews(
          ReviewsRequest(product: productIdList, per_page: 100, page: pageNumber),
        );

        listReview.addAll(response.reviews!);

        if (response.reviews!.length < 100) {
          isHundredReview = false;
        }

        pageNumber++;
      } while (isHundredReview);

      final finalResponse = ReviewsResponse(reviews: listReview);

// Salva i dati nella cache.
      cacheManager.set(cacheKey, finalResponse);

      yield ReviewsState.loaded(finalResponse);
    } catch (e) {
      yield const ReviewsState.error();
    }
  }


  Future<ReviewsResponse?> getReview(int productId) async {
    // Chiave univoca per il prodotto.
    final cacheKey = 'reviews_$productId';

    // Controlla la cache.
    final cachedResponse = cacheManager.get(cacheKey);
    if (cachedResponse != null) {
      // Restituisce i dati dalla cache se disponibili e validi.
      return cachedResponse;
    }

    // Dati non in cache, effettua la chiamata HTTP.
    try {
      List<int> productIdList = [productId];
      int pageNumber = 1;
      List<Review> listReview = [];
      bool isHundredReview = true;

      do {
        final response = await service.getReviews(
          ReviewsRequest(product: productIdList, per_page: 100, page: pageNumber),
        );

        listReview.addAll(response.reviews!);

        if (response.reviews!.length < 100) {
          isHundredReview = false;
        }

        pageNumber++;
      } while (isHundredReview);

      final finalResponse = ReviewsResponse(reviews: listReview);

      // Salva i dati nella cache.
      cacheManager.set(cacheKey, finalResponse);

      return finalResponse;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
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
    yield const ReviewsState.loading();

    try {
      final response = await service.createReview(
        CreateReviewProduct(
          product_id: product_id,
          review: review,
          reviewer: reviewer,
          reviewer_email: reviewer_email,
          date_created: date_created,
          rating: rating,
        ),
      );

// Invalida la cache per il prodotto specifico.
      final cacheKey = 'reviews_$product_id';
      cacheManager.set(cacheKey, response);

      yield ReviewsState.loaded(response);
    } on ApiException catch (e) {
      yield const ReviewsState.error();
    }
  }
}