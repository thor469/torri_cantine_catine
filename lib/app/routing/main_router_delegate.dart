import 'package:flutter/material.dart';
import 'package:flutter_paypal/flutter_paypal.dart';
import 'package:torri_cantine_app/account/presentation/account.dart';
import 'package:torri_cantine_app/account/presentation/adress_list.dart';
import 'package:torri_cantine_app/account/presentation/new_address_from_account.dart';
import 'package:torri_cantine_app/app/app_config.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/app/routing/main_navigation_stack.dart';
import 'package:torri_cantine_app/my_orders/my_orders/my_orders_bloc.dart';
import 'package:torri_cantine_app/personal_info/presentation/personal_info.dart';
import 'package:torri_cantine_app/points_balance_screen/presentation/points_balance.dart';
import 'package:torri_cantine_app/all_products/presentation/products_screen.dart';
import 'package:torri_cantine_app/app/app.dart';
import 'package:torri_cantine_app/app/common/fade_page.dart';
import 'package:torri_cantine_app/cart/presentation/cart_screen.dart';
import 'package:torri_cantine_app/categories/presentation/categories_detail_screen.dart';
import 'package:torri_cantine_app/categories/presentation/categories_screen.dart';
import 'package:torri_cantine_app/complete_order/presentation/complete_order_screen.dart';
import 'package:torri_cantine_app/complete_order/presentation/thank_you_screen.dart';
import 'package:torri_cantine_app/menu_screen/menu_screen.dart';
import 'package:torri_cantine_app/my_orders/presentation/my_orders.dart';
import 'package:torri_cantine_app/main_screen/presentation/main_screen.dart';
import 'package:torri_cantine_app/login/presentation/login_screen.dart';
import 'package:torri_cantine_app/notification/presentation/notification.dart';
import 'package:torri_cantine_app/order_detail/presentation/order_detail.dart';
import 'package:torri_cantine_app/product_detail/presentation/product_detail_screen.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/presentation/add_review_screen.dart';
import 'package:torri_cantine_app/registration/presentation/first_registration_screen.dart';
import 'package:torri_cantine_app/registration/presentation/second_registration_screen.dart';
import 'package:torri_cantine_app/registration/presentation/third_registration_screen.dart';
import 'package:torri_cantine_app/welcome/presentation/welcome_screen.dart';
import 'package:torri_cantine_app/wishlist_screen/presentation/wishlist_screen.dart';



class MainRouterDelegate extends RouterDelegate<MainNavigationStack>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final MainNavigationStack stack;

  @override
  final GlobalKey<NavigatorState> navigatorKey = App.navigatorKey;

  MainRouterDelegate(this.stack) {
    stack.addListener(notifyListeners);
  }

  @override
  void dispose() {
    stack.removeListener(notifyListeners);
    super.dispose();
  }

  bool _onNotification(MainNavigationNotification notification) {

    // print('on Notification @#@#@#@#@#@#0');
    // print(stack);
    // print(stack.items.length);


    notification.when(
      push: (page) => stack.push(page),
      pop: () => stack.pop(),
      replace: (newStack) => stack.items = newStack,
      popUntil: (page) => stack.items = _getPopUntilStack(page),
    );
    return true;
  }

  List<MainNavigation> _getPopUntilStack(MainNavigation page) {
    final index = stack.items.lastIndexOf(page);
    if (index == stack.items.length - 1) {
      return stack.items;
    }

    if (index >= 0) {
      return stack.items.sublist(0, index + 1);
    }

    return [];
  }

  @override
  MainNavigationStack? get currentConfiguration => stack;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<MainNavigationNotification>(
      onNotification: _onNotification,
      child: Navigator(
        pages: [
          for (final entry in stack.items.asMap().entries)
            entry.value.when(
              home: () => FadePage(
                key: ValueKey('home_${entry.key}'),
                child: const MainScreen(),
              ),
              welcome: () => FadePage(
                key: ValueKey('welcome_${entry.key}'),
                child: const WelcomeScreen(),
              ),
              login: () => FadePage(
                key: ValueKey('login_${entry.key}'),
                child: const LoginScreen(),
              ),
              firstRegistration: () => FadePage(
                key: ValueKey('firstRegistration_${entry.key}'),
                child: const FirstRegistrScreen(),
              ),
              secondRegistration: (registrationDatas) => FadePage(
                key: ValueKey('secondRegistration_${entry.key}'),
                child:
                    SecondRegistrScreen(registrationDatas: registrationDatas),
              ),
              thirdRegistration: () => FadePage(
                key: ValueKey('thirdRegistration_${entry.key}'),
                child: const ThirdRegistrScreen(),
              ),
              cart: (showAppBar, fromMenu, fromCompleteOrder, fromHomePage) =>
                  FadePage(
                key: ValueKey('cart_${entry.key}'),
                child: CartScreen(
                  showAppBar: showAppBar,
                  fromMenu: fromMenu,
                  fromCompleteOrder: fromCompleteOrder,
                  fromHomePage: fromHomePage,
                ),
              ),
              myOrders:
                  (fromMenu, fromAccount, fromThankScreen, fromOrderDetails) =>
                      FadePage(
                key: ValueKey('myOrders_${entry.key}'),
                child: MyOrders(
                    fromMenu: fromMenu,
                    fromAccount: fromAccount,
                    fromThankScreen: fromThankScreen,
                    fromOrderDetails: fromOrderDetails),
              ),
              pointsBalance: (fromMenu, fromAccount) => FadePage(
                key: ValueKey('pointsBalance_${entry.key}'),
                child: PointsBalance(
                  fromMenu: fromMenu,
                  fromAccount: fromAccount,
                ),
              ),
              account: (fromMenu) => FadePage(
                key: ValueKey('account_${entry.key}'),
                child: AccountPage(fromMenu: fromMenu),
              ),
              notification: () => FadePage(
                key: ValueKey('notification_${entry.key}'),
                child: const NotificationPage(),
              ),
              orderDetail: (order) => FadePage(
                key: ValueKey('orderDetail_${entry.key}'),
                child: OrderDetail(order: order),
              ),
              products: () => FadePage(
                key: ValueKey('products_${entry.key}'),
                child: Products( fromMenu: true, showAppBar: true,),
              ),
              completeOrder: (totPoint,cart) => FadePage(
                key: ValueKey('completeOrder_${entry.key}'),
                child:  CompleteOrderScreen(totPoint: totPoint,cart: cart,
                ),
              ),
              categories: (showAppBar, fromMenu) => FadePage(
                key: ValueKey('categories_${entry.key}'),
                child: CategoriesScreen(
                    showAppBar: showAppBar, fromMenu: fromMenu),
              ),
              // modifyAddress: () => FadePage(
              //   key: ValueKey('modifyAddress_${entry.key}'),
              //   child: const ModifyAddressScreen(),
              // ),
              productDetail: (id) => FadePage(
                key: ValueKey('productDetail_${entry.key}'),
                child: ProductDetailPage(
                  id: id,
                ),
              ),
              // newAddress: (id) => FadePage(
              //   key: ValueKey('newAddress_${entry.key}'),
              //   child: NewAddressScreen(
              //     customerdId: id,
              //   ),
              // ),
              addressList: (id) => FadePage(
                key: ValueKey('addressList_${entry.key}'),
                child: AddressListScreen(
                  customerdId: id,
                ),
              ),
              // newShipping: (id) => FadePage(
              //   key: ValueKey('newShipping_${entry.key}'),
              //   child: NewShippingScreen(
              //     customerdId: id,
              //   ),
              // ),
              categoriesDetail: (id) => FadePage(
                key: ValueKey('categoriesDetail_${entry.key}'),
                child: CategoriesDetailScreen(
                  id: id,
                ),
              ),
              wishList: (fromMenu, fromAccount) => FadePage(
                key: ValueKey('wishList_${entry.key}'),
                child: WishlistScreen(
                    fromMenu: fromMenu, fromAccount: fromAccount),
              ),
              thankYou: () => FadePage(
                key: ValueKey('thankYou_${entry.key}'),
                child: const ThankYouScreen(),
              ),
              addReview: (product_id) => FadePage(
                key: ValueKey('addReview_${entry.key}'),
                child: AddReviewScreen(product_id: product_id),
              ),
              menu: () => FadePage(
                key: ValueKey('menu_${entry.key}'),
                child: const MenuScreen(),
              ),
              personalInfo: (user) => FadePage(
                key: ValueKey('newAddress_${entry.key}'),
                child: PersonalInfo(user: user),
              ),
              paypal: (transactions, onSuccess) => FadePage(
                child: UsePaypal(
                  sandboxMode: true,
                  clientId: "ASBdrtn0TP5f_ZJDIoG3KRrFU4Nz_3F24_qhUsqBlsX6JicBbPI_P69QbkH5OS04tPMsE6CaGzYN_xzQ",
                  secretKey: "EJxM8zvtOgHnbar24Ay1thq2pExa6NHA_mJeELmfBZVwkGw4pW8qIsxl1h-s0-og3yUT8DUM9o9sXeDu",
                  returnURL: "${AppConfig.baseUrl}/return",
                  cancelURL: "${AppConfig.baseUrl}/cancel",
                  transactions: transactions,
                  note: "Contattaci per ogni esigenza.",
                  onSuccess: (Map params) => onSuccess(),
                  onError: (error) {
                    print("onError: $error");
                    Navigator.of(context).pop();
                  },
                  onCancel: (params) {
                    print('cancelled: $params');
                    Navigator.of(context).pop();
                  },

                ),
              ),
              newAddressFromAccount: (id, editFatturazione, editShipping, existingAddress, returnPage, isNewAddress, point, cart) => FadePage(
                key: ValueKey('newAddressFromAccount_${entry.key}'),
                child: NewAddressFromAccountScreen(
                  customerdId: id,
                  editFatturazione: editFatturazione,
                  editShipping: editShipping,
                  existingAddress: existingAddress,
                  returnPage: returnPage, isNewAddress: isNewAddress, point: point, cart: cart,
                ),
              ),
            ),
        ],
        key: navigatorKey,
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }
          stack.pop();
          return true;
        },
      ),
    );
  }

  @override
  Future<void> setNewRoutePath(MainNavigationStack configuration) async {
    stack.items = configuration.items;
  }
}
