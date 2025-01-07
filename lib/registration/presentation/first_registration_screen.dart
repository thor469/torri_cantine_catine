import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/login/login/login_bloc.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

import '../registration/registration_bloc.dart';

class FirstRegistrScreen extends StatefulWidget {
  const FirstRegistrScreen({super.key});

  @override
  State<FirstRegistrScreen> createState() => _FirstRegistrScreenState();
}

class _FirstRegistrScreenState extends State<FirstRegistrScreen> {
  LocalStorage storage = LocalStorage();
  late String fcmtoken;
  final Map<String, dynamic> _controllers = {
    'name': TextEditingController(),
    'surname': TextEditingController(),
    'email': TextEditingController(),
    'phone': TextEditingController()
  };

  bool validation() {
    if (_controllers['name'].text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Inserisci un nome'),
        elevation: 1,
      ));
      return false;
    }
    if (_controllers['surname'].text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Inserisci un cognome'),
        elevation: 1,
      ));
      return false;
    } else if (_controllers['email'].text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Inserisci una mail'),
        elevation: 1,
      ));
      return false;
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^`{|}~]+@[a-zA-Z0-9]+.[a-zA-Z]+")
        .hasMatch(_controllers['email'].text)) {
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
    } else if ( _controllers['phone'].text.isNotEmpty && !RegExp(
        r"(^[0|3]{1}[0-9]{5,10}$)")
        .hasMatch(_controllers['phone'].text) && (_controllers['phone'].text !='') ) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Inserisci un numero di telefono valido'),
        elevation: 1,
      ));
      return false;
    }
    return true;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      fcmtoken = await storage.getFCMToken() ?? "";
    });
  }

  @override
  Widget build(BuildContext context) {

    bool isIOS = Theme.of(context).platform == TargetPlatform.iOS;

    return MultiBlocListener(
      listeners: [
        BlocListener<RegistrationBloc, RegistrationState>(
          bloc: context.read<RegistrationBloc>(),
          listener: (context, state) => state.maybeWhen(
            loadedWithGoogle: (response, username, password) => {
              context
                  .read<LoginBloc>()
                  .add(LoginEvent.login(password, password, fcmtoken)),
            },
            loaded: (response) => MainNavigation.push(
                context, const MainNavigation.thirdRegistration()),
            error: (error, errorCode) async {
              final username = await storage.getUserName();
              final password = await storage.getPassword();
              final fcmToken = await storage.getFCMToken();
              if (errorCode == "registration-error-email-exists") {
                if (mounted) {
                  context
                      .read<LoginBloc>()
                      .add(LoginEvent.login(username, password, fcmToken));
                }
              } else {
                final snackBar = SnackBar(
                  content: Text(error),
                  elevation: 1,
                );
                if (mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              }
              return null;
            },
            orElse: () => const SizedBox(),
          ),
        ),
        BlocListener<LoginBloc, LoginState>(
          listener: (context, state) => state.maybeWhen(
            loggedIn: (user) => {
              MainNavigation.replace(context, [const MainNavigation.home()])
            },
            error: (error) {
              const snackBar = SnackBar(
                content: Text("Inserire campi validi"),
                elevation: 1,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              return null;
            },
            orElse: () => const SizedBox(),
          ),
        ),
      ],
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 227, 231, 233),
          leading: IconButton(
            onPressed: () {
              MainNavigation.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 119, 119, 119),
              size: 30,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 227, 231, 233),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(

            child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 161, 29, 51),
                    radius: 28,
                    child: Image.asset(
                      "assets/torri.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.02),
                    child: Text(
                      "Registrati",
                      style: TCTypography.of(context).text_22_bold,
                    ),
                  ),
                  Text(
                    "Riempi i campi con i dati richiesti",
                    style: TCTypography.of(context).text_16_bold.copyWith(
                          color: const Color.fromARGB(255, 114, 114, 114),
                        ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.035,
                        left: 25,
                        bottom: MediaQuery.of(context).size.height * 0.01),
                    child: Row(
                      children: [
                        Text(
                          "Nome",
                          style: TCTypography.of(context).text_14_bold,
                        ),
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.88,
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1.5,
                            color: const Color.fromARGB(96, 77, 76, 76),
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextField(
                        style: TCTypography.of(context).text_14,
                        cursorColor: Colors.black,
                        controller: _controllers['name'],
                        decoration: InputDecoration(
                          labelStyle:
                              const TextStyle(decoration: TextDecoration.none),
                          hintText: "Nome...",
                          hintStyle: TCTypography.of(context)
                              .text_12
                              .copyWith(color: Colors.grey),
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.only(left: 10, bottom: 19),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 25.0,
                        bottom: MediaQuery.of(context).size.height * 0.01,
                        top: MediaQuery.of(context).size.height * 0.015),
                    child: Row(
                      children: [
                        Text(
                          "Cognome",
                          style: TCTypography.of(context).text_14_bold,
                        ),
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.88,
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1.5,
                            color: const Color.fromARGB(96, 77, 76, 76),
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextField(
                        style: TCTypography.of(context).text_14,
                        cursorColor: Colors.black,
                        controller: _controllers['surname'],
                        decoration: InputDecoration(
                          labelStyle:
                              const TextStyle(decoration: TextDecoration.none),
                          hintText: "Cognome...",
                          hintStyle: TCTypography.of(context)
                              .text_12
                              .copyWith(color: Colors.grey),
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.only(left: 10, bottom: 19),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 25.0,
                        bottom: MediaQuery.of(context).size.height * 0.01,
                        top: MediaQuery.of(context).size.height * 0.015),
                    child: Row(
                      children: [
                        Text(
                          "E-mail",
                          style: TCTypography.of(context).text_14_bold,
                        ),
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.88,
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1.5,
                            color: const Color.fromARGB(96, 77, 76, 76),
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextField(
                        style: TCTypography.of(context).text_14,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.emailAddress,
                        controller: _controllers['email'],
                        decoration: InputDecoration(
                          labelStyle:
                              const TextStyle(decoration: TextDecoration.none),
                          hintText: "E-mail...",
                          hintStyle: TCTypography.of(context)
                              .text_12
                              .copyWith(color: Colors.grey),
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.only(left: 10, bottom: 19),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 25.0,
                        bottom: MediaQuery.of(context).size.height * 0.01,
                        top: MediaQuery.of(context).size.height * 0.015),
                    child: Row(
                      children: [
                        Text(
                          "Telefono",
                          style: TCTypography.of(context).text_14_bold,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.88,
                    height: 35,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.5,
                          color: const Color.fromARGB(96, 77, 76, 76),
                        ),
                        borderRadius: BorderRadius.circular(8)),
                    child: TextField(
                      style: TCTypography.of(context).text_14,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.phone,
                      controller: _controllers['phone'],
                      decoration: InputDecoration(
                        labelStyle:
                            const TextStyle(decoration: TextDecoration.none),
                        hintText: "Es: 33576...",
                        hintStyle: TCTypography.of(context)
                            .text_12
                            .copyWith(color: Colors.grey),
                        border: InputBorder.none,
                        contentPadding:
                            const EdgeInsets.only(left: 10, bottom: 19),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.04,
                        bottom: MediaQuery.of(context).size.height * 0.07),
                    child: PrimaryButton(
                        text: "AVANTI",
                        ontap: () {
                          if (validation()) {
                            MainNavigation.push(
                                context,
                                MainNavigation.secondRegistration([
                                  _controllers['name'].text,
                                  _controllers['surname'].text,
                                  _controllers['email'].text,
                                  _controllers['phone'].text,
                                ]));
                          }
                        }),
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: Divider(
                          color: Color.fromARGB(255, 191, 190, 190),
                          height: 15,
                          thickness: 1,
                          indent: 20,
                          endIndent: 25,
                        ),
                      ),
                      Text("Registrati con",
                          style: TCTypography.of(context).text_16_bold.copyWith(
                                color: const Color.fromARGB(255, 90, 90, 90),
                              )),
                      const Expanded(
                          child: Divider(
                        color: Color.fromARGB(255, 191, 190, 190),
                        height: 15,
                        thickness: 1,
                        indent: 20,
                        endIndent: 25,
                      ))
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // GestureDetector(
                        //   onTap: () {
                        //     if (mounted) {
                        //       context.read<RegistrationBloc>().add(
                        //           const RegistrationEvent
                        //               .registerWithFacebook());
                        //     }
                        //   },
                        //   child: SizedBox(
                        //       width: 40,
                        //       height: 40,
                        //       child: Image.asset("assets/logo_fb.png")),
                        // ),
                        // const SizedBox(
                        //   width: 40,
                        // ),
                        GestureDetector(
                            child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Image.asset("assets/logo_google.png")),
                            onTap: () {
                              context.read<RegistrationBloc>().add(
                                  const RegistrationEvent.registerWithGoogle());
                            }),
                        Visibility(
                          visible: isIOS,
                          child: const SizedBox(
                            width: 40,
                          ),
                        ),
                        Visibility(
                          visible: isIOS,
                          child: GestureDetector(
                            onTap: () {
                              context.read<RegistrationBloc>().add(
                                  const RegistrationEvent.registerWithApple());
                            },
                            child: SizedBox(
                                width: 40,
                                height: 40,
                                child: Image.asset("assets/logo_apple.png")),
                          ),
                        ),

                      ],
                    ),
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 191, 190, 190),
                    height: 15,
                    thickness: 1,
                    indent: 25,
                    endIndent: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02),
                    child: Center(
                      child: GestureDetector(
                        child: Text(
                          "Ho già un account",
                          style: TCTypography.of(context).text_14_bold.copyWith(
                                color: const Color.fromARGB(255, 161, 29, 51),
                              ),
                        ),
                        onTap: () {
                          MainNavigation.replace(
                              context, const [MainNavigation.login()]);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
