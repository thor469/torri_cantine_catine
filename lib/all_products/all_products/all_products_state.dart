part of 'all_products_bloc.dart';

@freezed
class AllProductsState with _$AllProductsState {
  const factory AllProductsState.initial() = _Initial;
  const factory AllProductsState.loading(List<Product> model, int pageNumber) = _Loading;
  const factory AllProductsState.loaded(List<Product> model, int pageNumber) =
      _Loaded;
  const factory AllProductsState.error() = _Error;
}
