import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:torri_cantine_app/all_products/cubit/products_wishlisted_cubit.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/cart/add_product_to_cart/add_product_to_cart_bloc.dart';
import 'package:torri_cantine_app/cart/cubit/cart_badge_cubit_cubit.dart';

class VerticalList extends StatefulWidget {
  final String productDescription;
  final double productPrice;
  final String pathImage;
  final int id;
  int? quantity;
  VerticalList(
      {super.key,
      required this.productDescription,
      required this.productPrice,
      required this.pathImage,
      required this.id,
      this.quantity});

  @override
  State<VerticalList> createState() => _VerticalListState();
}

class _VerticalListState extends State<VerticalList> {
  int counter = 0;
  @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color.fromARGB(255, 212, 211, 211),
            ),
          ),
        ),
        height: 120,
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 60,
                height: 90,
                child: Image.network(
                  widget.pathImage,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      widget.productDescription,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TCTypography.of(context).text_14,
                    ),
                  ),
                  Text("€ ${(widget.productPrice).toStringAsFixed(2).replaceAll(
                      ".", ",")}",
                      style: TCTypography.of(context).text_16),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0, bottom: 5),
                        child: Text(
                          ("Quantità: ${widget.quantity}"),
                          style: TCTypography.of(context).text_14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 161, 29, 51),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: SvgPicture.asset(
                          "assets/Cart.svg",
                        ),
                      ),
                    ),
                    onTap: () {
                      context
                          .read<AddProductToCartBloc>()
                          .add(AddProductToCartEvent.addProduct(widget.id, 1));
                      context.read<CartBadgeCubitCubit>().addCartItem();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
