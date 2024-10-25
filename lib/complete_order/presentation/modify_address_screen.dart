import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:torri_cantine_app/account/account/account_bloc.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';
import 'package:torri_cantine_app/app/utilitys/tc_typography.dart';

class ModifyAddressScreen extends StatefulWidget {
  const ModifyAddressScreen({super.key});

  @override
  State<ModifyAddressScreen> createState() => _ModifyAddressScreenState();
}

class _ModifyAddressScreenState extends State<ModifyAddressScreen> {
  int? gruppoVal = 0;
  bool indFatturaIsChecked = false;
  bool indSpedizioneIsChecked = false;
  LocalStorage storage = LocalStorage();
  Map<String, String> addressData = {};
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      String email = await storage.getUserEmail() ?? "";
      if (mounted) context.read<AccountBloc>().add(AccountEvent.fetch(email));
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
          appBar: AppBar(
              toolbarHeight: MediaQuery.of(context).size.height * 0.1,
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Color.fromARGB(255, 110, 116, 119),
                  size: 30,
                ),
                onPressed: () {
                  MainNavigation.push(
                      context, const MainNavigation.completeOrder());
                },
              ),
              title: Text(
                "INDIRIZZI SALVATI",
                style: TCTypography.of(context).text_18_bold.copyWith(
                  color: const Color.fromARGB(255, 110, 116, 119),
                ),
              ),
              actions: [
//             Padding(
//                 padding: const EdgeInsets.only(right: 20.0),
//                 child: GestureDetector(
//                   child: Align(
//                       child: Container(
//                     width: 32,
//                     height: 32,
//                     decoration: BoxDecoration(
//                       color: const Color.fromARGB(255, 161, 29, 51),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: const Icon(Icons.add),
//                   )),
//                   onTap: () {
// //todo navigazione
//                   },
//                 )
//             ),
              ]),
          body: BlocBuilder<AccountBloc, AccountState>(
            builder: (context, state) => state.maybeWhen(
              orElse: () => const SizedBox(),
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
              loaded: (model) => SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: model.user.first.billing!.address_1 == null ||
                        model.user.first.billing!.address_1 == ""
                        ? const Center(
                      child: Text("Non ci sono indirizzi"),
                    )
                        : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                      model.user.first.billing!.address_1
                                          .toString(),
                                      style: TCTypography.of(context)
                                          .text_14_bold),
                                  const SizedBox(width: 5),
                                  SvgPicture.asset(
                                    "assets/Ordine-edit.svg",
                                    width: 22,
                                    height: 22,
                                  ),
                                ],
                              ),
                              Radio(
                                  activeColor:
                                  const Color.fromARGB(255, 158, 29, 48),
                                  value: 1,
                                  groupValue: gruppoVal,
                                  onChanged: (value) {
                                    setState(() {
                                      gruppoVal = value;
                                    });
                                  }),
                            ]),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${model.user.first.billing!.first_name} ${model.user.first.billing!.last_name}",
                                ),
                                Text(model.user.first.billing!.address_2 ??
                                    ""),
                                Text(
                                  "${model.user.first.billing!.city ?? ""}, ${model.user.first.billing!.postcode ?? ""}",
                                ),
                                Text(model.user.first.billing!.country ?? ""),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            "Questo è l'indirizzo di spedizione predefinito",
                            style: TCTypography.of(context)
                                .text_12_bold
                                .copyWith(color: Colors.grey),
                          ),
                        ),
                        const Divider(
                          color: Color.fromARGB(255, 191, 190, 190),
                          height: 15,
                          thickness: 1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          bottomNavigationBar: BlocBuilder<AccountBloc, AccountState>(
            builder: (context, state) => state.maybeWhen(
              orElse: () => const SizedBox(),
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
              loaded: (model) {

                if(
                  model.user.first.shipping!.first_name != null &&
                  model.user.first.shipping!.first_name != '' &&
                  model.user.first.billing!.first_name != null &&
                  model.user.first.billing!.first_name !=''
                ) {

                  return const SizedBox();
                }

                return BottomAppBar(
                  height: MediaQuery.of(context).size.height * 0.11,
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: PrimaryButton(
                      icon: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0, ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      text: "AGGIUNGI UN NUOVO INDIRIZZO",
                      colorText: Colors.white,
                      ontap: () {
                        MainNavigation.push(
                            context, MainNavigation.newAddress(model.user.first.id));
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        )

    );


  }
}
