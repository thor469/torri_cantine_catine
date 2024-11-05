import 'package:flutter/material.dart';
import 'package:torri_cantine_app/my_orders/my_orders/list_all_orders/model/response/list_all_orders_response.dart';
import 'package:torri_cantine_app/order_detail/widgets/article_list.dart';
import 'package:torri_cantine_app/order_detail/widgets/custome_note.dart';
import 'package:torri_cantine_app/order_detail/widgets/delivery_address.dart';
import 'package:torri_cantine_app/order_detail/widgets/order_number.dart';
import 'package:torri_cantine_app/order_detail/widgets/payment_method.dart';

class BodyOrderDetail extends StatefulWidget {
  Order order;

   BodyOrderDetail({super.key,required this.order,});

  @override
  State<BodyOrderDetail> createState() => _BodyOrderDetailState();
}

class _BodyOrderDetailState extends State<BodyOrderDetail> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OrderNumber(order: widget.order,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Divider(thickness: 1.3),
          ),
          ArticleList(order: widget.order,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Divider(thickness: 1.3),
          ),
          const AddressDelivery(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Divider(thickness: 1.3),
          ),
         if(widget.order.customerNote != "")...[ CustomeNote(order: widget.order,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Divider(thickness: 1.3),
          ),],
          PaymentMethod(order: widget.order,),
        ],
      ),
    );
  }
}
