import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:torri_cantine_app/cart/cart/cart_bloc.dart';
import 'package:torri_cantine_app/cart/model/response/cart_response.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

part 'cart_badge_cubit_state.dart';

class CartBadgeCubitCubit extends Cubit<int> {
  CartBadgeCubitCubit() : super(0);
  LocalStorage storage = LocalStorage();
  @override
  void emit(int state) {
    storage.setTotalCartItems(state);
    super.emit(state);
  }

  void addCartItem(BuildContext context) async {
    // int cartItems = await storage.getTotalCartItems();
    // int quantity = 1;
    // if (qty != null) {
    //   quantity = qty;
    // }
    // if(isFromCart ?? false){
    //   await storage.setTotalCartItems(quantity);
    //   emit(quantity);
    // }else{
    //   if (cartItems < 0) {
    //     await storage.setTotalCartItems(quantity);
    //     emit(quantity);
    //   } else {
    //     await storage.setTotalCartItems(cartItems + quantity);
    //     emit(cartItems + quantity);
    //   }
    // }
    CartResponse? cart = await context.read<CartBloc>().fetchItemCart();
    if(cart != null){
      await storage.setTotalCartItems(cart.totalItems);
      emit(cart.totalItems);
    }else{
      await storage.setTotalCartItems(0);
      emit(cart?.totalItems ?? 0);
    }
  }

  // void removeCartItem(BuildContext context) async {
  //   CartResponse? cart = await context.read<CartBloc>().fetchItemCart();
  //   if(
  //
  //   )
  // }

}
