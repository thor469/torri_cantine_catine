// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:torri_cantine_app/account/account/account_bloc.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/cart/cart/cart_bloc.dart';
import 'package:torri_cantine_app/cart/cubit/cart_badge_cubit_cubit.dart';
import 'package:torri_cantine_app/login/login/login_bloc.dart';
import 'package:torri_cantine_app/registration/registration/registration_bloc.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LocalStorage storage = LocalStorage();
  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        enableJavaScript: true,
        forceSafariVC: true,
        forceWebView: true,
      );
    } else {
      throw 'Impossibile aprire $url';
    }
  }

  final Map<String, dynamic> _controllers = {
    'email': TextEditingController(),
    'password': TextEditingController()
  };
  LocalStorage token = LocalStorage();
  bool isChecked = false;



  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      String email = await storage.getUserEmail() ?? "";
      if (mounted) context.read<AccountBloc>().add(AccountEvent.fetch(email));


    });
    bool isIOS = Theme.of(context).platform == TargetPlatform.iOS;
    return MultiBlocListener(
      listeners: [
        BlocListener<LoginBloc, LoginState>(
          listener: (context, state) => state.maybeWhen(
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
            error: (error) {
              const snackBar = SnackBar(
                content: Text("Inserire e-mail o password valide"),
                elevation: 1,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            loggedIn: (userDatas) async {
              await token.setTokenId(userDatas.token ?? "");
              await token.setUserEmail(userDatas.email ?? "");
              if (mounted) {
                context.read<CartBloc>().add(const CartEvent.fetch());
              }
              return const SizedBox();
            },
            orElse: () => const SizedBox(),
          ),
        ),
        BlocListener<CartBloc, CartState>(
          listener: (context, state) => state.maybeWhen(
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
            loaded: (response) {
              context.read<CartBadgeCubitCubit>().emit(response.totalItems);
              MainNavigation.replace(
                context,
                [
                  const MainNavigation.home(),
                ],
              );
              return null;
            },
            error: (error) {
              const snackBar = SnackBar(
                content: Text("Errore"),
                elevation: 1,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            cartEmpty: () => const SizedBox(),
            orElse: () => const SizedBox(),
          ),
        )
      ],
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
            )
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 227, 231, 233),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.035),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 161, 29, 51),
                    radius: 35,
                    child: Image.asset(
                      "assets/torri.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.017),
                    child: Text(
                      "Login",
                      style: TCTypography.of(context).text_22_bold.copyWith(
                            color: const Color.fromARGB(255, 39, 42, 43),
                          ),
                    ),
                  ),
                  Text(
                    "Accedi con le tue credenziali",
                    style: TCTypography.of(context).text_16.copyWith(
                          color: const Color.fromARGB(255, 39, 42, 43),
                        ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.04,
                        left: 25,
                        bottom: MediaQuery.of(context).size.height * 0.01),
                    child: Row(
                      children: [
                        Text("E-mail",
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
                      cursorColor: Colors.black,
                      controller: _controllers['email'],
                      decoration: InputDecoration(
                        labelStyle:
                            const TextStyle(decoration: TextDecoration.none),
                        hintText: "E-mail...",
                        hintStyle: TCTypography.of(context).text_12,
                        border: InputBorder.none,
                        contentPadding:
                            const EdgeInsets.only(left: 10, bottom: 14),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 25.0,
                        bottom: MediaQuery.of(context).size.height * 0.01,
                        top: MediaQuery.of(context).size.height * 0.025),
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
                      cursorColor: Colors.black,
                      controller: _controllers['password'],
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password...",
                        hintStyle: TCTypography.of(context).text_12,
                        border: InputBorder.none,
                        contentPadding:
                            const EdgeInsets.only(left: 10, bottom: 14),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        bottom: MediaQuery.of(context).size.height * 0.04,
                        left: 25),
                    child: Row(
                      children: [
                        GestureDetector(
                          child: Text("Ho dimenticato la password",
                              style: TCTypography.of(context)
                                  .text_14_bold
                                  .copyWith(
                                    color:
                                        const Color.fromARGB(255, 161, 29, 51),
                                  )),
                          onTap: () async {
                            launchURL(
                                "https://shop.torricantine.it/account/password-dimenticata/");
                          },
                        ),
                      ],
                    ),
                  ),
                  PrimaryButton(
                      text: "ACCEDI",
                      ontap: () async {
                        context.read<LoginBloc>().add(LoginEvent.login(_controllers['email'].text, _controllers['password'].text, await token.getFCMToken()));
                        // if (mounted) {
                        //   MainNavigation.replace(
                        //       context, [const MainNavigation.home()]);
                        // }
                      }),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 2.0,
                        left: 10,
                        bottom: MediaQuery.of(context).size.height * 0.115),
                    child: Row(
                      children: [
                        Checkbox(
                            activeColor: Colors.transparent,
                            checkColor: const Color.fromARGB(255, 158, 29, 48),
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            }),
                        Text(
                          "Rimani connesso",
                          style: TCTypography.of(context).text_14_bold.copyWith(
                                color: Colors.black87,
                              ),
                        ),
                      ],
                    ),
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
                      )),
                      Text(
                        "Accesso rapido",
                        style: TCTypography.of(context).text_16_bold.copyWith(
                              color: const Color.fromARGB(
                                255,
                                90,
                                90,
                                90,
                              ),
                            ),
                      ),
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
                        //   onTap: () async {
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
                        SizedBox(
                            width: 40,
                            height: 40,
                            child: Image.asset("assets/logo_google.png")),
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
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.025),
                    child: Center(
                      child: GestureDetector(
                        child: Text(
                          "Non ho un account",
                          style: TCTypography.of(context).text_16_bold.copyWith(
                                color: const Color.fromARGB(255, 161, 29, 51),
                              ),
                        ),
                        onTap: () {
                          MainNavigation.push(context,
                              const MainNavigation.firstRegistration());
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

  bool validation() {
    if (_controllers['email'].text.isEmpty) {
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
    } else if (_controllers['password'].text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Inserisci Password'),
        elevation: 1,
      ));
      return false;
    }
    return true;
  }
}
