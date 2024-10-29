import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/login/login/login_bloc.dart';
import 'package:torri_cantine_app/registration/registration/registration_bloc.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

class SecondRegistrScreen extends StatefulWidget {
  const SecondRegistrScreen({super.key, required this.registrationDatas});
  final List<String> registrationDatas;

  @override
  State<SecondRegistrScreen> createState() => _SecondRegistrScreenState();
}

class _SecondRegistrScreenState extends State<SecondRegistrScreen> {
  LocalStorage storage = LocalStorage();
  late String fcmtoken;
  final Map<String, dynamic> _controllers = {
    'password': TextEditingController(),
    'confirmPassword': TextEditingController(),
  };
  LocalStorage token = LocalStorage();
  bool isChecked = false;

  bool validation() {
    if (_controllers['password'].text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Inserisci una Password'),
        elevation: 1,
      ));
      return false;
    } else if (_controllers['confirmPassword'].text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Inserisci conferma password'),
        elevation: 1,
      ));
      return false;
    } else if (_controllers['password'].text !=
        _controllers['confirmPassword'].text) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Le Password non coincidono'),
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
    return BlocListener<RegistrationBloc, RegistrationState>(
      bloc: context.read<RegistrationBloc>(),
      listener: (context, state) => state.maybeWhen(
        loadedWithGoogle: (response, username, password) {
          context
              .read<LoginBloc>()
              .add(LoginEvent.login(password, password, fcmtoken));
          // MainNavigation.push(context, const MainNavigation.home());
        },
        loaded: (response) => MainNavigation.push(
            context, const MainNavigation.thirdRegistration()),
        error: (error, codeError) {
          final snackBar = SnackBar(
            content: Text(error),
            elevation: 1,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        orElse: () => const SizedBox(),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 227, 231, 233),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 119, 119, 119),
              size: 30,
            ),
            color: Colors.grey,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 25.0, bottom: 18, top: 5),
              child: GestureDetector(
                child: Align(
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 161, 29, 51),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: SvgPicture.asset(
                        "assets/Headset.svg",
                      ),
                    ),
                  ),
                ),
                onTap: () {},
              ),
            ),
          ],
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
                            color: const Color.fromARGB(255, 141, 141, 141),
                          ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.035,
                          left: 25,
                          bottom: MediaQuery.of(context).size.height * 0.01),
                      child: Row(
                        children: [
                          Text("Password",
                              style: TCTypography.of(context).text_14_bold),
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
                          obscureText: true,
                          cursorColor: Colors.black,
                          controller: _controllers['password'],
                          decoration: InputDecoration(
                            labelStyle: const TextStyle(
                                decoration: TextDecoration.none),
                            hintText: "Password...",
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
                          top: 20,
                          left: 25,
                          bottom: MediaQuery.of(context).size.height * 0.01),
                      child: Row(
                        children: [
                          Text("Ripeti password",
                              style: TCTypography.of(context).text_14_bold),
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
                          obscureText: true,
                          cursorColor: Colors.black,
                          controller: _controllers['confirmPassword'],
                          decoration: InputDecoration(
                            labelStyle: const TextStyle(
                                decoration: TextDecoration.none),
                            hintText: "Ripeti Password...",
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
                          left: MediaQuery.of(context).size.height * 0.015,
                          right: MediaQuery.of(context).size.height * 0.03,
                          bottom: MediaQuery.of(context).size.height * 0.12),
                      child: Row(
                        children: [
                          Checkbox(
                              activeColor: Colors.transparent,
                              checkColor:
                                  const Color.fromARGB(255, 161, 29, 51),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              }),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              "Creando questo account confermi di aver letto, comrpeso e accettato i nostri Termini di servizio e la Politica della privacy.",
                              style: TCTypography.of(context)
                                  .text_12_bold
                                  .copyWith(
                                    color: const Color.fromARGB(
                                        255, 124, 124, 124),
                                  ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    PrimaryButton(
                      text: "CREA ACCOUNT",
                      ontap: () {

                        if(!isChecked) {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text('Devi accettare i termini e le condizioni'),
                            elevation: 1,
                          ));


                        } else {
                          if (validation()) {
                            context.read<RegistrationBloc>().add(
                                RegistrationEvent.fetch(
                                    email: widget.registrationDatas[2],
                                    firstName: widget.registrationDatas[0],
                                    lastName: widget.registrationDatas[1],
                                    username: widget.registrationDatas[2],
                                    password: _controllers['password'].text
                                )
                            );
                          }

                        }
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.055),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(children: [
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
                              style: TCTypography.of(context)
                                  .text_16_bold
                                  .copyWith(
                                    color:
                                        const Color.fromARGB(255, 90, 90, 90),
                                  )),
                          const Expanded(
                            child: Divider(
                              color: Color.fromARGB(255, 191, 190, 190),
                              height: 15,
                              thickness: 1,
                              indent: 20,
                              endIndent: 25,
                            ),
                          )
                        ]),
                      ),
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
                                child: Image.asset("assets/logo_google.png"),
                              ),
                              onTap: () {
                                context.read<RegistrationBloc>().add(
                                    const RegistrationEvent
                                        .registerWithGoogle());
                              },
                            ),
                          ]),
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
                              style: TCTypography.of(context)
                                  .text_14_bold
                                  .copyWith(
                                    color:
                                        const Color.fromARGB(255, 161, 29, 51),
                                  ),
                            ),
                            onTap: () async {
                              final tokenId = await token.getTokenId();
                              if (mounted) {
                                tokenId == null
                                    ? MainNavigation.push(
                                        context, const MainNavigation.login())
                                    : MainNavigation.push(
                                        context, const MainNavigation.home());
                              }
                            }),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
