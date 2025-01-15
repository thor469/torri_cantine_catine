// ignore_for_file: deprecated_member_use
import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:torri_cantine_app/account/account/account_bloc.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/bottom_bar.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/floating_action_button.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/common/utilities/tc_typography.dart';
import 'package:torri_cantine_app/app/routing/auto_route/app_router.dart';
import 'package:torri_cantine_app/login/login/login_bloc.dart';
import 'package:torri_cantine_app/menu_screen/menu_screen.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../app/common/sub_page_appbar.dart';
@RoutePage()
class AccountScreen extends StatefulWidget {
  final bool fromSecondPage;
  const AccountScreen({
    Key? key,
    required this.fromSecondPage
  }) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  String? email;
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
              context.router.pop(await picker.pickImage(source: ImageSource.camera));
            },
          ),
          TextButton(
            child: const Text('Scegli dalla galleria'),
            onPressed: () async {
              context.router.pop(await picker.pickImage(source: ImageSource.gallery));
            },
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    widget.fromSecondPage ? null :
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      email = await storage.getUserEmail() ?? "";
      if (mounted) {context.read<AccountBloc>().add(AccountEvent.fetch(email!));}
    });
    super.initState();
  }

  int selectedindex =0;
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, _){
        if(didPop){
          storage.setBottomTabState(0);
          context.router.removeUntil((route) => route.name == MainRoute.name);
        }
      },
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 244, 244),
        key: _key,
        drawer: const Drawer(
          child: MenuScreen(),
        ),
        floatingActionButton:  const FloatingButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
        bottomNavigationBar: BottomBanvigationMenu(
          scaffoldKey: _key,
          initialSelectedIndex: 4,
          context: context,
        ),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: SubPageAppbar(
            showLeading: false,
            onTap: (){},
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
                        context.router.replace(WelcomeRoute());
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
                                context.router.push(PersonalInfoRoute(user: model));
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
                                context.router.push( MyOrdersRoute(
                                      fromMenu: false, fromAccount:  true,
                                    fromOrderDetails: false, fromThankScreen: false),
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
                                context.router.push(AddressListRoute(customerdId: model.user.first.id),);
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
                                 if(context.mounted){
                                   context.router.push(WishlistRoute(fromMenu: true, fromAccount: true));
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
                                  context.read<LoginBloc>().add(const LoginEvent.logout());
                                  context.router.replaceAll([WelcomeRoute()]);
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
            orElse: () {
              _fetchAccountData(context);
              return const SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
  void _fetchAccountData(BuildContext context) async {
    if (mounted) {
      email ??= await storage.getUserEmail();
      if (email != null) {
        context.read<AccountBloc>().add(AccountEvent.fetch(email!));
      }
    }
  }
}
