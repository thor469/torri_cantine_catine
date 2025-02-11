import 'package:flutter/material.dart';
import 'package:torri_cantine_app/my_orders/my_orders/list_all_orders/model/response/list_all_orders_response.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';

class CustomeNote extends StatefulWidget {
  final Order order;
  CustomeNote({super.key, required this.order});

  @override
  State<CustomeNote> createState() => _CustomeNoteState();
}

class _CustomeNoteState extends State<CustomeNote> {
  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "NOTE ORDINE",
                style: TCTypography.of(context)
                    .text_18_bold
                    .copyWith(color: Colors.black),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.order.customerNote,
            style: TCTypography.of(context)
                .text_14_bold
                .copyWith(color: Colors.black54),
          )
        ],
      ),
    );
  }
}

