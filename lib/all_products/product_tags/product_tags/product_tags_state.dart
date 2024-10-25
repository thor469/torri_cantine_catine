part of 'product_tags_bloc.dart';

@freezed
class ProductTagsState with _$ProductTagsState {
  const factory ProductTagsState.initial() = _Initial;
  const factory ProductTagsState.loading() = _Loading;
  const factory ProductTagsState.loaded(ProductTagsResponse model) = _Loaded;
  const factory ProductTagsState.error() = _Error;
}