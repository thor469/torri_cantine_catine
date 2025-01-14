import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/account_bottom.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/bottom_bar.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/cart_bottom_item.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/floating_action_button.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/menu_bottom_item.dart';
import 'package:torri_cantine_app/app/common/bottom_bar_items/wishlist_bottom_item.dart';
import 'package:torri_cantine_app/app/common/primary_button.dart';
import 'package:torri_cantine_app/app/common/sub_page_appbar.dart';
import 'package:torri_cantine_app/app/routing/auto_route/app_router.dart';
import 'package:torri_cantine_app/app/utilitys/tc_typography.dart';
import 'package:torri_cantine_app/cart/cart/cart_bloc.dart';
import 'package:torri_cantine_app/cart/cubit/cart_badge_cubit_cubit.dart';
import 'package:torri_cantine_app/cart/cubit/counter_single_product_cubit.dart';
import 'package:torri_cantine_app/cart/widget/cart_item.dart';
import 'package:torri_cantine_app/menu_screen/menu_screen.dart';
import 'package:torri_cantine_app/points_balance_screen/bloc/points_bloc.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

@RoutePage()
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
  bool isFirstLoad = true;
  int cartPointDiscountValue = 0;
  bool isPointDiscountEnabled = false;


  @override
  void initState() {
    context.read<CartBloc>().add(const CartEvent.fetch());
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      if (mounted) {
        double money = 0.0;
          money = await context.read<PointsBloc>().getMoneyDiscountAvaible() ?? 0;
        setState(() {
          moneyDiscount = money;
        });
      }
    });
    super.initState();
  }


  final GlobalKey<ScaffoldState> _key = GlobalKey();


  @override
  Widget build(BuildContext context) {

    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, _){
        if(didPop){
          storage.setBottomTabState(0);
        }
      },
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 244, 244, 244),
        key: _key,
        drawer: const Drawer(
          child: MenuScreen(),
        ),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: SubPageAppbar(
            showLeading: false,
              text: "CARRELLO",
              onTap: (){}
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: widget.fromHomePage
            ? const SizedBox()
            : const FloatingButton(),
        bottomNavigationBar:  true==true?BottomBanvigationMenu(
          scaffoldKey: _key,
          initialSelectedIndex:6,
          context: context,
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
                  context.router.push(AccountRoute(fromSecondPage: false),);
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
                  context.router.push(WishlistRoute(fromMenu:false , fromAccount:false));
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
                  context.router.push(
                    CartRoute(
                        showAppBar: true, fromMenu:  false,
                        fromCompleteOrder:  false, fromHomePage:  false),
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
            loading: () => const Center(
              child: CircularProgressIndicator(
                color: Color.fromARGB(255, 161, 29, 51),
              ),
            ),
            cartEmpty: ()  {
              if(isFirstLoad){
                WidgetsBinding.instance.addPostFrameCallback((_) async{
                  context.read<CartBadgeCubitCubit>().removeCartItem();
                });
                isFirstLoad = false;
              }
              return  const Center(child: Text('Non ci sono elementi'));
            },
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
                        context.router.replace( WelcomeRoute());
                      },
                    ),
                  )
                ],
              ),
            ),
            loaded: (cart) {
              bool isDiscountEnabled = false;
              var taxedTotalItemsValue=  ((int.tryParse((cart.totals.totalItems))! + int.tryParse(cart.totals.totalItemsTax)!)/100 );
              var taxedTotalItems=  double.tryParse(taxedTotalItemsValue.toString())!.toStringAsFixed(2).replaceAll('.', ',');


              var cartTotalDiscountValue = (int.tryParse(cart.totals.totalDiscount??'0')! + int.tryParse(cart.totals.totalDiscountTax??'0')!)/100;
              if(moneyDiscount >= 5.0 && taxedTotalItemsValue >= 50){
                cartPointDiscountValue = 5;
                isPointDiscountEnabled = true;
              }
              var cartTotalDiscount = double.tryParse(cartTotalDiscountValue.toString())!.toStringAsFixed(2).replaceAll('.', ',');


              var subTotal = double.tryParse((taxedTotalItemsValue-cartTotalDiscountValue-cartPointDiscountValue).toString())!.toStringAsFixed(2).replaceAll('.', ',');


              var filteredItems = [];

              for (var element in cart.items) {

                if(element.extensions?.bundles['bundled_item_data']?['is_hidden_in_cart'] != true
                    && element.extensions?.bundles['bundled_item_data']?['is_hidden_in_summary'] != true) {
                  filteredItems.add(element);
                }
              }
              context.read<CounterSingleProductCubit>().emit({for (var e in cart.items) e.key ?? "": e.quantity ?? 0});
              return Scaffold(
                backgroundColor: Colors.white,
                body: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1.5,
                  child: ListView.builder(
                    itemCount: filteredItems.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: CartItem(
                          id: filteredItems[index].id!,
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
                                    Text("Somma articoli:",
                                        style: TCTypography.of(context)
                                            .text_16_bold),
                                    Text(
                                      "€ $taxedTotalItems ",
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
                                      style: TCTypography.of(context).text_16_bold.copyWith(
                                        color: const Color.fromARGB(
                                            255, 13, 117, 161),
                                      ),
                                    ),
                                    Text(
                                      "- € $cartTotalDiscount  ",
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
                            Visibility(
                              visible:isPointDiscountEnabled,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Raccolta punti:",
                                      style: TCTypography.of(context).text_16_bold.copyWith(
                                        color: const Color.fromARGB(255, 13, 117, 161),
                                      ),
                                    ),
                                    Text(
                                      "- € $cartPointDiscountValue.00",
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
                                    "€ $subTotal ",
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
                                  if(item.prices?.price != "0"){
                                    String price = '${item.prices?.price.substring(0, (item.prices?.price.length ?? 0) - 2)}.${item.prices?.price.substring((item.prices?.price.length ?? 0) - 2)}';
                                    double ap = double.tryParse(price) ?? 0;
                                    point += ap.toInt();
                                  }
                                }
                              }
                              context.router.push(CompleteOrderRoute(totPoint: point,cartSubTotal:  subTotal));
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );

            },
            orElse: () => const SizedBox(),
          ),
        ),
      ),
    );


  }
}
