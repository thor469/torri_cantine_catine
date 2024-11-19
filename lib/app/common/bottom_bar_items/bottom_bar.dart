import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/cart/add_product_to_cart/add_product_to_cart_bloc.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

import 'account_bottom.dart';
import 'cart_bottom_item.dart';
import 'menu_bottom_item.dart';
import 'wishlist_bottom_item.dart';

class BottomBanvigationMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> _key;
  int selectedIndex;
  BuildContext contxt;

  BottomBanvigationMenu({
    Key? key,
    required GlobalKey<ScaffoldState> scaffoldKey,
    int initialSelectedIndex = 0,
    required BuildContext context,
  })  : _key = scaffoldKey,
        selectedIndex = initialSelectedIndex,
        contxt = context,
        super(key: key);

  @override
  State<BottomBanvigationMenu> createState() => _BottomBanvigationMenuState();
}

class _BottomBanvigationMenuState extends State<BottomBanvigationMenu> {
  LocalStorage storage = LocalStorage();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  Future<void> getBottomStateFromStorage() async {
    int? bsfs = await storage.getBottomTabState();
    if (bsfs != null) {
      setState(() {
        widget.selectedIndex = bsfs;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Load the bottom state from storage asynchronously
    Future.delayed(Duration.zero, getBottomStateFromStorage);

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
        color: Colors.white,
      ),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Menu Item
          GestureDetector(
            onTap: () {
              widget._key.currentState!.openDrawer();
            },
            child: MenuBottomItem(
              text: 'Menu',
              icon: Icons.menu,
              isActive: widget.selectedIndex == 3,
            ),
          ),

          // Account Item
          GestureDetector(
            onTap: () {
              storage.setBottomTabState(4);
              setState(() {
                widget.selectedIndex = 4;
              });
              MainNavigation.push(
                context,
                const MainNavigation.account(true),
              );
            },
            child: AccountBottomItem(
              text: 'Account',
              icon: Icons.person_outlined,
              isActive: widget.selectedIndex == 4,
            ),
          ),

          // Center Logo
          GestureDetector(
            onTap: () => MainNavigation.push(context, const MainNavigation.home()),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                alignment: Alignment.topCenter,
                clipBehavior: Clip.none,
                children: [
                  const SizedBox(width: 48, height: 48), // Placeholder for alignment
                  Positioned(
                    top: -11.0,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.transparent,
                      child: Image.asset(
                        "assets/torri.png",
                        width: 48,
                        height: 48,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Wishlist Item
          GestureDetector(
            onTap: () {
              storage.setBottomTabState(5);
              setState(() {
                widget.selectedIndex = 5;
              });
              MainNavigation.push(
                context,
                const MainNavigation.wishList(true, false),
              );
            },
            child: WishListBottomItem(
              text: 'Wishlist',
              icon: Icons.favorite_outline,
              isActive: widget.selectedIndex == 5,
            ),
          ),

          // Cart Item
          BlocListener<AddProductToCartBloc, AddProductToCartState>(
            listener: (BuildContext context, AddProductToCartState state) {
              state.maybeWhen(
                  loading: (){isLoading = true;},
                  addedProduct: (_) {
                    isLoading = false;
                  },
                  error: () {
                    isLoading = false;
                  },
                  orElse: () {}
              );
            },
            child: GestureDetector(
              onTap: () {
                if(!isLoading){
                  storage.setBottomTabState(6);
                  setState(() {
                    widget.selectedIndex = 6;
                  });
                  MainNavigation.push(
                    context,
                    const MainNavigation.cart(true, false, false, false),
                  );
                }

              },
              child: CartBottomItem(
                text: 'Carrello',
                icon: Icons.shopping_cart_outlined,
                isActive: widget.selectedIndex == 6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
