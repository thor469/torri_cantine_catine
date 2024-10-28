import 'package:flutter/material.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/bottom_bar.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/floating_action_button.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/my_orders/my_orders/list_all_orders/model/response/list_all_orders_response.dart' as listOrders;
import 'package:torri_cantine_app/order_detail/widgets/body_order_detail.dart';
import '../../app/common/sub_page_appbar.dart';
import '../../menu_screen/menu_screen.dart';

class OrderDetail extends StatefulWidget {
  listOrders.Order order;

   OrderDetail({super.key,required this.order,});

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    return PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          // print('@#@#@#@ #@#@#@#@# @# @#@ #@# @# @# @# @ # #@ #@ @# pop invoked');
          MainNavigation.pop(context);
          //return;
        },
        child:Scaffold(
          key: _key,

          drawer: Drawer(
            child: MenuScreen(),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
          floatingActionButton: FloatingButton()
          ,
          bottomNavigationBar: BottomBanvigationMenu(
            scaffoldKey: _key,
            initialSelectedIndex: 0,
            context: context,
            //notifyParent: () => refresh(selectedindex),
          ),
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: SubPageAppbar(
              text: "DETTAGLI ORDINE",
              onTap: () => MainNavigation.pop(context),
              // onTap: () => MainNavigation.push(
              //   context,
              //   const MainNavigation.myOrders(false, false, false, true),
              // ),
            ),
          ),
          body: BodyOrderDetail(order:widget.order,),
        )

    );


  }
}
