import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/account/account/account_bloc.dart';
import 'package:torri_cantine_app/account/account/address/address_bloc.dart';
import 'package:torri_cantine_app/account/service/account_service.dart';
import 'package:torri_cantine_app/account/service/address_service.dart';
import 'package:torri_cantine_app/all_products/all_products/all_products_bloc.dart';
import 'package:torri_cantine_app/all_products/product_tags/product_tags/product_tags_bloc.dart';
import 'package:torri_cantine_app/all_products/product_tags/service/product_tags_service.dart';
import 'package:torri_cantine_app/all_products/service/all_products_service.dart';
import 'package:torri_cantine_app/cart/add_product_to_cart/add_product_to_cart_bloc.dart';
import 'package:torri_cantine_app/cart/cart/cart_bloc.dart';
import 'package:torri_cantine_app/cart/remove_product_to_cart/remove_product_to_cart_bloc.dart';
import 'package:torri_cantine_app/cart/service/cart_service.dart';
import 'package:torri_cantine_app/categories/categories/categories_bloc.dart';
import 'package:torri_cantine_app/categories/service/categories_service.dart';
import 'package:torri_cantine_app/login/login/login_bloc.dart';
import 'package:torri_cantine_app/login/service/login_service.dart';
import 'package:torri_cantine_app/login/service/notification_service.dart';
import 'package:torri_cantine_app/my_orders/my_orders/list_all_orders/list_all_orders_bloc.dart';
import 'package:torri_cantine_app/my_orders/my_orders/my_orders_bloc.dart';
import 'package:torri_cantine_app/my_orders/service/list_all_orders_service.dart';
import 'package:torri_cantine_app/my_orders/service/my_orders_service.dart';
import 'package:torri_cantine_app/order_detail/order_detail/order_detail_bloc.dart';
import 'package:torri_cantine_app/order_detail/service/order_detail_service.dart';
import 'package:torri_cantine_app/personal_info/service/update_customer_service.dart';
import 'package:torri_cantine_app/personal_info/update_customer/update_customer_bloc.dart';
import 'package:torri_cantine_app/points_balance_screen/bloc/points_bloc.dart';
import 'package:torri_cantine_app/product_detail/product_detail/product_detail_bloc.dart';
import 'package:torri_cantine_app/product_detail/service/product_detail_service.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/reviews/reviews_bloc.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/service/reviews_service.dart';
import 'package:torri_cantine_app/registration/registration/registration_bloc.dart';
import 'package:torri_cantine_app/registration/service/registration_service.dart';

import '../../cart/add_bundle_to_cart/add_bundle_to_cart_bloc.dart';
import '../../coupon/coupon/coupon_bloc.dart';
import '../../coupon/service/coupon_service.dart';
import 'dio_wrappers.dart';

typedef BlocCreator<T extends Bloc> = T Function(BuildContext context);
typedef ServiceCreator<T extends HttpServiceBase> = T Function(BuildContext context);

abstract class DependencyFactory {
  const DependencyFactory();
  DioForApi createDioForApi();
  DioForApiCart createDioForApiCart();
  DioForLogin createDioForLogin();

  BlocCreator<AllProductsBloc> get createAllProductsBloc;
  ServiceCreator<AllProductsService> get createAllProductsService;

    BlocCreator<ListAllOrdersBloc> get createListAllOrdersBloc;
  ServiceCreator<ListAllOrdersService> get createListAllOrdersService;

  BlocCreator<ProductDetailBloc> get createProductDetailBloc;
  ServiceCreator<ProductDetailService> get createProductDetailService;

    BlocCreator<ReviewsBloc> get createReviewsBloc;
  ServiceCreator<ReviewsService> get createReviewsService;

    BlocCreator<OrderDetailBloc> get createOrderDetailBloc;
  ServiceCreator<OrderDetailService> get createOrderDetailService;

  BlocCreator<RegistrationBloc> get createRegistrationBloc;
  ServiceCreator<RegistrationService> get createRegistrationService;

  BlocCreator<LoginBloc> get createLoginBlocBloc;
  ServiceCreator<LoginService> get createLoginBlocService;

  BlocCreator<LoginBloc> get createLoginNotificationBlocBloc;
  ServiceCreator<NotificationService> get createLoginNotificationBlocService;

  BlocCreator<CategoriesBloc> get createCategoriesBloc;
  ServiceCreator<CategoriesService> get createCategoriesService;

  BlocCreator<AccountBloc> get createAccountBloc;
  ServiceCreator<AccountService> get createAccountService;

  BlocCreator<CartBloc> get createCartBloc;
  ServiceCreator<CartService> get createCartService;

  BlocCreator<AddProductToCartBloc> get createAddProductToCartBloc;
  BlocCreator<AddBundleToCartBloc> get createAddBundleToCartBloc;

  BlocCreator<RemoveProductToCartBloc> get createRemoveProductToCartBloc;

  BlocCreator<UpdateCustomerBloc> get updateCustomerBloc;
  ServiceCreator<UpdateCustomerService> get updateCustomerService;

  BlocCreator<ProductTagsBloc> get createProductTagsBloc;
  ServiceCreator<ProductTagsService> get createProductTagsService;

  BlocCreator<MyOrdersBloc> get myOrdersBloc;
  ServiceCreator<MyOrdersService> get myOrdersService;

  BlocCreator<CouponBloc> get createCouponBloc;
  ServiceCreator<CouponService> get createCouponService;

  BlocCreator<AddressBloc> get createAddressBloc;
  ServiceCreator<AddressService> get createAddressService;

  BlocCreator<PointsBloc> get createPointsBloc;
}
