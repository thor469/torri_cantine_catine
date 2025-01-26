import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/dependency_injection/dependency_factory_impl.dart';
import 'package:torri_cantine_app/app/routing/auto_route/app_router.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/cart/add_product_to_cart/add_product_to_cart_bloc.dart';
import 'package:torri_cantine_app/cart/cubit/cart_badge_cubit_cubit.dart';
import 'package:torri_cantine_app/my_orders/my_orders/list_all_orders/model/response/list_all_orders_response.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:collection/collection.dart';

class PaymentMethod extends StatefulWidget {
  Order order;
  PaymentMethod({super.key, required this.order});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {

  var codInfo;
  String codPrice = "";
  String scontoPunti = "";



  @override
  void initState() {
    super.initState();

    var a = widget.order.feeLines.firstWhereOrNull((e) => e.name == "Sconto Punti");
    if(a != null){
      scontoPunti = a.total;
    }
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      var a = await getCodPrice() ?? "";
      setState(() {
      codPrice = a;
      });
    });
  }

  Future<String?>? getCodPrice() async{
    try {
      final dep = DependencyFactoryImpl();
      final Dio dio = dep.createDioForApiCart().dio;

      codInfo = await dio.request(
        '/wp-json/wp/v2/get_cod_price',
        options: Options(
          method: 'GET',
        ),
      );

    } catch (e) {}

    return codInfo?.data.toString();
  }




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
              context.router.push(CartRoute(showAppBar: true, fromMenu: true, fromCompleteOrder: true, fromHomePage: false))
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
                      "-€${((double.tryParse(widget.order.discountTotal) ?? 0) + (double.tryParse(widget.order.discountTax ?? '0') ?? 0)) } ",
                      style: TCTypography.of(context).text_14_bold.copyWith(
                        color: const Color.fromARGB(255, 13, 117, 161),
                      ),
                    )
                  ],
                ),
              ),
            ),

            Visibility(
              visible: widget.order.paymentMethod == "cod",
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    Text(
                      "Costo contrassegno:",
                      style: TCTypography.of(context).text_14_bold.copyWith(
                        color: const Color.fromARGB(255, 13, 117, 161),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "€$codPrice",
                      style: TCTypography.of(context).text_14_bold.copyWith(
                        color: const Color.fromARGB(255, 13, 117, 161),
                      ),
                    )
                  ],
                ),
              ),
            ),

            Visibility(
              visible: scontoPunti != "",
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    Text(
                      "Sconto punti:",
                      style: TCTypography.of(context).text_14_bold.copyWith(
                        color: const Color.fromARGB(255, 13, 117, 161),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "€$scontoPunti",
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
    context.read<AddProductToCartBloc>().add(AddProductToCartEvent.addProduct(item.productId ?? 0, item.quantity ?? 0));
    context.read<CartBadgeCubitCubit>().addCartItem(context);
  }
}
