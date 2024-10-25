import 'package:bloc/bloc.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

part 'products_wishlisted_state.dart';

class ProductsWishlistedCubit extends Cubit<ProductsWishlistedState> {
  List<int> wishList;
  LocalStorage storage;
  ProductsWishlistedCubit(this.wishList, this.storage)
      : super(ProductsWishlistedState(
            needUpdateWishListStatus: false,
            wishListStatus: false,
            wishListProducts: wishList));

  void initWishlist() async {
    var initalWishList = await storage.getWishList();
    state.wishListProducts = initalWishList ?? <int>[];
    if (initalWishList!.isNotEmpty) {
      state.wishListStatus = true;
    }
  }

  void wishListed(
    int id,
  ) async {
    emit(
      ProductsWishlistedState(
          needUpdateWishListStatus: true,
          wishListStatus: true,
          productId: id,
          wishListProducts: wishList),
    );

    //print('DARIO WISHLIST');
    //print(wishList);


    if (!wishList.contains(id)) {
      wishList.add(id);
    } else {
      wishList.remove(id);
    }
    await storage.setWishLIst(wishList);
    emit(
      ProductsWishlistedState(
          needUpdateWishListStatus: true,
          wishListStatus: true,
          productId: id,
          wishListProducts: wishList),
    );
  }
}
