import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/cart/add_product_to_cart/add_product_to_cart_bloc.dart';
import 'package:torri_cantine_app/cart/cubit/cart_badge_cubit_cubit.dart';

class WishlistItems extends StatefulWidget {
  final Function()? onRemove;
  final String image;
  final String? description;
  final double price;
  final double regularPrice;
  final int productId;

  const WishlistItems({
    super.key,
    required this.image,
    required this.description,
    required this.price,
    required this.regularPrice,
    required this.productId,
    required this.onRemove,
  });

  @override
  State<WishlistItems> createState() => _WishlistItemsState();
}

class _WishlistItemsState extends State<WishlistItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Color.fromARGB(255, 212, 211, 211),
          ),
        ),
      ),
      height: 120,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              MainNavigation.push(
                context,
                MainNavigation.productDetail(widget.productId),
              );
            },
            child: Row(
              children: [
                SizedBox(
                  width: 60,
                  height: 90,
                  child: Image.network(
                    widget.image,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.420,
                        child: widget.description == ""
                            ? const SizedBox()
                            : Html(
                                data:
                                    "${widget.description!.substring(0, 22)}.."),
                        
                      ),
                      Row(
                        children: [
                          Text(
                            // Prezzo scontato
                            "${(widget.regularPrice).toStringAsFixed(0)} €",
                            style: TCTypography.of(context).text_14.copyWith(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              // Prezzo non scontato
                              "${(widget.price).toStringAsFixed(2)} €",
                              style: TCTypography.of(context).text_14_bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              GestureDetector(
                onTap: widget.onRemove,
                child: Image.asset(
                  "assets/Carrello-rimuovi.png",
                  color: const Color.fromARGB(255, 110, 106, 109),
                  width: 27,
                  height: 27,
                ),
              ),
              SizedBox(
                width: 100,
                height: 30,
                child: PrimaryButton(
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                    ),
                    text: "AGGIUNGI",
                    ontap: () {
                      context.read<AddProductToCartBloc>().add(
                          AddProductToCartEvent.addProduct(
                              widget.productId, 1));
                      context.read<CartBadgeCubitCubit>().addCartItem();
                    }),
              )
            ],
          ),
        ],
      ),
    );
  }
}
