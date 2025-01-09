import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/cart/cubit/cart_badge_cubit_cubit.dart';
import 'package:torri_cantine_app/my_orders/my_orders/my_orders_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class ThankYouScreen extends StatefulWidget {
  const ThankYouScreen({super.key,});

  @override
  State<ThankYouScreen> createState() => _ThankYouScreenState();
}

class _ThankYouScreenState extends State<ThankYouScreen> {
  // @override
  // void initState() {
  //   context.read<MyOrdersBloc>().add(const MyOrdersEvent.fetch());
  //   // context.read<ListAllOrdersBloc>().add(const ListAllOrdersEvent.fetch());
  //   context.read<CartBadgeCubitCubit>().cleanCart();
  //
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {

    return PopScope(
      canPop: false,
      onPopInvoked : (didPop){
      },
      child: Scaffold(backgroundColor: const Color.fromARGB(255, 244, 244, 244),
        appBar: AppBar(
            toolbarHeight: MediaQuery.of(context).size.height * 0.07,
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 110, 116, 119),
                size: 30,
              ),
              onPressed: () {
                MainNavigation.replace(context, [const MainNavigation.home()]);
              },
            ),
            title: Text(
              "DETTAGLI ORDINE",
              style: TCTypography.of(context).text_18_bold.copyWith(
                color: const Color.fromARGB(255, 110, 116, 119),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  child: Align(
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
                          "assets/chat-bianco.svg",
                        ),
                      ),
                    ),
                  ),
                  onTap: () async {
                    if (!await launchUrl(Uri.parse('https://wa.me/+393382028846'))) {
                      throw Exception('Could not launch url');
                    }
                  },
                ),
              )
            ]),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100.0, bottom: 30),
                child: SvgPicture.asset("assets/Feather-check-circle.svg"),
              ),
              Text(
                "Grazie per il tuo ordine!",
                style: TCTypography.of(context).text_22_bold.copyWith(
                  color: const Color.fromARGB(255, 39, 42, 43),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Column(
                  children: [
                    Text("Il tuo ordine è stato concluso.",
                        style: TCTypography.of(context).text_18_bold.copyWith(
                          color: const Color.fromARGB(255, 114, 114, 114),
                        )),
                    Text(
                      "Riceverai al più presto una e-mail di riepilogo.",
                      style: TCTypography.of(context).text_16_bold.copyWith(
                        color: const Color.fromARGB(255, 114, 114, 114),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: PrimaryButton(
                  text: "VISUALIZZA ORDINE",
                  colorText: Colors.white,
                  ontap: () {
                    MainNavigation.replace(context, [const MainNavigation.myOrders(false, false, true, false)]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );


  }
}
