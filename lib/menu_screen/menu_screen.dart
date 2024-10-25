// ignore_for_file: deprecated_member_use

import 'package:configurable_expansion_tile_null_safety/configurable_expansion_tile_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:torri_cantine_app/account/account/account_bloc.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/login/login/login_bloc.dart';
import 'package:torri_cantine_app/menu_screen/widgets/menu_items.dart';
import 'package:torri_cantine_app/menu_screen/widgets/profile_items.dart';
import 'package:torri_cantine_app/utilities/enum.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

// prova
class _MenuScreenState extends State<MenuScreen> {
  bool isPressed = false;
  LocalStorage storage = LocalStorage();
  String email = "";
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      email = await storage.getUserEmail() ?? "";
      if (mounted) context.read<AccountBloc>().add(AccountEvent.fetch(email));
    });
    super.initState();
  }

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

  var currentPage;
  var currentProfile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
            child: ListView(
              children: [
                BlocBuilder<AccountBloc, AccountState>(
                  builder: (context, state) => state.maybeWhen(
                    orElse: () => const SizedBox(),
                    loading: () => const Center(
                      child: CircularProgressIndicator(
                        color: Color.fromARGB(255, 161, 29, 52),
                      ),
                    ),
                    loaded: (model) => SizedBox(
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 28),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(model.user.first.avatar_url),
                                radius: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Text(
                                "Ciao ",
                                style: TCTypography.of(context).text_18,
                              ),
                            ),
                            Text("${model.user.first.first_name} ${model.user.first.last_name},", style: TCTypography.of(context).text_18_bold),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 27),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          MainNavigation.push(
                              context, const MainNavigation.home());
                        },
                        child: const MenuItems(
                          title: "HOME",
                          imgSVG: "assets/Menu-home.svg",
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.5),
                        child: Divider(
                          thickness: 1.5,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          MainNavigation.push(context,
                              const MainNavigation.cart(true, false, false, false));
                        },
                        child: const MenuItems(
                          title: "CARRELLO",
                          imgSVG: "assets/Menu-cart.svg",
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.5),
                        child: Divider(
                          thickness: 1.5,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          MainNavigation.push(context,
                              const MainNavigation.wishList(true, false));
                        },
                        child: const MenuItems(
                          title: "WISHLIST",
                          imgSVG: "assets/Menu-wishlist.svg",
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.5),
                        child: Divider(
                          thickness: 1.5,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          MainNavigation.push(context,
                              const MainNavigation.categories(true, false));
                        },
                        child: const MenuItems(
                          title: "CATEGORIE PRODOTTI",
                          imgSVG: "assets/Menu-prodotti.svg",
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.5),
                        child: Divider(
                          thickness: 1.5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 6, top: 17.5, bottom: 17.5),
                        child: ConfigurableExpansionTile(
                          headerExpanded: Expanded(
                            child: SizedBox(
                              width: 250,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SvgPicture.asset('assets/Menu-account.svg'),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 17),
                                    child: Text(
                                      "PROFILO PERSONALE",
                                      style:
                                      TCTypography.of(context).text_14_bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          header:
                              (isExpanded, iconTurns, heightFactor, controller) =>
                              Expanded(
                                child: SizedBox(
                                  width: 250,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset('assets/Menu-account.svg'),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 17),
                                        child: Text(
                                          "PROFILO PERSONALE",
                                          style:
                                          TCTypography.of(context).text_14_bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          childrenBody: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 18),
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: ProfileItems(
                                          id: 10,
                                          title: "Il mio account",
                                          isSelected: currentProfile ==
                                              PersonalProfile.myaccount,
                                          onTapNavigation:
                                          MainNavigation.account(true)),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 17),
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: ProfileItems(
                                          id: 11,
                                          title: "I miei ordini",
                                          isSelected: currentProfile ==
                                              PersonalProfile.myorders,
                                          onTapNavigation:
                                          const MainNavigation.myOrders(
                                              true, false, false, false)),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 17),
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: ProfileItems(
                                        id: 12,
                                        title: "Raccolta Punti",
                                        isSelected: currentProfile ==
                                            PersonalProfile.points,
                                        onTapNavigation:
                                            const MainNavigation.pointsBalance(
                                                true, false),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.5),
                        child: Divider(
                          thickness: 1.5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 6, top: 17.5, bottom: 17.5),
                        child: ConfigurableExpansionTile(
                          headerExpanded: Expanded(
                            child: SizedBox(
                              width: 250,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SvgPicture.asset('assets/Menu-assistenza.svg'),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 17),
                                    child: Text(
                                      "ASSISTENZA",
                                      style:
                                      TCTypography.of(context).text_14_bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          header:
                              (isExpanded, iconTurns, heightFactor, controller) =>
                              Expanded(
                                child: SizedBox(
                                  width: 250,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset('assets/Menu-assistenza.svg'),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 17),
                                        child: Text(
                                          "ASSISTENZA",
                                          style:
                                          TCTypography.of(context).text_14_bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          childrenBody: Column(
                            children: [
                              // Padding(
                              //   padding: const EdgeInsets.only(top: 18),
                              //   child: GestureDetector(
                              //     onTap: () {},
                              //     child: Row(
                              //       children: [
                              //         Text(
                              //           "F.A.Q.",
                              //           style: TCTypography.of(context).text_14,
                              //         ),
                              //       ],
                              //     ),
                              //   ),
                              // ),
                              Padding(
                                padding: const EdgeInsets.only(top: 17),
                                child: GestureDetector(
                                  onTap: () async {
                                    launchURL(
                                        "https://shop.torricantine.it/spedizioni/");
                                  },
                                  child: Row(
                                    children: [
                                      Text(
                                        "Spedizioni",
                                        style: TCTypography.of(context).text_14,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 17),
                                child: GestureDetector(
                                  onTap: () async {
                                    launchURL(
                                        "https://shop.torricantine.it/condizioni-di-vendita/");
                                  },
                                  child: Row(
                                    children: [
                                      Text(
                                        "Pagamenti",
                                        style: TCTypography.of(context).text_14,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 17),
                                child: GestureDetector(
                                  onTap: () async {
                                    launchURL(
                                        "https://shop.torricantine.it/condizioni-di-vendita/");
                                  },
                                  child: Row(
                                    children: [
                                      Text(
                                        "Resi e Rimborsi",
                                        style: TCTypography.of(context).text_14,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // Padding(
                              //   padding:
                              //       const EdgeInsets.only(top: 15, bottom: 10),
                              //   child: GestureDetector(
                              //     onTap: () {},
                              //     child: Row(
                              //       children: [
                              //         Text(
                              //           "Uso dell'app",
                              //           style: TCTypography.of(context).text_14,
                              //         ),
                              //       ],
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.5),
                        child: Divider(
                          thickness: 1.5,
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          launchURL('https://shop.torricantine.it/contattaci/');
                        },
                        child: const MenuItems(
                          title: "CONTATTI",
                          imgSVG: "assets/Menu-contatti.svg",
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.5),
                        child: Divider(
                          thickness: 1.5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 30),
                        child: GestureDetector(
                          onTap: () {
                            MainNavigation.popUntil(context, const MainNavigation.home());
                            MainNavigation.replace(context, [const MainNavigation.welcome()] // Wrap it in a list
                            );
                            context.read<LoginBloc>().add(const LoginEvent.logout());
                            setState(() {
                              isPressed = !isPressed;
                            });
                          },
                          child: const MenuItems(
                            title: "ESCI DALL'APP",
                            imgSVG: "assets/Menu-esci.svg",
                          ),
                        ),
                      )
                      ,
                    ],
                  ),
                ),
              ],
            ),

          ),
    );



  }
}
