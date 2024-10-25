import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/cart/add_product_to_cart/add_product_to_cart_bloc.dart';
import 'package:torri_cantine_app/cart/cubit/cart_badge_cubit_cubit.dart';
import 'package:torri_cantine_app/my_orders/my_orders/list_all_orders/model/response/list_all_orders_response.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';

class PaymentMethod extends StatefulWidget {
  Order order;
  PaymentMethod({super.key, required this.order});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {

    String payMethodName = '';
    switch(widget.order.paymentMethod ) {
      case 'stripe':  { payMethodName = 'Carta di credito' ; break;}
      case 'ppcp-gateway':  { payMethodName = 'Paypal' ; break;}
      case 'bacs':  { payMethodName = 'Bonifico bancario' ; break;}
      case 'cod':  { payMethodName = 'Contrassegno' ; break;}
    }

    print('widget.order.discount_total');
    print(widget.order.discountTotal);

    String shippingTotal = (double.tryParse(widget.order.shippingTotal)! + double.tryParse(widget.order.shippingTax)! ).toStringAsFixed(2).replaceAll('.', '.');


    return BlocListener<AddProductToCartBloc, AddProductToCartState>(
      listener: (context, state) => state.maybeWhen(
        orElse: () => const SizedBox(),
        addedProduct: (cart) => {
          if (cart.items.length == widget.order.lineItems!.length)
            {
              MainNavigation.push(
                context,
                const MainNavigation.cart(true, true, true, false),
              )
            }
        },
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "METODO DI PAGAMENTO",
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
              widget.order.paymentMethodTitle ??
                  "Metodo di pagamento non disponibile",
              style: TCTypography.of(context)
                  .text_14_bold
                  .copyWith(color: Colors.black54),
            ),
            const Divider(thickness: 1.3),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Text(
                    "Consegna:",
                    style: TCTypography.of(context)
                        .text_14_bold
                        .copyWith(color: Colors.black45),
                  ),
                  const Spacer(),
                  Text(
                    "€ ${shippingTotal}",
                    style: TCTypography.of(context)
                        .text_14_bold
                        .copyWith(color: Colors.black45),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: widget.order.discountTotal!='0.00',
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    Text(
                      "Sconto applicato:",
                      style: TCTypography.of(context).text_14_bold.copyWith(
                        color: const Color.fromARGB(255, 13, 117, 161),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "-€ ${widget.order.discountTotal ?? "0"} ",
                      style: TCTypography.of(context).text_14_bold.copyWith(
                        color: const Color.fromARGB(255, 13, 117, 161),
                      ),
                    )
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Text(
                    "Totale",
                    style: TCTypography.of(context).text_18_bold,
                  ),
                  const Spacer(),
                  Text(
                    '€ ${widget.order.total}',
                    style: TCTypography.of(context).text_18_bold,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: PrimaryButton(
                  text: "ORDINA DI NUOVO",
                  colorText: Colors.white,
                  ontap: () {
                    orderAgain(widget.order, context);
                  }),
            )
          ],
        ),
      ),
    );
  }
}

void orderAgain(Order order, BuildContext context) {
  for (var item in order.lineItems!) {
    context.read<AddProductToCartBloc>().add(AddProductToCartEvent.addProduct(
        item.productId ?? 0, item.quantity ?? 0));
    context.read<CartBadgeCubitCubit>().addCartItem();
  }
}