import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:torri_cantine_app/app/common/sub_page_appbar.dart';
import 'package:torri_cantine_app/app/routing/auto_route/app_router.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/my_orders/my_orders/list_all_orders/list_all_orders_bloc.dart';
import 'package:torri_cantine_app/my_orders/my_orders/list_all_orders/model/response/list_all_orders_response.dart';
import 'package:torri_cantine_app/points_balance_screen/bloc/points_bloc.dart';
import 'package:torri_cantine_app/points_balance_screen/model/response/point_response.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

@RoutePage()
class PointsBalanceScreen extends StatefulWidget {
  final bool fromMenu;
  final bool fromAccount;
  const PointsBalanceScreen({
    super.key,
    required this.fromMenu,
    required this.fromAccount,
  });

  @override
  State<PointsBalanceScreen> createState() => _PointsBalanceScreenState();
}

class _PointsBalanceScreenState extends State<PointsBalanceScreen> {
  int totalPoints = 0;
  bool _isDescending = true;
  LocalStorage storage = LocalStorage();
  bool firstLoad = true;
  bool firstLoad1 = true;
  bool progress = true;
  PointMaxValueResponse? maxPoint = PointMaxValueResponse(points: 200, money: 5);
  double moneyDiscount = 0;

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
    setState(() {
      progress = false;
    });
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

  String getPointDifference(){
    var ap =  (maxPoint?.points ?? 0) - totalPoints;
    if(ap < 0){
      return "0";
    }else{
      return ap.toString();
    }
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      int customerId = await storage.getCustomerId();
      if (mounted) {
        context.read<PointsBloc>().add(const PointsEvent.fetch());
        context.read<ListAllOrdersBloc>().add(ListAllOrdersEvent.fetch(customerId));
        moneyDiscount = await context.read<PointsBloc>().getMoneyDiscountAvaible() ?? 0;
        maxPoint = await context.read<PointsBloc>().getPointsMaxValues();
      }
    });
    super.initState();
  }



  @override
  Widget build(BuildContext context) {

    return Container(
      color: const Color.fromARGB(255, 244, 244, 244),
      child: SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 244, 244, 244),
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: SubPageAppbar(
                text: "RACCOLTA PUNTI",
                onTap: () => context.router.popForced(),
              ),
            ),
            body: BlocBuilder<PointsBloc, PointsState>(
              builder: (context, state) => state.maybeWhen(
                  loading: (){
                    return  const Center(
                      child: CircularProgressIndicator(
                        color: Color.fromARGB(255, 161, 29, 51),
                      ),
                    );
                  },
                  loaded: (numericId) {
                    if(numericId != ""){
                      if(firstLoad1){
                        totalPoints = int.tryParse(numericId) ?? 0;
                        // if(totalPoints > 200){
                        //   WidgetsBinding.instance.addPostFrameCallback((_) async{
                        //     setState(() {
                        //       totalPoints = 200;
                        //     });
                        //   });
                        // }
                        firstLoad1 = false;
                      }

                      return

                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Text(
                                  '$totalPoints',
                                  style: const TextStyle(
                                    fontSize: 52,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 161, 29, 51),
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Ogni 200 punti ',
                                      style: TCTypography.of(context).text_16.copyWith(
                                          color: const Color.fromARGB(255, 121, 121, 121))),
                                  Text('${moneyDiscount.toStringAsFixed(2)} €',
                                    style: TCTypography.of(context).text_16_bold.copyWith(
                                      color: const Color.fromARGB(255, 161, 29, 51),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 25.0, right: 25.0, bottom: 10.0, top: 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: LinearProgressIndicator(
                                    value: totalPoints / (maxPoint?.points ?? 0),
                                    minHeight: 20,
                                    backgroundColor: const Color.fromARGB(255, 215, 215, 215),
                                    color: const Color.fromARGB(255, 161, 29, 51),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [

                                          Row(
                                            children: [
                                              Text(
                                                'Mancano ',
                                                style: TCTypography.of(context).text_14.copyWith(
                                                  color: const Color.fromARGB(
                                                      255, 121, 121, 121),
                                                ),
                                              ),
                                              Text(
                                                getPointDifference(),
                                                style: TCTypography.of(context)
                                                    .text_16_bold
                                                    .copyWith(
                                                  color: const Color.fromARGB(255, 157, 2, 2),
                                                ),
                                              ),
                                              Text(
                                                ' pt',
                                                style: TCTypography.of(context).text_14.copyWith(
                                                  color: const Color.fromARGB(
                                                      255, 121, 121, 121),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            '5,00 €',
                                            style: TCTypography.of(context).text_16_bold.copyWith(
                                              color: const Color.fromARGB(255, 157, 2, 2),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'per ricevere il prossimo sconto',
                                            style: TCTypography.of(context).text_14.copyWith(
                                              color: const Color.fromARGB(255, 121, 121, 121),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
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
                                        return progress ? const Center(
                                            child: CircularProgressIndicator(
                                              color: Color.fromARGB(255, 161, 29, 51),
                                            ),
                                          )
                                              : Expanded(
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
                                                          color: const Color.fromARGB(255, 161, 29, 51)),
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
                      return const Center(
                        child: Text(
                            "Non hai ancora accumulato nessun punto"
                        ),
                      );
                    }
                  },
                  orElse: ()=> const SizedBox.shrink()
              ),
            )
        ),
      ),
    );


  }
}
