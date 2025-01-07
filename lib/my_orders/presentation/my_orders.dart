import 'package:flutter/material.dart';
import 'package:torri_cantine_app/account/presentation/account.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/bottom_bar.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/floating_action_button.dart';
import 'package:torri_cantine_app/app/common/sub_page_appbar.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/my_orders/widgets/body_order_info.dart';

import '../../app/common/bottom_bar_items/account_bottom.dart';
import '../../app/common/bottom_bar_items/cart_bottom_item.dart';
import '../../app/common/bottom_bar_items/menu_bottom_item.dart';
import '../../app/common/bottom_bar_items/wishlist_bottom_item.dart';
import '../../menu_screen/menu_screen.dart';
import '../../utilities/local_storage.dart';

class MyOrders extends StatefulWidget {
  final bool fromMenu;
  final bool fromAccount;
  final bool fromThankScreen;
  final bool fromOrderDetails;

  const MyOrders({
    super.key,
    required this.fromMenu,
    required this.fromAccount,
    required this.fromThankScreen,
    required this.fromOrderDetails,
  });

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  LocalStorage storage = LocalStorage();
  int selectedIndex = 0;

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {

    return PopScope(
        canPop: false,
        onPopInvoked : (didPop){
        },
        child:Scaffold(
          backgroundColor: const Color.fromARGB(255, 244, 244, 244),
          key: _key,
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: SubPageAppbar(
                text: "I MIEI ORDINI",
                onTap: () => MainNavigation.replace(context, [const MainNavigation.account(false)]),
              )
          ),

          // drawer: const Drawer(
          //   child: MenuScreen(),
          // ),
          // floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
          // floatingActionButton: (!widget.fromThankScreen && !widget.fromOrderDetails)
          //     ?const FloatingButton(): const SizedBox()
          // ,
          // bottomNavigationBar: (!widget.fromThankScreen && !widget.fromOrderDetails)
          //     ? BottomBanvigationMenu(
          //   scaffoldKey: _key,
          //   initialSelectedIndex:0,
          //   context: context,
          //   //notifyParent: () => refresh(selectedindex),
          // ):const SizedBox(),
          body: const BodyOrderInfo(),
        )

    );


  }
}
