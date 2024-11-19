// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:torri_cantine_app/account/account/account_bloc.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/bottom_bar.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/floating_action_button.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/login/login/login_bloc.dart';
import 'package:torri_cantine_app/menu_screen/menu_screen.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../app/common/sub_page_appbar.dart';

class AccountPage extends StatefulWidget {
  final bool fromMenu;
  const AccountPage({
    Key? key,
    required this.fromMenu,
  }) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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

  LocalStorage storage = LocalStorage();
  void _changeImage() async {
    final picker = ImagePicker();
    final pickedFile = await showDialog<File?>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Carica nuova immagine'),
        actions: <Widget>[
          TextButton(
            child: const Text('Scatta una foto'),
            onPressed: () async {
              Navigator.of(context).pop(await picker.pickImage(source: ImageSource.camera));
            },
          ),
          TextButton(
            child: const Text('Scegli dalla galleria'),
            onPressed: () async {
              Navigator.of(context).pop(await picker.pickImage(source: ImageSource.gallery));
            },
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      String email = await storage.getUserEmail() ?? "";
      if (mounted) context.read<AccountBloc>().add(AccountEvent.fetch(email));
    });
    super.initState();
  }

  int selectedindex =0;
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        onPopInvoked : (didPop){
        },
        child:Scaffold(
          backgroundColor: const Color.fromARGB(255, 244, 244, 244),
          key: _key,
          drawer: widget.fromMenu ? const Drawer(
            child: MenuScreen(),
          ):
          const SizedBox.shrink(),
          floatingActionButton: widget.fromMenu? const FloatingButton():const SizedBox(),
          floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
          bottomNavigationBar: widget.fromMenu? BottomBanvigationMenu(
            scaffoldKey: _key,
            initialSelectedIndex: 4,
            context: context,
          ): const SizedBox.shrink(),
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: SubPageAppbar(
              showLeading: false,
              onTap: widget.fromMenu
                  ?  (){ MainNavigation.pop(context); }
                  : (){},
              text: "IL MIO ACCOUNT",
            ),
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
              notLogged: () {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Accedi/Registrati per accedere al tuo account'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PrimaryButton(text: 'Login/Registrazione', ontap: () {
                          MainNavigation.replace(context, [
                            const MainNavigation.welcome()
                          ]);
                        },),
                      )
                    ],
                  ),
                );
              },
              loaded: (model) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            GestureDetector(
                              onTap: _changeImage,
                              child: CircleAvatar(
                                radius: 65,
                                backgroundImage:
                                NetworkImage(model.user.first.avatar_url),
                              ),
                            ),
                            Positioned(
                              right: 4,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.edit_document,
                                  color: Colors.grey,
                                ),
                                onPressed: _changeImage,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "${model.user.first.first_name} ${model.user.first.last_name}",
                          style: TCTypography.of(context).text_22_bold,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "#${model.user.first.id}",
                          style: TCTypography.of(context)
                              .text_18
                              .copyWith(color: Colors.grey),
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              ListTile(
                                leading: SvgPicture.asset(
                                  'assets/Account-datipers.svg',
                                  height: 25,
                                  width: 25,
                                ),
                                title: Text(
                                  "Informazioni personali",
                                  style: TCTypography.of(context).text_16_bold,
                                ),
                                trailing: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.arrow_forward_ios),
                                  ],
                                ),
                                onTap: () {
                                  MainNavigation.push(
                                      context, MainNavigation.personalInfo(model));
                                },
                              ),
                              const Divider(
                                color: Color.fromARGB(255, 138, 137, 137),
                                height: 1,
                                indent: 15,
                                endIndent: 20,
                              ),
                              ListTile(
                                leading: SvgPicture.asset(
                                  'assets/Account-ordini.svg',
                                  height: 25,
                                  width: 25,
                                ),
                                title: Text("I miei ordini",
                                    style: TCTypography.of(context).text_16_bold),
                                trailing:const  Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.arrow_forward_ios),
                                  ],
                                ),
                                onTap: () {
                                  MainNavigation.push(
                                    context,
                                    const MainNavigation.myOrders(
                                        false, true, false, false),
                                  );
                                },
                              ),
                              const Divider(
                                color: Color.fromARGB(255, 138, 137, 137),
                                height: 1,
                                indent: 15,
                                endIndent: 20,
                              ),
                              ListTile(
                                leading: SvgPicture.asset(
                                  'assets/Account-indirizzi.svg',
                                  height: 25,
                                  width: 25,
                                ),
                                title: Text("I miei indirizzi",
                                    style: TCTypography.of(context).text_16_bold),
                                trailing:const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.arrow_forward_ios),
                                  ],
                                ),
                                onTap: () {
                                  MainNavigation.push(
                                    context,
                                    MainNavigation.addressList(
                                        model.user.first.id),
                                  );
                                },
                              ),
                              const Divider(
                                color: Color.fromARGB(255, 138, 137, 137),
                                height: 1,
                                indent: 15,
                                endIndent: 20,
                              ),
                              ListTile(
                                leading: SvgPicture.asset(
                                  'assets/Account-metodipagamento.svg',
                                  height: 25,
                                  width: 25,
                                ),
                                title: Text("Metodi di pagamento",
                                    style: TCTypography.of(context).text_16_bold),
                                trailing:const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.arrow_forward_ios),
                                  ],
                                ),
                                onTap: () async {
                                  launchURL(
                                      "https://shop.torricantine.it/modalita-di-pagamento/");
                                },
                              ),
                              const Divider(
                                color: Color.fromARGB(255, 138, 137, 137),
                                height: 1,
                                indent: 15,
                                endIndent: 20,
                              ),
                              ListTile(
                                leading: SvgPicture.asset(
                                  'assets/Account-wishlist.svg',
                                  height: 25,
                                  width: 25,
                                ),
                                title: Text("Wishlist",
                                    style: TCTypography.of(context).text_16_bold),
                                trailing: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.arrow_forward_ios),
                                  ],
                                ),
                                onTap: () async {
                                   await storage.setBottomTabState(5);
                                   if(mounted){
                                     MainNavigation.push(context, const MainNavigation.wishList(true, true));
                                   }
                                  }
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 55.0, left: 5),
                                child: ListTile(
                                  leading: SvgPicture.asset(
                                    'assets/Account-esci.svg',
                                    height: 25,
                                    width: 25,
                                  ),
                                  title: Text("Logout",
                                      style: TCTypography.of(context).text_16_bold),
                                  onTap: () async {
                                    context
                                        .read<LoginBloc>()
                                        .add(const LoginEvent.logout());
                                    MainNavigation.replace(context, [
                                      const MainNavigation.welcome(),
                                    ]);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              orElse: () => const SizedBox.shrink(),
            ),
          ),
        )

    );



  }
}
