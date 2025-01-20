import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torri_cantine_app/account/model/response/account_response.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/bottom_bar.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/floating_action_button.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/common/sub_page_appbar.dart';
import 'package:torri_cantine_app/app/routing/auto_route/app_router.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/menu_screen/menu_screen.dart';
import 'package:torri_cantine_app/personal_info/update_customer/update_customer_bloc.dart';
import 'package:torri_cantine_app/utilities/date_input_formatter.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';

import '../../account/account/account_bloc.dart';

@RoutePage()
class PersonalInfoScreen extends StatefulWidget {
  final AccountResponse user;
  const PersonalInfoScreen({super.key, required this.user});

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  final Map<String, dynamic> controller = {
    'name': TextEditingController(),
    'surname': TextEditingController(),
    'phoneNumber': TextEditingController(),
  };

  TextEditingController birthDayController = TextEditingController();

  LocalStorage storage = LocalStorage();

  bool validation() {
    if (controller['name'].text.isEmpty && widget.user.user.first.first_name.trim() == "") {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Inserire un nome"), elevation: 1),
      );
      return false;
    } else if (controller['surname'].text.isEmpty && widget.user.user.first.last_name.trim() == "") {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Inserire un cognome"), elevation: 1),
      );
      return false;
    } else if (controller['phoneNumber'].text.isEmpty && widget.user.user.first.billing!.phone!.trim() == "") {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text("Inserire un numero di telefono"), elevation: 1),
      );
      return false;
    }
    return true;
  }


  int selectedIndex = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  String? userEmail;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      userEmail = await storage.getUserEmail() ?? "";
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return BlocListener<UpdateCustomerBloc, UpdateCustomerState>(
  listener: (context, state) => state.maybeWhen(
    error: (){
      if (context.mounted) {
        context.read<AccountBloc>().add(AccountEvent.fetch(userEmail ?? ""));
      }
      context.router.popForced();
      return;
    },
    loaded: (_){
      if (context.mounted) {
        context.read<AccountBloc>().add(AccountEvent.fetch(userEmail ?? ""));
      }
      context.router.popForced();
      return;
    }, orElse: () {
      return;
    }
  ),
  child: PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, _){
        if(didPop){
          // context.read<AccountBloc>().add(AccountEvent.fetch(userEmail ?? ""));
        }
      },
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 244, 244),
        key: _key,
        appBar: SubPageAppbar(
          text: "INFORMAZIONI PERSONALI",
          onTap: () {
            // context.read<AccountBloc>().add(AccountEvent.fetch(userEmail ?? ""));
            context.router.popForced();
          },
        ),
        body: BlocBuilder<AccountBloc, AccountState>(
          builder: (context, state) => state.maybeWhen(
            initial: () => const Center(
              child: CircularProgressIndicator(
                color: Color.fromARGB(255, 161, 29, 51),
              ),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(
                color: Color.fromARGB(255, 161, 29, 51),
              ),
            ),
            loaded: (model) => SingleChildScrollView(

              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    inputController(
                        "Nome",
                        widget.user.user.first.first_name,
                        TCTypography.of(context).text_14_bold,
                        TCTypography.of(context).text_14,
                        controller['name'], null),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: inputController(
                          "Cognome",
                          widget.user.user.first.last_name,
                          TCTypography.of(context).text_14_bold,
                          TCTypography.of(context).text_14,
                          controller['surname'], null),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: inputController(
                          "Telefono",
                          widget.user.user.first.billing!.phone!,
                          TCTypography.of(context).text_14_bold,
                          TCTypography.of(context).text_14,
                          controller['phoneNumber'], null),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 5),
                    //   child: inputController(
                    //       "Dati Di Nascita",
                    //       "DD/MM/YYYY",
                    //       TCTypography.of(context).text_14_bold,
                    //       TCTypography.of(context).text_14,
                    //       birthDayController, true),
                    // ),
                    // Expanded(
                    //   child: Container( height: 20,),
                    // ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 40),
                      child: BlocBuilder<UpdateCustomerBloc, UpdateCustomerState>(
                          builder: (context, state) => state.maybeWhen(
                            loading: () {
                              return Container(
                                width: MediaQuery.of(context).size.width * 0.88,
                                height: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color.fromARGB(255, 161, 29, 52),
                                ),
                                child: const Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    width: 18,
                                    height: 18,
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                      strokeWidth: 2,
                                    ),
                                  ),
                                ),
                              );
                            },
                              orElse: (){
                                return PrimaryButton(
                                    text: "SALVA LE MODIFICHE",
                                    ontap: () {
                                      if (validation()) {
                                        context.read<UpdateCustomerBloc>().add(
                                          UpdateCustomerEvent.update(
                                            id: widget.user.user.first.id,
                                            firstName: controller['name'].text.trim() == ""
                                                ? widget.user.user.first.first_name
                                                : controller['name'].text,
                                            lastName: controller['surname'].text.trim() == ""
                                                ? widget.user.user.first.last_name
                                                : controller['surname'].text,
                                            phone: controller['phoneNumber'].text.trim() == ""
                                                ? widget.user.user.first.billing!.phone!
                                                : controller['phoneNumber'].text,
                                          ),
                                        );
                                      }
                                    });
                              })


                      ),
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ),
            orElse: () => const SizedBox(),
          ),
        ),
      ),
    ),
);


  }
}

Widget inputController(String label, String hintLabel, TextStyle textStyle,
    TextStyle style, controller, bool? isDate) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 3),
        child: Text(label, style: textStyle),
      ),
      const SizedBox(height: 5),
      Container(
        width: 350,
        height: 35,
        decoration: BoxDecoration(
            border: Border.all(
              width: 1.5,
              color: const Color.fromARGB(96, 77, 76, 76),
            ),
            borderRadius: BorderRadius.circular(8)),
        child: TextField(
          inputFormatters: isDate != null && isDate? [DateInputFormatter()] : [],
          cursorColor: Colors.black,
          controller: controller,
          decoration: InputDecoration(
            labelStyle: const TextStyle(decoration: TextDecoration.none),
            hintText: hintLabel,
            hintStyle: style,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.only(left: 10, bottom: 17),
          ),
        ),
      ),
    ],
  );
}
