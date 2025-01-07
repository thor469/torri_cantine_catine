import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/my_orders/my_orders/list_all_orders/list_all_orders_bloc.dart';
import 'package:torri_cantine_app/my_orders/widgets/horizontal_list.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

class BodyOrderInfo extends StatefulWidget {
  const BodyOrderInfo({super.key});

  @override
  State<BodyOrderInfo> createState() => _BodyOrderInfoState();
}

class _BodyOrderInfoState extends State<BodyOrderInfo> {
  LocalStorage storage = LocalStorage();
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      int customerId = await storage.getCustomerId();

      if (kDebugMode) {
        print('customerId');
      }
      if (kDebugMode) {
        print(customerId);
      }

      if (mounted) {
        context.read<ListAllOrdersBloc>().add(ListAllOrdersEvent.fetch(customerId));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListAllOrdersBloc, ListAllOrdersState>(
        builder: (context, state) => state.maybeWhen(
            initial: () {
              return const Center(
                child: CircularProgressIndicator(
                  color: Color.fromARGB(255, 161, 29, 51),
                ),
              );
            },
            loading: () {
              return const Center(
                child: CircularProgressIndicator(
                  color: Color.fromARGB(255, 161, 29, 51),
                ),
              );
            },
            error: (e) {
              if (kDebugMode) {
                print(e);
              }
              return Center(
                child: RichText(
                    text: TextSpan(
                        text: 'Si è verificato un errore, ',
                        style: const TextStyle(
                          //fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 113, 112, 112),
                        ),
                        children: [
                          TextSpan(
                            text: 'riprova',
                            style: const TextStyle(
                              //fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 161, 29, 51),
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {
                              //MainNavigation.welcome();
                              MainNavigation.replace(context, [const MainNavigation.myOrders(true, false, false, false)]);
                            },
                          ),
                          const TextSpan(
                            text: '.',
                          )
                        ]
                    )
                ),
              );
            },
            orElse: () {
              return const Text('orElse');
            },
            loaded: (orders) {

              //return Text('loaaaaadeeeed');
              return PopScope(
                  canPop: false,
                  onPopInvoked: (didPop) {
                    if (kDebugMode) {
                      print('@#@#@#@ #@#@#@#@# @# @#@ #@# @# @# @# @ # #@ #@ @# pop invoked');
                    }
                    MainNavigation.pop(context);
                    //return;
                  },
                  child: Scaffold(
                    backgroundColor: const Color.fromARGB(255, 244, 244, 244),
                    body: SingleChildScrollView(
                      child: orders.orders!.isEmpty
                          ? const Padding(
                        padding: EdgeInsets.symmetric(vertical: 50.0),
                        child: Center(
                          child: Text(
                            "Nessun ordine eseguito, acquista i nostri prodotti!",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      )
                          : SizedBox(
                        height: MediaQuery.of(context).size.height * 0.8,
                        child: ListView.builder(
                            itemCount: orders.orders!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 18),
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceBetween,
                                          children: <Widget>[
                                            Text(
                                                "€ ${orders.orders![index].total}",
                                                style:
                                                TCTypography.of(context)
                                                    .text_14_bold
                                                    .copyWith(
                                                    color: Colors
                                                        .black)),
                                            Padding(
                                              padding:
                                              const EdgeInsets.only(
                                                  right: 25),
                                              child: InkWell(
                                                onTap: () =>
                                                    MainNavigation.push(
                                                        context,
                                                        MainNavigation
                                                            .orderDetail(
                                                          orders.orders![
                                                          index],
                                                        )),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "Visualizza",
                                                      style:
                                                      TCTypography.of(
                                                          context)
                                                          .text_16_bold
                                                          .copyWith(
                                                        color: const Color
                                                            .fromARGB(
                                                            255,
                                                            158,
                                                            29,
                                                            48),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 18, bottom: 10),
                                      child: Text(
                                        'Numero ordine: ${orders.orders![index].id}',
                                        style: TCTypography.of(context)
                                            .text_16_bold
                                            .copyWith(
                                          color: const Color.fromARGB(
                                              255, 110, 116, 119),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 100,
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          shrinkWrap: true,
                                          itemCount: orders.orders![index]
                                              .lineItems!.length,
                                          itemBuilder:
                                              (context, itemIndex) {
                                            return Padding(
                                              padding: const EdgeInsets
                                                  .symmetric(
                                                  horizontal: 20),
                                              child: HorizontalList(
                                                pathImage: orders
                                                    .orders![index]
                                                    .lineItems![itemIndex]
                                                    .image!
                                                    .src,
                                              ),
                                            );
                                          }),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 18),
                                      child: Divider(thickness: 1.5),
                                    ),
                                  ]);
                            }),
                      ),
                    ),
                  )

              );

            }

        ));
  }
}
