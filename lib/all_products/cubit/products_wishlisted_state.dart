part of 'products_wishlisted_cubit.dart';

class ProductsWishlistedState {
  bool wishListStatus;
  bool needUpdateWishListStatus;
  int? productId;
  List<int> wishListProducts;
  ProductsWishlistedState({
    required this.wishListStatus,
    required this.needUpdateWishListStatus,
    this.productId,
    required this.wishListProducts,
  });
}
