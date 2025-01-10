// import 'package:flutter/widgets.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:torri_cantine_app/account/model/response/account_response.dart';
// import 'package:torri_cantine_app/account/model/response/add_address_response.dart';
// import 'package:torri_cantine_app/cart/model/response/cart_response.dart';
// import 'package:torri_cantine_app/my_orders/my_orders/list_all_orders/model/response/list_all_orders_response.dart';
//
// part 'main_navigation.freezed.dart';
//
// @freezed
// @freezed
// abstract class MainNavigation with _$MainNavigation {
//   const factory MainNavigation.home() = _Home;
//   const factory MainNavigation.welcome() = _Welcome;
//   const factory MainNavigation.login() = _Login;
//   const factory MainNavigation.products() = _Products;
//   const factory MainNavigation.firstRegistration() = _FirstRegistration;
//   const factory MainNavigation.secondRegistration(List<String> registrationDatas) =
//   _SecondRegistration;
//   const factory MainNavigation.thirdRegistration() = _ThirdRegistration;
//   const factory MainNavigation.cart(
//       bool showAppBar, bool fromMenu, bool fromCompleteOrder, bool fromHomePage) =
//   _Cart;
//   const factory MainNavigation.myOrders(bool fromMenu, bool fromAccount,
//       bool fromThankScreen, bool fromOrderDetails) =
//   _MyOrders;
//   const factory MainNavigation.pointsBalance(bool fromMenu, bool fromAccount) =
//   _PointsBalance;
//   const factory MainNavigation.account(bool fromMenu) = _Account;
//   const factory MainNavigation.orderDetail(Order order) = _OrderDetail;
//   const factory MainNavigation.completeOrder(int totPoint, String cartSubTotal) =
//   _CompleteOrder;
//   const factory MainNavigation.categories(bool showAppBar, bool fromMenu) =
//   _Categories;
//   const factory MainNavigation.addReview(int productId) = _AddReview;
//   const factory MainNavigation.productDetail(int productId) = _ProductDetail;
//   const factory MainNavigation.personalInfo(AccountResponse user) = _PersonalInfo;
//   const factory MainNavigation.categoriesDetail(int id) = _CategoriesDetail;
//   const factory MainNavigation.thankYou() = _ThankYou;
//   const factory MainNavigation.menu() = _Menu;
//   const factory MainNavigation.wishList(bool fromMenu, bool fromAccount) =
//   _WishlistScreen;
//   const factory MainNavigation.newAddressFromAccount(
//       int id,
//       bool editFatturazione,
//       bool editShipping,
//       UserAddress? user,
//       String returnPage,
//       bool isNewAddress,
//       int? point,
//       String total) =
//   _MyAddressFromAccountScreen;
//   const factory MainNavigation.addressList(int id) = _MyAddressListScreen;
//
//   static void push(BuildContext context, MainNavigation page) {
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       MainNavigationNotification.push(page).dispatch(context);
//     });
//   }
//
//   static void pop(BuildContext context) {
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       const MainNavigationNotification.pop().dispatch(context);
//     });
//   }
//
//   static void replace(BuildContext context, List<MainNavigation> stack) {
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       MainNavigationNotification.replace(stack).dispatch(context);
//     });
//   }
//
//   static void popUntil(BuildContext context, MainNavigation page) {
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       MainNavigationNotification.popUntil(page).dispatch(context);
//     });
//   }
// }
//
// @freezed
// abstract class MainNavigationNotification extends Notification with _$MainNavigationNotification {
//   const MainNavigationNotification._();
//   const factory MainNavigationNotification.push(MainNavigation page) = _MainNavigationPush;
//   const factory MainNavigationNotification.pop() = _MainNavigationPop;
//   const factory MainNavigationNotification.replace(List<MainNavigation> stack) = _MainNavigationReplace;
//   const factory MainNavigationNotification.popUntil(MainNavigation page) = _MainNavigationPopUntil;
//
// }
