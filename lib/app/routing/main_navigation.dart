import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:torri_cantine_app/account/model/response/account_response.dart';
import 'package:torri_cantine_app/account/model/response/add_address_response.dart';
import 'package:torri_cantine_app/my_orders/my_orders/list_all_orders/model/response/list_all_orders_response.dart';

part 'main_navigation.freezed.dart';

@freezed
abstract class MainNavigation with _$MainNavigation {
  const factory MainNavigation.home() = _Home;
  const factory MainNavigation.welcome() = _Welcome;
  const factory MainNavigation.login() = _Login;
  const factory MainNavigation.products() = _Products;
  const factory MainNavigation.firstRegistration() = _FirstRegistration;
  const factory MainNavigation.secondRegistration(List<String> registrationDatas) = _SecondRegistration;
  const factory MainNavigation.thirdRegistration() = _ThirdRegistration;
  const factory MainNavigation.cart(bool showAppBar, bool fromMenu, bool fromCompleteOrder, bool fromHomePage) = _Cart;
  const factory MainNavigation.myOrders(bool fromMenu, bool fromAccount, bool fromThankScreen, bool fromOrderDetails) = _MyOrders;
  const factory MainNavigation.pointsBalance(bool fromMenu, bool fromAccount) =_PointsBalance;
  const factory MainNavigation.account(bool fromMenu) = _Account;
  const factory MainNavigation.notification() = _Notification;
  const factory MainNavigation.orderDetail(Order order) = _OrderDetail;
  const factory MainNavigation.completeOrder() = _CompleteOrder;
  const factory MainNavigation.categories(bool showAppBar, bool fromMenu) =_Categories;
  const factory MainNavigation.modifyAddress() = _ModifyAddress;
  const factory MainNavigation.addReview(int product_id) = _AddReview;
  const factory MainNavigation.productDetail(int productId) = _ProductDetail;
  const factory MainNavigation.newAddress(int id) = _NewAddress;
  const factory MainNavigation.newShipping(int id) = _NewShipping;
  const factory MainNavigation.personalInfo(AccountResponse user) = _PersonalInfo;
  const factory MainNavigation.categoriesDetail(int id) = _CategoriesDetail;
  const factory MainNavigation.thankYou() = _ThankYou;
  const factory MainNavigation.menu() = _Menu;
  const factory MainNavigation.wishList(bool fromMenu, bool fromAccount) =_WishlistScreen;
  const factory MainNavigation.newAddressFromAccount(int id, bool editFatturazione, bool editShipping, UserAddress? user, String returnPage, bool isNewAddress) =_MyAddressFromAccountScreen;
  const factory MainNavigation.addressList(int id) = _MyAddressListScreen;

  static void push(BuildContext context, MainNavigation page) => MainNavigationNotification.push(page).dispatch(context);

  static void pop(BuildContext context) => const MainNavigationNotification.pop().dispatch(context);

  static void replace(BuildContext context, List<MainNavigation> stack) => MainNavigationNotification.replace(stack).dispatch(context);

  static void popUntil(BuildContext context, MainNavigation page) => MainNavigationNotification.popUntil(page).dispatch(context);
}

@freezed
abstract class MainNavigationNotification extends Notification with _$MainNavigationNotification {
  const MainNavigationNotification._();
  const factory MainNavigationNotification.push(MainNavigation page) = _MainNavigationPush;
  const factory MainNavigationNotification.pop() = _MainNavigationPop;
  const factory MainNavigationNotification.replace(List<MainNavigation> stack) = _MainNavigationReplace;
  const factory MainNavigationNotification.popUntil(MainNavigation page) = _MainNavigationPopUntil;

}