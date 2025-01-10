import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/bottom_bar.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/floating_action_button.dart';
import 'package:torri_cantine_app/app/common/sub_page_appbar.dart';
import 'package:torri_cantine_app/menu_screen/menu_screen.dart';
import 'package:torri_cantine_app/my_orders/my_orders/list_all_orders/model/response/list_all_orders_response.dart' as listOrders;
import 'package:torri_cantine_app/order_detail/widgets/body_order_detail.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

@RoutePage()
class OrderDetailScreen extends StatefulWidget {
  listOrders.Order order;

   OrderDetailScreen({super.key,required this.order,});

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int selectedIndex = 0;
  LocalStorage storage = LocalStorage();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _key,
      drawer: const Drawer(
        child: MenuScreen(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: const FloatingButton()
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
          onTap:() => context.router.popForced(),
          // onTap: () => MainNavigation.push(
          //   context,
          //   const MainNavigation.myOrders(false, false, false, true),
          // ),
        ),
      ),
      body: BodyOrderDetail(order:widget.order,),
    );


  }
}
