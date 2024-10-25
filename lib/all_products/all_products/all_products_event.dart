part of 'all_products_bloc.dart';

@freezed
class AllProductsEvent with _$AllProductsEvent {
  const factory AllProductsEvent.fetch(
      {int? page, String? orderBy, String? order}) = _Fetch;
  const factory AllProductsEvent.filterProducts(
      {int? page,
      String? categories,
      String? tags,
      String? minPrice,
      String? maxPrice,
      String? catalogVisibility}) = _FilterProducts;

const factory AllProductsEvent.wishListProducts(
    {List? ids}) = _WishlistProducts;

}
