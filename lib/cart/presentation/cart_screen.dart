import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:torri_cantine_app/account/account/account_bloc.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/account_bottom.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/bottom_bar.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/cart_bottom_item.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/floating_action_button.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/menu_bottom_item.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/wishlist_bottom_item.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/common/sub_page_appbar.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/app/utilitys/tc_typography.dart';
import 'package:torri_cantine_app/cart/cart/cart_bloc.dart';
import 'package:torri_cantine_app/cart/cubit/counter_single_product_cubit.dart';
import 'package:torri_cantine_app/cart/widget/cart_item.dart';
import 'package:torri_cantine_app/menu_screen/menu_screen.dart';
import 'package:torri_cantine_app/points_balance_screen/bloc/points_bloc.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';


class CartScreen extends StatefulWidget {
  final bool showAppBar;
  final bool fromMenu;
  final bool fromCompleteOrder;
  final bool fromHomePage;
  const CartScreen({
    super.key,
    required this.showAppBar,
    required this.fromMenu,
    required this.fromCompleteOrder,
    required this.fromHomePage,
  });

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  LocalStorage storage = LocalStorage();
  int selectedIndex = 0;
  double moneyDiscount = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      String email = await storage.getUserEmail() ?? "";
      if (mounted) {
        context.read<AccountBloc>().add(AccountEvent.fetch(email));
        moneyDiscount = await context.read<PointsBloc>().getMoneyDiscountAvaible() ?? 0;
      }
    });
    context.read<CartBloc>().add(const CartEvent.fetch());
    super.initState();
  }


  final GlobalKey<ScaffoldState> _key = GlobalKey();


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
          backgroundColor: Color.fromARGB(255, 244, 244, 244),
          key: _key,
          drawer: Drawer(
            child: MenuScreen(),
          ),
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: SubPageAppbar(
                text: "CARRELLO",
                onTap: widget.fromMenu
                    ?  (){ MainNavigation.pop(context); }
                // ? () => MainNavigation.push(
                //       context,
                //       const MainNavigation.menu(),
                //     )
                    : widget.fromCompleteOrder
                    ? () => MainNavigation.push(
                  context,
                  const MainNavigation.home(),
                )
                    : widget.fromHomePage
                    ? () => MainNavigation.push(
                  context,
                  const MainNavigation.home(),
                )
                    :(){ MainNavigation.pop(context); }
              // : () => MainNavigation.push(
              //       context,
              //       const MainNavigation.home(),
              //     ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: widget.fromHomePage
              ? const SizedBox()
              : FloatingButton(),
          bottomNavigationBar:  true==true?BottomBanvigationMenu(
            scaffoldKey: _key,
            initialSelectedIndex:6,
            context: context,
            //notifyParent: () => refresh(selectedindex),
          ) : widget.fromHomePage
              ? const SizedBox()
              : Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
              color: Colors.white,
            ),
            height: 70,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    _key.currentState!.openDrawer();
                    // setState(() {
                    //   selectedIndex = 3;
                    // });
                    // MainNavigation.push(
                    //   context,
                    //   const MainNavigation.menu(),
                    // );
                  },
                  child: MenuBottomItem(
                    text: 'Menu',
                    icon: Icons.menu,
                    isActive: selectedIndex == 3,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 4;
                    });
                    MainNavigation.push(
                      context,
                      const MainNavigation.account(false),
                    );
                  },
                  child: AccountBottomItem(
                    text: 'Account',
                    icon: Icons.person_outlined,
                    isActive: selectedIndex == 4,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 5;
                    });
                    MainNavigation.push(
                      context,
                      const MainNavigation.wishList(false, false),
                    );
                  },
                  child: WishListBottomItem(
                    text: 'Wishlist',
                    icon: Icons.favorite_outline,
                    isActive: selectedIndex == 5,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 6;
                    });
                    MainNavigation.push(
                      context,
                      const MainNavigation.cart(true, false, false, false),
                    );
                  },
                  child: CartBottomItem(
                    text: 'Carrello',
                    icon: Icons.shopping_cart_outlined,
                    isActive: selectedIndex == 6,
                  ),
                )
              ],
            ),
          ),
          body: BlocBuilder<CartBloc, CartState>(
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
              cartEmpty: () => const Center(child: Text('Non ci sono elementi')),
              notLogged: () => SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Accedi/Registrati per accedere al carrello'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: PrimaryButton(
                        text: 'Login/Registrazione',
                        ontap: () {
                          MainNavigation.replace(
                              context, [const MainNavigation.welcome()]);
                        },
                      ),
                    )
                  ],
                ),
              ),
              loaded: (cart) {
                bool isDiscountEnabled = false;
                print('#### cart loaded');
                // print(cart.items.first.extensions?.bundles);


                var taxedTotalItemsValue=  ((int.tryParse((cart.totals.totalItems))! + int.tryParse(cart.totals.totalItemsTax)!)/100 );
                var taxedTotalItems=  double.tryParse(taxedTotalItemsValue.toString())!.toStringAsFixed(2).replaceAll('.', ',');


                var cartTotalDiscountValue = (int.tryParse(cart.totals.totalDiscount??'0')! + int.tryParse(cart.totals.totalDiscountTax??'0')!)/100;
                if(moneyDiscount >= 5.0){
                  cartTotalDiscountValue += 5;
                  isDiscountEnabled = true;
                }
                var cartTotalDiscount = double.tryParse(cartTotalDiscountValue.toString())!.toStringAsFixed(2).replaceAll('.', ',');


                var subTotal = double.tryParse((taxedTotalItemsValue-cartTotalDiscountValue).toString())!.toStringAsFixed(2).replaceAll('.', ',');

                // print('SUBTOTALE @#!#!#!#!#!#!#  ssubTotal');
                // print(subTotal);

                var filteredItems = [];

                cart.items.forEach((element) {
                  //print(element.name);
                  //print(element.extensions?.bundles);
                  //print(element.extensions?.bundles?.bundledBy);
                  //print(element.extensions?.bundles?.values);
                  //print(element.extensions?.bundles?['bundled_item_data'].runtimeType);
                  //print(element.extensions?.bundles?['bundled_item_data']?.isHiddenInCart??'cccc');
                  //print(element.extensions?.bundles?['bundled_item_data']?['is_hidden_in_cart']);
                  //print(element.extensions?.bundles?.bundledItemData?.bundleId);
                  //print(element.id);
                  //print('________________________');

                  if(element.extensions?.bundles['bundled_item_data']?['is_hidden_in_cart'] != true
                      && element.extensions?.bundles['bundled_item_data']?['is_hidden_in_summary'] != true) {
                    filteredItems.add(element);
                  }
                  //
                  // if(element.extensions?.bundles?.bundledItemData?.isHiddenInCart != true
                  //     && element.extensions?.bundles?.bundledItemData?.isHiddenInSummary != true) {
                  //   filteredItems.add(element);
                  // }
                });
                context.read<CounterSingleProductCubit>().emit({for (var e in cart.items) e.key ?? "": e.quantity ?? 0});
                return PopScope(
                    canPop: false,
                    onPopInvoked: (didPop) {
                      print('@#@#@#@ #@#@#@#@# @# @#@ #@# @# @# @# @ # #@ #@ @# pop invoked');
                      MainNavigation.pop(context);
                      //return;
                    },
                    child:Scaffold(
                      backgroundColor: Colors.white,
                      body: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 1.5,
                        child: ListView.builder(
                          itemCount: filteredItems.length,
                          itemBuilder: (context, index) {
                            // print(filteredItems[index].name);
                            // print(filteredItems[index].extensions?.bundles?.bundledItemData?.isHiddenInCart);
                            // print(filteredItems[index].extensions?.bundles?.bundledItemData?.isHiddenInSummary);
                            // print(filteredItems[index].extensions?.bundles?.bundledBy);
                            // print(filteredItems[index].extensions?.bundles?.bundledItemData?.bundleId);
                            // print(filteredItems[index].id);
                            // print('________________________');
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: CartItem(
                                id: filteredItems[index].id!,
                                //name: cart.items[index].name,
                                productDescription: filteredItems[index].name ?? "",
                                productPrice:
                                (double.parse(filteredItems[index].prices!.price) /
                                    100)
                                    .toStringAsFixed(2).replaceAll('.', ','),
                                pathImage: filteredItems[index].images.first.src,
                                keyId: filteredItems[index].key ?? "",
                                quantity: filteredItems[index].quantity ?? 0,
                              ),
                            );
                          },
                        ),
                      ),
                      bottomNavigationBar: BottomAppBar(
                        color: Colors.white,
                        height: MediaQuery.of(context).size.height * 0.32,
                        elevation: 0,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: MediaQuery.of(context).size.height * 0.0007),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Somma articoli",
                                              style: TCTypography.of(context)
                                                  .text_16_bold),
                                          Text(
                                            "€ ${taxedTotalItems} ",
                                            //"€ ${(double.parse(cart.totals.totalPrice) / 100).toStringAsFixed(2)} ",
                                            style: TCTypography.of(context).text_16,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: int.tryParse(cart.totals.totalDiscount ??'0' )! > 0 || isDiscountEnabled,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 8),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Sconto applicato:",
                                            style: TCTypography.of(context)
                                                .text_16_bold
                                                .copyWith(
                                              color: const Color.fromARGB(
                                                  255, 13, 117, 161),
                                            ),
                                          ),
                                          Text(
                                            "- € ${ cartTotalDiscount } ",
                                            //"-€ ${(double.tryParse((int.tryParse(cart.totals.totalDiscount)!/100) as String)! + double.tryParse((int.tryParse(cart.totals.totalDiscount)!/100 * 0.22)  as String )!)!.toStringAsFixed(2).replaceAll('.',',') } ",
                                            style: TCTypography.of(context)
                                                .text_16
                                                .copyWith(
                                                color: const Color.fromARGB(
                                                    255, 13, 117, 161)),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10.0, left: 10.0, top: 8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Subtotale:",
                                          style: TCTypography.of(context).text_18_bold,
                                        ),
                                        Text(
                                          //"€ ${subTotal.toStringAsFixed(2)}",
                                          "€ ${subTotal} ",
                                          style: TCTypography.of(context).text_16_bold,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 24),
                                          child: Text(
                                            "(Totale senza spese di spedizione)",
                                            style: TCTypography.of(context).text_14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: PrimaryButton(
                                  icon: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: SvgPicture.asset(
                                      "assets/Cart.svg",
                                      width: 22,
                                      height: 22,
                                    ),
                                  ),
                                  text: "PROCEDI CON L'ORDINE",
                                  colorText: Colors.white,
                                  ontap: () {
                                    int point = 0;
                                    for(var item in cart.items){
                                      for(var i = 0; i < (item.quantity ?? 0); i++) {
                                        String price =
                                            '${item.prices?.price.substring(0, (item.prices?.price.length ?? 0) - 2)}.${item.prices?.price.substring((item.prices?.price.length ?? 0) - 2)}';
                                        double ap = double.tryParse(price) ?? 0;
                                        point += ap.toInt();
                                      }
                                    }
                                    MainNavigation.push(context, MainNavigation.completeOrder(point));
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )

                );

              },
              orElse: () => const SizedBox(),
            ),
          ),
        )

    );


  }
}
