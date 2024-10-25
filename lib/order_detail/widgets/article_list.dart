import 'package:flutter/material.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/my_orders/my_orders/list_all_orders/model/response/list_all_orders_response.dart';
import 'package:torri_cantine_app/order_detail/widgets/vertical_list.dart';

class ArticleList extends StatefulWidget {
  Order order;
  ArticleList({super.key, required this.order});

  @override
  State<ArticleList> createState() => _ArticleListState();
}

class _ArticleListState extends State<ArticleList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("ARTICOLI",
                  style: TCTypography.of(context).text_18_bold),
            )
          ],
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: widget.order.lineItems!.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: VerticalList(
                  productDescription:
                  widget.order.lineItems![index].name ?? "",
                  productPrice: (double.parse(
                      widget.order.lineItems![index].total ?? "")+double.parse(
                      widget.order.lineItems![index].totalTax ?? "")),
                  pathImage: widget.order.lineItems![index].image!.src,
                  quantity: widget.order.lineItems![index].quantity,
                  id: widget.order.lineItems![index].productId ?? 0,
                ),
              );
            }),
      ],
    );
  }
}
