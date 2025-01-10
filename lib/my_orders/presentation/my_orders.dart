import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:torri_cantine_app/app/common/sub_page_appbar.dart';
import 'package:torri_cantine_app/my_orders/widgets/body_order_info.dart';
import '../../utilities/local_storage.dart';

@RoutePage()
class MyOrdersScreen extends StatefulWidget {
  final bool fromMenu;
  final bool fromAccount;
  final bool fromThankScreen;
  final bool fromOrderDetails;

  const MyOrdersScreen({
    super.key,
    required this.fromMenu,
    required this.fromAccount,
    required this.fromThankScreen,
    required this.fromOrderDetails,
  });

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  LocalStorage storage = LocalStorage();
  int selectedIndex = 0;

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {

    return PopScope(
        canPop: true,
        onPopInvokedWithResult: (didPop, _){
          if(didPop){
            if(widget.fromAccount){
              storage.setBottomTabState(4);
            }
          }
        },
        child:Scaffold(
          backgroundColor: const Color.fromARGB(255, 244, 244, 244),
          key: _key,
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: SubPageAppbar(
                text: "I MIEI ORDINI",
                onTap: () {
                  if(widget.fromAccount){
                    storage.setBottomTabState(4);
                  }
                  context.router.popForced();
                  },
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
