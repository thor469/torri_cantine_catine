import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:torri_cantine_app/all_products/cubit/products_wishlisted_cubit.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/common/secondary_button.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/app/routing/auto_route/app_router.dart';
import 'package:torri_cantine_app/cart/cart/cart_bloc.dart';
import 'package:torri_cantine_app/cart/cubit/cart_badge_cubit_cubit.dart';
import 'package:torri_cantine_app/login/login/login_bloc.dart';
import 'package:torri_cantine_app/registration/registration/registration_bloc.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

@RoutePage()
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key, mounted = true});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  LocalStorage storage = LocalStorage();
  late String fcmtoken;
  bool isOverlayHiding = false;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
          (timeStamp) async {
        fcmtoken = await storage.getFCMToken() ?? "";
        if (mounted) {
          context.read<ProductsWishlistedCubit>().initWishlist();
        }
        LocalStorage token = LocalStorage();
        final username = await token.getUserName();
        final password = await token.getPassword();
        final fcmToken = await token.getFCMToken();
        //print('## DARIO JUMP LOGIN ######################################');
        if (!username.isEmpty && !password.isEmpty) {
          if (mounted) {
            context.read<LoginBloc>().add(
                LoginEvent.login(username, password, fcmToken));
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    LocalStorage token = LocalStorage();
    // LoadingOverlay overlayLoader = LoadingOverlay();

    bool isIOS = Theme.of(context).platform == TargetPlatform.iOS;
    return MultiBlocListener(
      listeners: [
        BlocListener<LoginBloc, LoginState>(
          listener: (context, state) => state.maybeWhen(
            // initial: () => overlayLoader.show(context),
            loading: (){
              setState(() {
                isLoading = true;
              });
              return null;
            },
            loggedOut : (){
              setState(() {
                isLoading = false;
              });
              return null;
            }
            // => const CircularProgressIndicator(
            //   color: Color.fromARGB(255, 161, 29, 51),
            // )
            ,
            loggedIn: (userDatas) async {
              await token.setTokenId(userDatas.token ?? "");
              await token.setUserEmail(userDatas.email ?? "");
              setState(() {
                isLoading = false;
              });
              if (context.mounted) {
                context.router.replaceAll(const [MainRoute()]);
              }
              return null;
            },
            orElse: () => const SizedBox(),
            error: (error) {
              setState(() {
                isLoading = false;
              });
              if(error.contains("isRegisteredEmail")){
                return ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Email già registrata, tentare altri metodi di login"),
                      elevation: 1,
                    ));
              }
              if(error.contains("incorrect_password")){
                return ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                  content: Text("Password errata"),
                  elevation: 1,
                ));
              } else if(error.contains("invalid_email")){
                return ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                  content: Text("Email non registrata"),
                  elevation: 1,
                ));
              }
              return null;
            },
          ),
        ),
        BlocListener<CartBloc, CartState>(
          listener: (context, state) => state.maybeWhen(
            loaded: (response) {
              // overlayLoader.hide(context);

              context.read<CartBadgeCubitCubit>().emit(response.totalItems);
              return null;
            },
            error: (error) {
              // overlayLoader.hide(context);
              final snackBar = SnackBar(
                content: Text(error),
                elevation: 1,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              return null;
            },
            cartEmpty: () => {
              context.read<CartBadgeCubitCubit>().emit(0),
              context.router.replaceAll(const [MainRoute()]),
            },
            orElse: () => const SizedBox(),
            // orElse: () => const SizedBox(),
          ),
        ),
        BlocListener<RegistrationBloc, RegistrationState>(
          bloc: context.read<RegistrationBloc>(),
          listener: (context, state) => state.maybeWhen(
            loading: (){
              return null;

              // const CircularProgressIndicator(
              //   color: Color.fromARGB(255, 161, 29, 51),
              // );
            },
            initial: () {
              return null;

              // overlayLoader.show(context);
            },
            loadedWithGoogle: (response, username, password) => {

              context.read<LoginBloc>().add(LoginEvent.login(username, password, fcmtoken)),
              // overlayLoader.hide(context),
            context.router.replaceAll(const [MainRoute()]),
            },
            loaded: (response) =>
            {
              //overlayLoader.hide(context),
            context.router.replace(const ThirdRegistrRoute()),
              // overlayLoader.hide(context),
            },

            error: (error, errorCode) async {
              // overlayLoader.hide(context);
              final username = await storage.getUserName();
              final password = await storage.getPassword();
              final fcmToken = await storage.getFCMToken();

              if (errorCode == "registration-error-email-exists") {
                if (mounted) {
                  context.read<LoginBloc>().add(LoginEvent.login(username, password, fcmToken));
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
              // overlayLoader.hide(context);

            },
            // orElse: () => const SizedBox(),
            orElse: () => const SizedBox(),
          ),
        ),
      ],
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 227, 231, 233),
        body: isLoading?
        const Center(
          child:  CircularProgressIndicator(
            color: Color.fromARGB(255, 161, 29, 51),
          ),
        ):
        SizedBox(

          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1,
                  bottom: MediaQuery.of(context).size.height * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.045,
                    ),
                    child: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 161, 29, 51),
                      radius: 55,
                      child: Image.asset(
                        "assets/torri.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    "Benvenuto su",
                    style: TCTypography.of(context).text_22_bold.copyWith(
                      color: const Color.fromARGB(255, 39, 42, 43),
                    ),
                  ),
                  Text(
                    "Torri Cantine Store",
                    style: TCTypography.of(context).text_22_bold.copyWith(
                      color: const Color.fromARGB(255, 39, 42, 43),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.03,
                        bottom: MediaQuery.of(context).size.height * 0.09),
                    child: Text(
                      "Acquista direttamente dal produttore",
                      style: TCTypography.of(context).text_16_bold.copyWith(
                          color: const Color.fromARGB(255, 39, 42, 43)),
                    ),
                  ),
                  PrimaryButton(
                      text: "ACCEDI",
                      ontap: () async {
                        final username = await token.getUserName();
                        final password = await token.getPassword();
                        final fcmToken = await token.getFCMToken();

                        if (username.isEmpty || password.isEmpty) {
                          if (context.mounted) {
                            context.router.push(const LoginRoute());
                          }
                        } else {
                          if (context.mounted) {
                            context.read<LoginBloc>().add(LoginEvent.login(username, password, fcmToken));
                          }
                        }
                      }),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.03,
                        bottom: MediaQuery.of(context).size.height * 0.15),
                    child: SecondaryButton(
                      text: "REGISTRATI",
                      ontap: () {
                        context.router.push(const FirstRegistrRoute());
                      },
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
                        ),
                      ),
                      Text(
                        "Accesso rapido",
                        style: TCTypography.of(context).text_16_bold.copyWith(
                          color: const Color.fromARGB(255, 39, 42, 43),
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
                        GestureDetector(
                          onTap: () async {
                            if (await GoogleSignIn().isSignedIn() == true) {
                              if (context.mounted) {
                                context.read<RegistrationBloc>().add(const RegistrationEvent.registerWithGoogle());
                              }
                            } else if (context.mounted) {
                              context.read<LoginBloc>().add(const LoginEvent.loginWithGoogle());
                            }
                          },
                          child: SizedBox(
                              width: 40,
                              height: 40,
                              child: Image.asset("assets/logo_google.png")),
                        ),
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
                              // overlayLoader.show(context);
                              context.read<RegistrationBloc>().add(const RegistrationEvent.registerWithApple());

                              //overlayLoader.hide(context);
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(bottom:10.0),
                              child: SizedBox(
                                  width: 45,
                                  height: 45,
                                  child: Image.asset("assets/logo_apple.png")
                              ),
                            ),
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
                        top: MediaQuery.of(context).size.height * 0.03),
                    child: Center(
                      child: GestureDetector(
                        child: Text(
                          //"Salta e vai alla home ${AppConfig.baseUrl}",
                          "Salta e vai alla home",
                          style: TCTypography.of(context).text_14_bold.copyWith(
                              color: const Color.fromARGB(255, 161, 29, 51)),
                        ),
                        onTap: () {
                          // print(Overlay.of(context));
                          // print(Overlay.of(context).mounted   );
                          // print(Overlay.of(context).context   );
                          // overlayLoader?.hide(context);
                          // overlayLoader.show(context);
                          // print(Overlay.of(context));
                          // print(Overlay.of(context).mounted   );
                          // print(Overlay.of(context).context   );
                          //
                          context.router.replaceAll(const [MainRoute()]);
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

// class LoadingOverlay {
//   OverlayEntry? overlay;
//
//   LoadingOverlay({this.overlay});
//
//   void show(BuildContext context) {
//     if (overlay == null) {
//       overlay = OverlayEntry(
//         // replace with your own layout
//         builder: (context) => const ColoredBox(
//           color: Color(0x80000000),
//           child: Center(
//             child: Center(
//               child: CircularProgressIndicator(
//                 color: Color.fromARGB(255, 161, 29, 51),
//               ),
//             ),
//           ),
//         ),
//       );
//
//       Overlay.of(context).insert(overlay!);
//     }
//   }
//
//   void hide(BuildContext context) {
//     print('#################################### HIDE OVERLAY');
//     print(this.overlay);
//
//     // print('HIDE OVERLAY');
//     //
//     // print(Overlay.of(context).context   );
//     // print(overlay);
//     // print(overlay!=null);
//     // print(overlay.runtimeType);
//
//     if (overlay != null) {
//       overlay!.remove();
//       overlay = null;
//     }
//   }
// }
