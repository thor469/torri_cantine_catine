import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torri_cantine_app/account/account/account_bloc.dart';
import 'package:torri_cantine_app/account/presentation/account.dart';
import 'package:torri_cantine_app/all_products/presentation/products_screen.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/account_bottom.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/bottom_bar.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/cart_bottom_item.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/floating_action_button.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/menu_bottom_item.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/wishlist_bottom_item.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/cart/add_product_to_cart/add_product_to_cart_bloc.dart';
import 'package:torri_cantine_app/cart/presentation/cart_screen.dart';
import 'package:torri_cantine_app/categories/presentation/categories_screen.dart';
import 'package:torri_cantine_app/home_page/presentation/home_screen.dart';
import 'package:torri_cantine_app/menu_screen/menu_screen.dart';
import 'package:torri_cantine_app/promotions/presentation/promotions_screen.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';
import 'package:torri_cantine_app/wishlist_screen/presentation/wishlist_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  LocalStorage storage = LocalStorage();
  bool isLoading = false;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      String email = await storage.getUserEmail() ?? "";
      if (mounted) {
        context.read<AccountBloc>().add(AccountEvent.fetch(email));

        if (kDebugMode) {
          print('this init state');
        }
        BlocListener<AccountBloc, AccountState> (
          listener: (BuildContext context, AccountState state) {
            state.maybeWhen(
                loaded: (model) async {
                  if (kDebugMode) {
                    print('model.user.first.id');
                  }
                  if (kDebugMode) {
                    print(model.user.first.id);
                  }
                  if (kDebugMode) {
                    print((model.user.first.id).runtimeType);
                  }
                  String? deviceID = await storage.getDeviceId();
                  String? fcmToken = await storage.getFCMToken();
                  //InsertNotificationRequest(token: fcmToken!.trim(), deviceId: deviceID!.trim(), userId: model.user.first.id );
                },
                orElse: (){}
            );
          },
        );
        if (kDebugMode) {
          print('');
        }
      }
    });
    super.initState();
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {


    return PopScope(
        canPop: false,
        onPopInvoked : (didPop){
        },
        child:Scaffold(
          key: _key,
          drawer: const Drawer(
            child: MenuScreen(),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
          floatingActionButton: const FloatingButton(),
          body: selectPage(selectedIndex),
          bottomNavigationBar: true==true?BottomBanvigationMenu(
            scaffoldKey: _key,
            initialSelectedIndex: 0,
            context: context,
            //notifyParent: () => refresh(selectedindex),
          ) : Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3)),
              ],
              color: Colors.white,
            ),
            height: 70,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    _key.currentState!.openDrawer();
                    // setState(() {
                    //   selectedIndex = 3;
                    // });
                  },
                  child: MenuBottomItem(
                    text: 'Menu',
                    icon: Icons.menu,
                    isActive: selectedIndex == 3,
                  ),
                ),
                GestureDetector(
                  onTap: () {

                    setState(() {
                      selectedIndex = 4;
                    });
                  },
                  child: AccountBottomItem(
                    text: 'Account',
                    icon: Icons.person_outlined,
                    isActive: selectedIndex == 4,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 5;
                    });
                  },
                  child: WishListBottomItem(
                    text: 'Wishlist',
                    icon: Icons.favorite_outline,
                    isActive: selectedIndex == 5,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 6;
                    });
                  },
                  child: CartBottomItem(
                    text: 'Carrello',
                    icon: Icons.shopping_cart_outlined,
                    isActive: selectedIndex == 6,
                  ),
                )
              ],
            ),
          ),
        )

    );




  }

  Widget selectPage(int i) {
    switch (i) {
      case 0:
        return const HomeScreen();
      case 1:
        return Products(fromMenu: false,
          showAppBar: false,);
        return const CategoriesScreen(
          showAppBar: false,
          fromMenu: false,
        );
      case 2:
        return const PromotionsScreen( );
      case 3:
        return const MenuScreen();
      case 4:
        return const AccountPage(
          fromMenu: false,
        );
      case 5:
        return const WishlistScreen(
          fromAccount: false,
          fromMenu: false,
        );
      case 6:
        return const CartScreen(
          showAppBar: true,
          fromMenu: false,
          fromCompleteOrder: false,
          fromHomePage: true,
        );
      default:
        return const MainScreen();
    }
  }
}
