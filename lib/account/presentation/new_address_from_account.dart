import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torri_cantine_app/account/account/address/address_bloc.dart';
import 'package:torri_cantine_app/account/model/request/add_address_request.dart';
import 'package:torri_cantine_app/account/model/response/add_address_response.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/cart/model/response/cart_response.dart';
import 'package:torri_cantine_app/personal_info/update_customer/update_customer_bloc.dart';


class NewAddressFromAccountScreen extends StatefulWidget {
  final int customerdId;
  final bool editFatturazione;
  final bool editShipping;
  final bool isNewAddress;
  final UserAddress? existingAddress;
  final int? point;
  String returnPage;
  final CartResponse? cart;

  NewAddressFromAccountScreen({
    super.key,
    required this.customerdId,
    required this.editFatturazione,
    required this.editShipping,
    this.existingAddress,
    required this.returnPage, required this.isNewAddress,  this.point, this.cart
  });
  @override
  State<NewAddressFromAccountScreen> createState() => _NewAddressFromAccountScreenState();
}

class _NewAddressFromAccountScreenState extends State<NewAddressFromAccountScreen> {
  bool indFatturaIsChecked = false;
  bool indSpedizioneIsChecked = false;
  bool confirmSpedizioneIsChecked = false;
  bool addFatturazione = false;
  String addOther = "";
  bool addOtherChecked = false;
  bool loading = false;

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
  TextEditingController companyController = TextEditingController();



  @override
  void initState() {
    indFatturaIsChecked = widget.editFatturazione;
    indSpedizioneIsChecked = widget.editShipping;
    addFatturazione = widget.editFatturazione;
    super.initState();
    countryController.text = "Italia";
    // print('widget.existingAddress');
    // print(widget.existingAddress);
    if(widget.existingAddress!=null) {
      if(!widget.isNewAddress){
        homecontroller.text = widget.existingAddress!.first_name;
        nameController.text = widget.existingAddress!.first_name;
        emailController.text = widget.existingAddress!.email;
        phoneController.text = widget.existingAddress!.phone;
        companyController.text = widget.existingAddress!.company;
        surnameController.text = widget.existingAddress!.last_name;
        addressController.text = widget.existingAddress!.address_1;
        addressInfoController.text = widget.existingAddress!.address_2;
        cityController.text = widget.existingAddress!.city;
        provController.text = widget.existingAddress!.state;
        numPostController.text = widget.existingAddress!.postcode;
      }else{

      }
    }

  }


  bool validation() {
    if (nameController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Inserisci un nome'),
        elevation: 1,
      ));
      return false;
    }
    if (surnameController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Inserisci un cognome'),
        elevation: 1,
      ));
      return false;
    }if (companyController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Inserisci nome dell'azienda"),
        elevation: 1,
      ));
      return false;
    }
    if (phoneController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Inserisci numero di telefono'),
        elevation: 1,
      ));
      return false;
    } else if ( phoneController.text.isNotEmpty && !RegExp(
        r"(^[0|3]{1}[0-9]{5,10}$)")
        .hasMatch(phoneController.text) && (phoneController.text !='') ) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Inserisci un numero di telefono valido'),
        elevation: 1,
      ));
      return false;
    }
    if (addressController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Inserisci un inidirizzo'),
        elevation: 1,
      ));
      return false;
    }
    if (cityController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Inserisci una città'),
        elevation: 1,
      ));
      return false;
    }
    if (provController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Inserisci una provincia'),
        elevation: 1,
      ));
      return false;
    }

    if (numPostController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Inserisci un CAP'),
        elevation: 1,
      ));
      return false;
    }
    // if (!indFatturaIsChecked && !indSpedizioneIsChecked) {
    //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    //     content: Text('Specifica se l\'indirizzo è di fatturazione e/o spedizione'),
    //     elevation: 1,
    //   ));
    //   return false;
    // }

    if (emailController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Inserisci una mail'),
        elevation: 1,
      ));
      return false;
    } else if (!RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^`{|}~]+@[a-zA-Z0-9]+.[a-zA-Z]+")
        .hasMatch(emailController.text)) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Formato email non valido'),
        elevation: 1,
      ));
      return false;
      //} else if (_controllers['phone'].text.isEmpty) {
      // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      //   content: Text('Inserisci un numero di telefono'),
      //   elevation: 1,
      // ));
      //return false;
    }
    return true;
  }

  Future<void> confirmAddress({required bool isDefault, required String type}) async{
    await context.read<AddressBloc>().addAddress(
        AddAddressRequest(
            first_name: nameController.text,
            last_name: surnameController.text,
            company: companyController.text,
            address_1: addressController.text,
            address_2: addressInfoController.text,
            city: cityController.text,
            state: provController.text,
            postcode: numPostController.text,
            country: countryController.text,
            email: emailController.text,
            phone: phoneController.text,
            notes: "",
            type: type,
            is_default: isDefault
        )
    );


  }

  Future<void> updateAddress({required bool isDefault, required String id ,required String type}) async{
    await context.read<AddressBloc>().updateAddress(
        AddAddressRequest(
            first_name: nameController.text,
            last_name: surnameController.text,
            company: companyController.text,
            address_1: addressController.text,
            address_2: addressInfoController.text,
            city: cityController.text,
            state: provController.text,
            postcode: numPostController.text,
            country: countryController.text,
            email: emailController.text,
            phone: phoneController.text,
            notes: "",
            type: type,
            is_default: isDefault
        ),
      id
    );
  }

  @override
  Widget build(BuildContext context) {
    bool popBackButton = false;
    return PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          print('@#@#@#@ #@#@#@#@# @# @#@ #@# @# @# @# @ # #@ #@ @# pop invoked');
          if(!popBackButton) {
            MainNavigation.pop(context);
          }
        },
        child:Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 110, 116, 119),
                size: 30,
              ),
              onPressed: () {
                popBackButton =true;
                MainNavigation.pop(context, );
              },
            ),
            title: Text(widget.existingAddress!=null?"MODIFICA INDIRIZZO":"NUOVO INDIRIZZO",
                style: TCTypography.of(context)
                    .text_16_bold
                    .copyWith(color: const Color.fromARGB(255, 110, 116, 119))),
          ),
          body: loading ? Center(child: CircularProgressIndicator(
            color: Color.fromARGB(255, 161, 29, 51),
          )):
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                              hintStyle: TCTypography.of(context).text_12,
                              border: InputBorder.none,
                              contentPadding:
                              const EdgeInsets.only(left: 10, bottom: 15),
                            ),
                            inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\s]')),
                            ],
                          ),
                        ),
                      ),
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
                              labelStyle: const TextStyle(
                                  decoration: TextDecoration.none),
                              hintText: "Cognome...",
                              hintStyle: TCTypography.of(context).text_12,
                              border: InputBorder.none,
                              contentPadding:
                              const EdgeInsets.only(left: 10, bottom: 15),
                            ),
                            inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\s]')),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        "Azienda",
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
                            controller: companyController,
                            decoration: InputDecoration(
                              labelStyle: const TextStyle(
                                  decoration: TextDecoration.none),
                              hintText: "Azienda...",
                              hintStyle: TCTypography.of(context).text_12,
                              border: InputBorder.none,
                              contentPadding:
                              const EdgeInsets.only(left: 10, bottom: 15),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Telefono",
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
                              controller: phoneController,
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                labelStyle:
                                TextStyle(decoration: TextDecoration.none),
                                hintText: "Telefono...",
                                hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                                border: InputBorder.none,
                                contentPadding:
                                EdgeInsets.only(left: 10, bottom: 15),
                              ),
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                              ],),
                          )),
                      Text(
                        "Email",
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
                                controller: emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelStyle: const TextStyle(
                                      decoration: TextDecoration.none),
                                  hintText: "Email",
                                  hintStyle: TCTypography.of(context).text_12,
                                  border: InputBorder.none,
                                  contentPadding:
                                  const EdgeInsets.only(left: 10, bottom: 15),
                                )),
                          )),
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

                              readOnly: true,
                              decoration: InputDecoration(
                                labelStyle: const TextStyle(
                                    decoration: TextDecoration.none),
                                hintText: "Italia...",
                                hintStyle: TCTypography.of(context).text_12,
                                border: InputBorder.none,
                                contentPadding:
                                const EdgeInsets.only(left: 10, bottom: 15),
                              ),
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\s]')),
                              ],
                            ),
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
                                  // prefixIcon: const Icon(
                                  //   Icons.search,
                                  //   color: Colors.grey,
                                  // ),
                                  labelStyle: const TextStyle(
                                      decoration: TextDecoration.none),
                                  // hintText:
                                  //     "Cerca per Codice Postale, via o indirizzo",
                                  hintStyle: TCTypography.of(context).text_12,
                                  border: InputBorder.none,
                                  contentPadding:
                                  const EdgeInsets.only(left: 10, bottom: 15),
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
                                  hintStyle: TCTypography.of(context).text_12,
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
                            labelStyle: const TextStyle(
                                decoration: TextDecoration.none),
                            hintText: "Città",
                            hintStyle: TCTypography.of(context).text_12,
                            border: InputBorder.none,
                            contentPadding:
                            const EdgeInsets.only(left: 10, bottom: 15),
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\s]')),
                          ],),
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
                                hintStyle: TCTypography.of(context).text_12,
                                border: InputBorder.none,
                                contentPadding:
                                const EdgeInsets.only(left: 10, bottom: 15),
                              ),
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\s]')),
                              ],),
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
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelStyle:
                            const TextStyle(decoration: TextDecoration.none),
                            hintText: "Codice Postale",
                            hintStyle: TCTypography.of(context).text_12,
                            border: InputBorder.none,
                            contentPadding:
                            const EdgeInsets.only(left: 10, bottom: 10),
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]'),)
                          ],
                        ),
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                                "Imposta come indirizzo di fatturazione predefinito",
                                style: TCTypography.of(context).text_12_bold
                                    .copyWith(color: Colors.black54)),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Imposta come indirizzo di spedizione predefinito",
                              style: TCTypography.of(context)
                                  .text_12_bold
                                  .copyWith(color: Colors.black54),
                            ),
                          ),
                          Checkbox(
                              activeColor: Colors.transparent,
                              checkColor: const Color.fromARGB(255, 161, 29, 51),
                              value: indSpedizioneIsChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  indSpedizioneIsChecked = value!;
                                });
                              }),
                        ],
                      ),
                      const Divider(
                          color: Color.fromARGB(255, 191, 190, 190),
                          height: 15,
                          thickness: 1),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Expanded(
                      //       child: Text("Spedisci a questo indirizzo",
                      //           style: TCTypography.of(context).text_14_bold),
                      //     ),
                      //     Checkbox(
                      //         activeColor: Colors.transparent,
                      //         checkColor: const Color.fromARGB(255, 161, 29, 51),
                      //         value: confirmSpedizioneIsChecked,
                      //         onChanged: (bool? value) {
                      //           setState(() {
                      //             confirmSpedizioneIsChecked = value!;
                      //           });
                      //         }),
                      //   ],
                      // ),
                      // const Divider(color: Color.fromARGB(255, 191, 190, 190), height: 15, thickness: 1),
                      if(widget.isNewAddress)
                        ...[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                    !addFatturazione ? "Aggiungilo anche tra gli indirizzi di fatturazione" : "Aggiungilo anche tra gli indirizzi di spedizione",
                                    style: TCTypography.of(context).text_14_bold),
                              ),
                              Checkbox(
                                  activeColor: Colors.transparent,
                                  checkColor: const Color.fromARGB(255, 161, 29, 51),
                                  value: addOtherChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      addOtherChecked = !addOtherChecked;

                                      if(addOtherChecked){
                                        addOther = !addFatturazione ? "fatturazione": "spedizione";
                                      }else{
                                        addOther = "";
                                      }
                                    });
                                  }),
                            ],
                          ),
                          const Divider(color: Color.fromARGB(255, 191, 190, 190), height: 15, thickness: 1)
                        ],
                      Padding(
                          padding: const EdgeInsets.only(bottom: 20, top: 50),
                          child: PrimaryButton(
                            text: "SALVA LE MODIFICHE",
                            colorText: Colors.white,
                            ontap: () async {

                              setState(() {
                                loading = true;
                              });
                              if(validation()){
                                if(widget.isNewAddress){
                                  if(widget.editFatturazione || addOther == "fatturazione"){
                                    await confirmAddress(isDefault: indFatturaIsChecked, type: "billing");
                                  }
                                  if(widget.editShipping || addOther == "spedizione"){
                                    await confirmAddress(isDefault: indSpedizioneIsChecked, type: "shipping");
                                  }
                                }else{
                                  if(widget.editFatturazione){
                                    await updateAddress(isDefault: indFatturaIsChecked, type: "billing", id: widget.existingAddress?.id ?? "");
                                  }else if(widget.editShipping){
                                    await updateAddress(isDefault: indSpedizioneIsChecked, type: "shipping",id: widget.existingAddress?.id ?? "");
                                  }
                                }

                                switch (widget.returnPage) {
                                  case 'account' : {
                                    MainNavigation.push(context, const MainNavigation.account(false));
                                    break;
                                  }
                                  case 'completeorder' : {
                                    MainNavigation.push(context, MainNavigation.completeOrder(widget.point ?? 0, widget.cart));
                                    break;
                                  }
                                  default : {
                                    MainNavigation.push(context, const MainNavigation.account(false));
                                    break;
                                  }
                                }
                              }
                            },
                          )),
                    ],
                  ),
                ),
              )),
        )

    );


  }
}
