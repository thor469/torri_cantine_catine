part of 'reviews_bloc.dart';

@freezed
class ReviewsState with _$ReviewsState {
  const factory ReviewsState.initial() = _Initial;
  const factory ReviewsState.loading() = _Loading;
  const factory ReviewsState.loaded(ReviewsResponse response) = _Loaded;
  const factory ReviewsState.error() = _Error;
}