import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
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

  void addCartItem( {int? qty, bool? isFromCart} ) async {
    int cartItems = await storage.getTotalCartItems();
    int quantity = 1;
    if (qty != null) {
      quantity = qty;
    }
    if(isFromCart ?? false){
      await storage.setTotalCartItems(quantity);
      emit(quantity);
    }else{
      if (cartItems < 0) {
        await storage.setTotalCartItems(quantity);
        emit(quantity);
      } else {
        await storage.setTotalCartItems(cartItems + quantity);
        emit(cartItems + quantity);
      }
    }

  }

  void removeCartItem() async {
    int cartItems = await storage.getTotalCartItems();
    if (cartItems == 0) {
      await storage.setTotalCartItems(0);
      emit(0);
    } else {
      await storage.setTotalCartItems(cartItems - 1);
      emit(cartItems - 1);
    }
  }

}
