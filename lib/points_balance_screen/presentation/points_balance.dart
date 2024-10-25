import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:torri_cantine_app/app/common/sub_page_appbar.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/my_orders/my_orders/list_all_orders/list_all_orders_bloc.dart';
import 'package:torri_cantine_app/my_orders/my_orders/list_all_orders/model/response/list_all_orders_response.dart';
import 'package:torri_cantine_app/points_balance_screen/bloc/points_bloc.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

class PointsBalance extends StatefulWidget {
  final bool fromMenu;
  final bool fromAccount;
  const PointsBalance({
    super.key,
    required this.fromMenu,
    required this.fromAccount,
  });

  @override
  State<PointsBalance> createState() => _PointsBalanceState();
}

class _PointsBalanceState extends State<PointsBalance> {
  final int totalPoints = 180;
  bool _isDescending = true;
  LocalStorage storage = LocalStorage();
  bool firstLoad = true;


  List<Map<String, dynamic>> orders = [];

  Future<void> getOrders(BuildContext context, ListAllOrdersResponse orderList, ) async{
    for(Order item in orderList.orders ?? []){
      var i = 0;
      var point = await context.read<PointsBloc>().getOrderPoint(item.id);
      setState(() {
        orders.add({
          "numero_ordine": item.id,
          "date": item.dateCreated,
          "points": point ?? 0,
        });
      });
    i++;
    }
  }


  void _sortOrders() {
    setState(() {
      _isDescending = !_isDescending;
      orders.sort((a, b) {
        return _isDescending
            ? b['date'].compareTo(a['date'])
            : a['date'].compareTo(b['date']);
      });
    });
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      int customerId = await storage.getCustomerId();
      if (mounted) {
        context.read<PointsBloc>().add(const PointsEvent.fetch());
        context.read<ListAllOrdersBloc>().add(ListAllOrdersEvent.fetch(customerId));
      }
    });
    super.initState();
  }



  @override
  Widget build(BuildContext context) {

    return PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          print('@#@#@#@ #@#@#@#@# @# @#@ #@# @# @# @# @ # #@ #@ @# pop invoked');
          MainNavigation.pop(context);
          //return;
        },
        child:Scaffold(
          backgroundColor: const Color.fromARGB(255, 244, 244, 244),
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: SubPageAppbar(
              text: "RACCOLTA PUNTI",
              onTap: widget.fromMenu
                  ?  (){ MainNavigation.pop(context); }
              // ? () => MainNavigation.push(
              //       context,
              //       const MainNavigation.menu(),
              //     )
                  : widget.fromAccount
                  ? () => MainNavigation.push(
                context,
                const MainNavigation.account(false),
              )
                  : () => MainNavigation.push(
                context,
                const MainNavigation.home(),
              ),
            ),
          ),
          body: BlocBuilder<PointsBloc, PointsState>(
            builder: (context, state) => state.maybeWhen(
                loading: (){
                  return  Center(
                    child: CircularProgressIndicator(
                      color: Color.fromARGB(255, 161, 29, 51),
                    ),
                  );
                },
                loaded: (numericId) {
                  if(numericId != ""){
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Text(
                              '$numericId',
                              style: const TextStyle(
                                fontSize: 52,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 26, 118, 193),
                              ),
                            ),
                          ),
                          Text(
                            'Punti totali',
                            style: TCTypography.of(context).text_18_bold.copyWith(
                              color: const Color.fromARGB(255, 121, 121, 121),
                            ),
                          ),
                          const SizedBox(height: 16),
                          //TODO DECIDERE LE SCONTISTICHE COME FUNZIONANO, INTEGRAZIONI BE DA RICHIEDERE
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Text('Equivalenti',
                          //         style: TCTypography.of(context).text_16.copyWith(
                          //             color: const Color.fromARGB(255, 121, 121, 121))),
                          //     Text(
                          //       ' a 3,50 €',
                          //       style: TCTypography.of(context).text_16_bold.copyWith(
                          //         color: const Color.fromARGB(255, 26, 118, 193),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          // const SizedBox(height: 30),
                          // Padding(
                          //   padding: const EdgeInsets.only(
                          //       left: 25.0, right: 25.0, bottom: 10.0, top: 10),
                          //   child: ClipRRect(
                          //     borderRadius: BorderRadius.circular(10),
                          //     child: LinearProgressIndicator(
                          //       value: totalPoints / 1000, // 1000 punti corrispondono al 100%
                          //       minHeight: 20,
                          //       backgroundColor: const Color.fromARGB(255, 215, 215, 215),
                          //     ),
                          //   ),
                          // ),
                          // SizedBox(
                          //   width: MediaQuery.of(context).size.width,
                          //   child: Padding(
                          //     padding: const EdgeInsets.symmetric(horizontal: 20),
                          //     child: Column(
                          //       crossAxisAlignment: CrossAxisAlignment.start,
                          //       children: [
                          //         Row(
                          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //           children: [
                          //             Row(
                          //               children: [
                          //                 Text(
                          //                   'Mancano',
                          //                   style: TCTypography.of(context).text_14.copyWith(
                          //                     color: const Color.fromARGB(
                          //                         255, 121, 121, 121),
                          //                   ),
                          //                 ),
                          //                 Text(
                          //                   ' ${1000 - totalPoints}',
                          //                   style: TCTypography.of(context)
                          //                       .text_16_bold
                          //                       .copyWith(
                          //                     color: const Color.fromARGB(255, 157, 2, 2),
                          //                   ),
                          //                 ),
                          //                 Text(
                          //                   ' pt',
                          //                   style: TCTypography.of(context).text_14.copyWith(
                          //                     color: const Color.fromARGB(
                          //                         255, 121, 121, 121),
                          //                   ),
                          //                 ),
                          //               ],
                          //             ),
                          //             Text(
                          //               '5,00 €',
                          //               style: TCTypography.of(context).text_16_bold.copyWith(
                          //                 color: const Color.fromARGB(255, 157, 2, 2),
                          //               ),
                          //             ),
                          //           ],
                          //         ),
                          //         Row(
                          //           children: [
                          //             Text(
                          //               'per ricevere il prossimo sconto',
                          //               style: TCTypography.of(context).text_14.copyWith(
                          //                 color: const Color.fromARGB(255, 121, 121, 121),
                          //               ),
                          //             ),
                          //           ],
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                          const Divider(
                            color: Color.fromARGB(255, 129, 129, 129),
                            height: 30,
                            indent: 15,
                            endIndent: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  'Storico dei punti',
                                  style: TCTypography.of(context).text_22_bold,
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      child: DropdownButton<bool>(
                                        isExpanded: true,
                                        value: !_isDescending,
                                        items: [
                                          DropdownMenuItem(
                                            value: false,
                                            child: Text(
                                              'DAL PIÙ RECENTE',
                                              style: TCTypography.of(context).text_12_bold.copyWith(
                                                color: const Color.fromARGB(255, 121, 121, 121),
                                              ),
                                            ),
                                          ),
                                          DropdownMenuItem(
                                            value: true,
                                            child: Text(
                                              'DAL MENO RECENTE',
                                              style: TCTypography.of(context).text_12_bold.copyWith(
                                                color: const Color.fromARGB(255, 121, 121, 121),
                                              ),
                                            ),
                                          ),
                                        ],
                                        onChanged: (bool? newValue) {
                                          setState(() {
                                            _isDescending = newValue!;
                                            _sortOrders();
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          BlocBuilder<ListAllOrdersBloc, ListAllOrdersState>(
                              builder: (ctx, state) => state.maybeWhen(
                                  loading: () {
                                    return const CircularProgressIndicator(
                                      color: Color.fromARGB(255, 161, 29, 51),
                                    );
                                  },
                                  loaded: (item){
                                    if(firstLoad){
                                      getOrders(context, item);
                                      firstLoad = false;
                                    }
                                    return Expanded(
                                      child: ListView.builder(
                                        itemCount: orders.length,
                                        itemBuilder: (BuildContext context, int index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(left: 8),
                                            child: ListTile(
                                              title: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Acquisto prodotti - ',
                                                      style: TCTypography.of(context).text_14_bold,
                                                    ),
                                                    TextSpan(
                                                        text:
                                                        'ordine n. ${orders[index]['numero_ordine']}',
                                                        style: TCTypography.of(context).text_14),
                                                  ],
                                                  style: DefaultTextStyle.of(context).style,
                                                ),
                                              ),
                                              subtitle: Text(
                                                DateFormat('dd MMMM yyyy', 'it_IT')
                                                    .format(orders[index]['date']),
                                                style: TCTypography.of(context).text_14,
                                              ),
                                              trailing: Text(
                                                '+${orders[index]['points']} pt',
                                                style: TCTypography.of(context).text_14_bold.copyWith(
                                                    color: const Color.fromARGB(255, 26, 118, 193)),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    );


                                  },
                                  orElse: () => const SizedBox.shrink()
                              )
                          )


                        ],
                      ),
                    );
                  }else{
                    return Center(
                      child: Text(
                        "Non hai ancora accumulato nessun punto"
                      ),
                    );
                  }
                },
                orElse: ()=> const SizedBox.shrink()
            ),
          )
        )

    );


  }
}
