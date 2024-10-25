import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/personal_info/update_customer/update_customer_bloc.dart';
import 'package:torri_cantine_app/app/utilitys/tc_typography.dart';
import '../../registration/model/request/registration_request.dart';

class NewShippingScreen extends StatefulWidget {
  final int customerdId;
  const NewShippingScreen({super.key, required this.customerdId});

  @override
  State<NewShippingScreen> createState() => _NewShippingScreenState();
}

class _NewShippingScreenState extends State<NewShippingScreen> {
  bool indFatturaIsChecked = false;

  TextEditingController homecontroller = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController couponController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController addressInfoController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController provController = TextEditingController();
  TextEditingController numPostController = TextEditingController();
  TextEditingController emailController = TextEditingController();

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
                Navigator.pop(context);
              },
            ),
            title: Text(
              "NUOVO INDIRIZZO",
              style: TCTypography.of(context).text_16_bold.copyWith(
                color: const Color.fromARGB(255, 110, 116, 119),
              ),
            ),
          ),
          body: BlocListener<UpdateCustomerBloc, UpdateCustomerState>(
            listener: (context, state) => state.maybeWhen(
              loaded: (response) => MainNavigation.push(
                  context, const MainNavigation.completeOrder()),
              orElse: () {},
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nome Indirizzo",
                          style: TCTypography.of(context).text_14_bold),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0, top: 5),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 35,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: const Color.fromARGB(96, 77, 76, 76),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextField(
                            cursorColor: Colors.black,
                            controller: homecontroller,
                            decoration: InputDecoration(
                              labelStyle:
                              const TextStyle(decoration: TextDecoration.none),
                              hintText: "Es: Casa, Ufficio...",
                              hintStyle: TCTypography.of(context)
                                  .text_12
                                  .copyWith(color: Colors.grey),
                              border: InputBorder.none,
                              contentPadding:
                              const EdgeInsets.only(left: 10, bottom: 15),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Nome",
                        style: TCTypography.of(context).text_14_bold,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(bottom: 15.0, top: 5),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: const Color.fromARGB(96, 77, 76, 76),
                                ),
                                borderRadius: BorderRadius.circular(8)),
                            child: TextField(
                              cursorColor: Colors.black,
                              controller: nameController,
                              decoration: InputDecoration(
                                labelStyle: const TextStyle(
                                    decoration: TextDecoration.none),
                                hintText: "Nome...",
                                hintStyle: TCTypography.of(context)
                                    .text_12
                                    .copyWith(color: Colors.grey),
                                border: InputBorder.none,
                                contentPadding:
                                const EdgeInsets.only(left: 10, bottom: 15),
                              ),
                            ),
                          )),
                      Text(
                        "Cognome",
                        style: TCTypography.of(context).text_14_bold,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0, top: 5),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 35,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: const Color.fromARGB(96, 77, 76, 76),
                              ),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextField(
                            cursorColor: Colors.black,
                            controller: surnameController,
                            decoration: InputDecoration(
                              labelStyle:
                              const TextStyle(decoration: TextDecoration.none),
                              hintText: "Cognome...",
                              hintStyle: TCTypography.of(context)
                                  .text_12
                                  .copyWith(color: Colors.grey),
                              border: InputBorder.none,
                              contentPadding:
                              const EdgeInsets.only(left: 10, bottom: 15),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Paese",
                        style: TCTypography.of(context).text_14_bold,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(bottom: 15.0, top: 5),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: const Color.fromARGB(96, 77, 76, 76),
                                ),
                                borderRadius: BorderRadius.circular(8)),
                            child: TextField(
                                cursorColor: Colors.black,
                                controller: countryController,
                                decoration: InputDecoration(
                                  labelStyle: const TextStyle(
                                      decoration: TextDecoration.none),
                                  hintText: "Italia...",
                                  hintStyle: TCTypography.of(context)
                                      .text_12
                                      .copyWith(color: Colors.grey),
                                  border: InputBorder.none,
                                  contentPadding:
                                  const EdgeInsets.only(left: 10, bottom: 15),
                                )),
                          )),
                      Text(
                        "Indirizzo",
                        style: TCTypography.of(context).text_14_bold,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: const Color.fromARGB(96, 77, 76, 76),
                                ),
                                borderRadius: BorderRadius.circular(8)),
                            child: TextField(
                                cursorColor: Colors.black,
                                controller: addressController,
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  ),
                                  labelStyle: const TextStyle(
                                      decoration: TextDecoration.none),
                                  hintText:
                                  "Cerca per Codice Postale, via o indirizzo",
                                  hintStyle: TCTypography.of(context)
                                      .text_12
                                      .copyWith(color: Colors.grey),
                                  border: InputBorder.none,
                                  contentPadding:
                                  const EdgeInsets.only(left: 10, top: 5),
                                )),
                          )),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: const Color.fromARGB(96, 77, 76, 76),
                                ),
                                borderRadius: BorderRadius.circular(8)),
                            child: TextField(
                                cursorColor: Colors.black,
                                controller: addressInfoController,
                                decoration: InputDecoration(
                                  labelStyle: const TextStyle(
                                      decoration: TextDecoration.none),
                                  hintText:
                                  "(facoltativo) Informazioni aggiuntive, scala...",
                                  hintStyle: TCTypography.of(context)
                                      .text_12
                                      .copyWith(color: Colors.grey),
                                  border: InputBorder.none,
                                  contentPadding:
                                  const EdgeInsets.only(left: 10, bottom: 15),
                                )),
                          )),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 35,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(96, 77, 76, 76),
                            ),
                            borderRadius: BorderRadius.circular(8)),
                        child: TextField(
                            cursorColor: Colors.black,
                            controller: cityController,
                            decoration: InputDecoration(
                              labelStyle:
                              const TextStyle(decoration: TextDecoration.none),
                              hintText: "Città",
                              hintStyle: TCTypography.of(context)
                                  .text_12
                                  .copyWith(color: Colors.grey),
                              border: InputBorder.none,
                              contentPadding:
                              const EdgeInsets.only(left: 10, bottom: 15),
                            )),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: const Color.fromARGB(96, 77, 76, 76),
                                ),
                                borderRadius: BorderRadius.circular(8)),
                            child: TextField(
                                cursorColor: Colors.black,
                                controller: provController,
                                decoration: InputDecoration(
                                  labelStyle: const TextStyle(
                                      decoration: TextDecoration.none),
                                  hintText: "Provincia",
                                  hintStyle: TCTypography.of(context)
                                      .text_12
                                      .copyWith(color: Colors.grey),
                                  border: InputBorder.none,
                                  contentPadding:
                                  const EdgeInsets.only(left: 10, bottom: 15),
                                )),
                          )),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 35,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(96, 77, 76, 76),
                            ),
                            borderRadius: BorderRadius.circular(8)),
                        child: TextField(
                            cursorColor: Colors.black,
                            controller: numPostController,
                            decoration: InputDecoration(
                              labelStyle:
                              const TextStyle(decoration: TextDecoration.none),
                              hintText: "Codice Postale",
                              hintStyle: TCTypography.of(context)
                                  .text_12
                                  .copyWith(color: Colors.grey),
                              border: InputBorder.none,
                              contentPadding:
                              const EdgeInsets.only(left: 10, bottom: 10),
                            )),
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Imposta come indirizzo di fatturazione predefinito",
                              style: TCTypography.of(context)
                                  .text_10_bold
                                  .copyWith(color: Colors.black54),
                            ),
                          ),
                          Checkbox(
                              activeColor: Colors.transparent,
                              checkColor: const Color.fromARGB(255, 158, 29, 48),
                              value: indFatturaIsChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  indFatturaIsChecked = value!;
                                });
                              }),
                        ],
                      ),
                      const Divider(
                          color: Color.fromARGB(255, 191, 190, 190),
                          height: 15,
                          thickness: 1),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20, top: 50),
                        child: PrimaryButton(
                          text: "SALVA E TORNA AL TUO ORDINE",
                          colorText: Colors.white,
                          ontap: () {
                            context.read<UpdateCustomerBloc>().add(
                                UpdateCustomerEvent.update(
                                    id: widget.customerdId,
                                    shipping: Shipping(
                                        address_1: homecontroller.text,
                                        address_2: addressController.text,
                                        city: cityController.text,
                                        company: addressInfoController.text,
                                        country: "IT",
                                        first_name: nameController.text,
                                        last_name: surnameController.text,
                                        postcode: numPostController.text,
                                        state: "FG")));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )

    );



  }
}
