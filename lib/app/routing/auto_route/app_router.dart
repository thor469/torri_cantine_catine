import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:torri_cantine_app/account/model/response/account_response.dart';
import 'package:torri_cantine_app/account/model/response/add_address_response.dart';
import 'package:torri_cantine_app/account/presentation/account.dart';
import 'package:torri_cantine_app/account/presentation/adress_list.dart';
import 'package:torri_cantine_app/account/presentation/new_address_from_account.dart';
import 'package:torri_cantine_app/all_products/presentation/products_screen.dart';
import 'package:torri_cantine_app/cart/model/response/cart_response.dart';
import 'package:torri_cantine_app/cart/presentation/cart_screen.dart';
import 'package:torri_cantine_app/categories/presentation/categories_detail_screen.dart';
import 'package:torri_cantine_app/categories/presentation/categories_screen.dart';
import 'package:torri_cantine_app/complete_order/presentation/complete_order_screen.dart';
import 'package:torri_cantine_app/complete_order/presentation/thank_you_screen.dart';
import 'package:torri_cantine_app/login/presentation/login_screen.dart';
import 'package:torri_cantine_app/menu_screen/menu_screen.dart';
import 'package:torri_cantine_app/my_orders/my_orders/list_all_orders/model/response/list_all_orders_response.dart';
import 'package:torri_cantine_app/my_orders/presentation/my_orders.dart';
import 'package:torri_cantine_app/order_detail/presentation/order_detail.dart';
import 'package:torri_cantine_app/personal_info/presentation/personal_info.dart';
import 'package:torri_cantine_app/points_balance_screen/presentation/points_balance.dart';
import 'package:torri_cantine_app/product_detail/presentation/product_detail_screen.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/presentation/add_review_screen.dart';
import 'package:torri_cantine_app/registration/presentation/first_registration_screen.dart';
import 'package:torri_cantine_app/registration/presentation/second_registration_screen.dart';
import 'package:torri_cantine_app/registration/presentation/third_registration_screen.dart';
import 'package:torri_cantine_app/welcome/presentation/welcome_screen.dart';
import 'package:torri_cantine_app/main_screen/presentation/main_screen.dart';
import 'package:torri_cantine_app/wishlist_screen/presentation/wishlist_screen.dart';

  part 'app_router.gr.dart';

  @AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {

    @override
    RouteType get defaultRouteType => RouteType.custom(
      transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child),
    );

    @override
    List<AutoRoute> get routes => [
      AutoRoute(page: WelcomeRoute.page, path: '/', initial: true,),
      AutoRoute(page: MainRoute.page, path: '/main'),
      AutoRoute(page: LoginRoute.page, path: '/login'),               
      AutoRoute(page: FirstRegistrRoute.page, path: '/first-registration'),
      AutoRoute(page: SecondRegistrRoute.page, path: '/second-registration'),
      AutoRoute(page: ThirdRegistrRoute.page, path: '/third-registration'),
      AutoRoute(page: CartRoute.page, path: '/cart'),
      AutoRoute(page: MyOrdersRoute.page, path: '/my-orders'),
      AutoRoute(page: PointsBalanceRoute.page, path: '/points-balance'),
      AutoRoute(page: AccountRoute.page, path: '/account'),
      AutoRoute(page: OrderDetailRoute.page, path: '/order-detail'),
      AutoRoute(page: ProductsRoute.page, path: '/products'),
      AutoRoute(page: CompleteOrderRoute.page, path: '/complete-order'),
      AutoRoute(page: CategoriesRoute.page, path: '/categories'),
      AutoRoute(page: ProductDetailRoute.page, path: '/product-detail'),
      AutoRoute(page: AddressListRoute.page, path: '/address-list'),
      AutoRoute(page: CategoriesDetailRoute.page, path: '/categories-detail'),
      AutoRoute(page: WishlistRoute.page, path: '/wishlist'),
      AutoRoute(page: ThankYouRoute.page, path: '/thank-you'),
      AutoRoute(page: AddReviewRoute.page, path: '/add-review'),
      AutoRoute(page: MenuRoute.page, path: '/menu'),
      AutoRoute(page: PersonalInfoRoute.page, path: '/personal-info'),
      AutoRoute(page: NewAddressFromAccountRoute.page, path: '/new-address-from-account'),
    ];
  }
