import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/account/account/address/address_bloc.dart';
import 'package:torri_cantine_app/account/service/address_service.dart';
import 'package:torri_cantine_app/all_products/all_products/all_products_bloc.dart';
import 'package:torri_cantine_app/all_products/product_tags/product_tags/product_tags_bloc.dart';
import 'package:torri_cantine_app/all_products/product_tags/service/product_tags_service.dart';
import 'package:torri_cantine_app/all_products/service/all_products_service.dart';
import 'package:torri_cantine_app/app/app_config.dart';
import 'package:torri_cantine_app/app/dependency_injection/token_interceptor.dart';
import 'package:torri_cantine_app/cart/add_product_to_cart/add_product_to_cart_bloc.dart';
import 'package:torri_cantine_app/cart/cart/cart_bloc.dart';
import 'package:torri_cantine_app/cart/remove_product_to_cart/remove_product_to_cart_bloc.dart';
import 'package:torri_cantine_app/cart/service/cart_service.dart';
import 'package:torri_cantine_app/categories/categories/categories_bloc.dart';
import 'package:torri_cantine_app/categories/service/categories_service.dart';
import 'package:torri_cantine_app/coupon/coupon/coupon_bloc.dart';
import 'package:torri_cantine_app/login/login/login_bloc.dart';
import 'package:torri_cantine_app/login/service/login_service.dart';
import 'package:torri_cantine_app/login/service/notification_service.dart';
import 'package:torri_cantine_app/my_orders/my_orders/list_all_orders/list_all_orders_bloc.dart';
import 'package:torri_cantine_app/my_orders/my_orders/my_orders_bloc.dart';
import 'package:torri_cantine_app/my_orders/service/list_all_orders_service.dart';
import 'package:torri_cantine_app/my_orders/service/my_orders_service.dart';
import 'package:torri_cantine_app/order_detail/order_detail/order_detail_bloc.dart';
import 'package:torri_cantine_app/order_detail/service/order_detail_service.dart';
import 'package:torri_cantine_app/personal_info/update_customer/update_customer_bloc.dart';
import 'package:torri_cantine_app/points_balance_screen/bloc/points_bloc.dart';
import 'package:torri_cantine_app/product_detail/product_detail/product_detail_bloc.dart';
import 'package:torri_cantine_app/product_detail/service/product_detail_service.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/reviews/reviews_bloc.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/service/reviews_service.dart';
import 'package:torri_cantine_app/registration/registration/registration_bloc.dart';
import 'package:torri_cantine_app/registration/service/registration_service.dart';

import '../../account/account/account_bloc.dart';
import '../../account/service/account_service.dart';
import '../../cart/add_bundle_to_cart/add_bundle_to_cart_bloc.dart';
import '../../coupon/service/coupon_service.dart';
import '../../personal_info/service/update_customer_service.dart';
import 'dependency_factory.dart';
import 'dio_wrappers.dart';

class DependencyFactoryImpl extends DependencyFactory {
  const DependencyFactoryImpl();

  @override
  DioForApi createDioForApi() => DioForApi(
        Dio(
          BaseOptions(
              baseUrl: AppConfig.baseUrl,
              contentType: 'application/json',
              // connectTimeout: 60000,
              // receiveTimeout: 60000,
              // sendTimeout: 60000,
              headers: {
                'authorization': 'Basic ${base64.encode(utf8.encode("${AppConfig.username}:${AppConfig.password}"))}',
                'X-Requested-By' :'TorriApp'
              }),
        )..interceptors.addAll(
            [],
          ),
      );

  @override
  DioForApiCart createDioForApiCart() => DioForApiCart(
        Dio(
          BaseOptions(
            baseUrl: AppConfig.baseUrl,
            contentType: 'application/json',
            headers: {
              'X-Requested-By' :'TorriApp'
            }
          ),
        )..interceptors.addAll(
            [
              TokenInterceptor(),
            ],
          ),
      );


  @override
  DioForLogin createDioForLogin() => DioForLogin(
        Dio(
          BaseOptions(
              baseUrl: AppConfig.baseUrl,
              contentType: 'application/json',
              headers: {
                'Algorithm': 'HS256',
                'Secret': // ";:%]vt}:Wi(:8jN([,4MRih[I(xTNt<DQs/!j)kcMP~khD8[)].NL4]5^/S,OL^-",
                AppConfig.tokenAuth,
              }),
        )..interceptors.addAll(
            [],
          ),
      );

  @override
  BlocCreator<AllProductsBloc> get createAllProductsBloc =>
      (context) => AllProductsBloc(
          RepositoryProvider.of<ServiceCreator<AllProductsService>>(context)
              .call(context));

  @override
  ServiceCreator<AllProductsService> get createAllProductsService =>
      (context) =>
          AllProductsService(RepositoryProvider.of<DioForApi>(context).dio);

           @override
  BlocCreator<ListAllOrdersBloc> get createListAllOrdersBloc =>
      (context) => ListAllOrdersBloc(
          RepositoryProvider.of<ServiceCreator<ListAllOrdersService>>(context)
              .call(context));

  @override
  ServiceCreator<ListAllOrdersService> get createListAllOrdersService =>
      (context) =>
          ListAllOrdersService(RepositoryProvider.of<DioForApi>(context).dio);

  @override
  BlocCreator<ProductDetailBloc> get createProductDetailBloc =>
      (context) => ProductDetailBloc(
          RepositoryProvider.of<ServiceCreator<ProductDetailService>>(context)
              .call(context));

  @override
  ServiceCreator<ProductDetailService> get createProductDetailService =>
      (context) =>
          ProductDetailService(RepositoryProvider.of<DioForApi>(context).dio);

 @override
  BlocCreator<ReviewsBloc> get createReviewsBloc => (context) => ReviewsBloc(
        RepositoryProvider.of<ServiceCreator<ReviewsService>>(context)
            .call(context),
      );

  @override
  ServiceCreator<ReviewsService> get createReviewsService =>
      (context) => ReviewsService(
            RepositoryProvider.of<DioForApi>(context).dio,
          );


           @override
  BlocCreator<OrderDetailBloc> get createOrderDetailBloc =>
      (context) => OrderDetailBloc(
          RepositoryProvider.of<ServiceCreator<OrderDetailService>>(context)
              .call(context));

  @override
  ServiceCreator<OrderDetailService> get createOrderDetailService =>
      (context) =>
          OrderDetailService(RepositoryProvider.of<DioForApi>(context).dio);

  @override
  BlocCreator<RegistrationBloc> get createRegistrationBloc =>
      (context) => RegistrationBloc(
          RepositoryProvider.of<ServiceCreator<RegistrationService>>(context)
              .call(context));

  @override
  ServiceCreator<RegistrationService> get createRegistrationService =>
      (context) =>
          RegistrationService(RepositoryProvider.of<DioForApi>(context).dio);

  @override
  BlocCreator<LoginBloc> get createLoginBlocBloc => (context) => LoginBloc(
      RepositoryProvider.of<ServiceCreator<LoginService>>(context)
          .call(context),
      RepositoryProvider.of<ServiceCreator<NotificationService>>(context)
          .call(context));

  @override
  ServiceCreator<LoginService> get createLoginBlocService => (context) =>
      LoginService(RepositoryProvider.of<DioForLogin>(context).dio);
  @override
  ServiceCreator<NotificationService> get createLoginNotificationBlocService =>
      (context) => NotificationService(
          //RepositoryProvider.of<DioForApiCart>(context).dio);
          RepositoryProvider.of<DioForApi>(context).dio);
  @override
  BlocCreator<LoginBloc> get createLoginNotificationBlocBloc =>
      (context) => LoginBloc(
          RepositoryProvider.of<ServiceCreator<LoginService>>(context)
              .call(context),
          RepositoryProvider.of<ServiceCreator<NotificationService>>(context)
              .call(context));

  @override
  BlocCreator<CategoriesBloc> get createCategoriesBloc =>
      (context) => CategoriesBloc(
            RepositoryProvider.of<ServiceCreator<CategoriesService>>(context)
                .call(context),
          );

  @override
  ServiceCreator<CategoriesService> get createCategoriesService =>
      (context) => CategoriesService(
            RepositoryProvider.of<DioForApi>(context).dio,
          );
  @override
  BlocCreator<CouponBloc> get createCouponBloc => (context) => CouponBloc(
        RepositoryProvider.of<ServiceCreator<CouponService>>(context)
            .call(context),
      );

  @override
  ServiceCreator<CouponService> get createCouponService =>
      (context) => CouponService(
            RepositoryProvider.of<DioForApi>(context).dio,
          );


  @override
  BlocCreator<AccountBloc> get createAccountBloc => (context) => AccountBloc(
        RepositoryProvider.of<ServiceCreator<AccountService>>(context).call(context),
  );

  @override
  BlocCreator<CartBloc> get createCartBloc => (context) => CartBloc(
        RepositoryProvider.of<ServiceCreator<CartService>>(context)
            .call(context),
      );

  @override
  ServiceCreator<AccountService> get createAccountService =>
      (context) => AccountService(
            RepositoryProvider.of<DioForApi>(context).dio,
          );

  @override
  ServiceCreator<CartService> get createCartService => (context) => CartService(
        RepositoryProvider.of<DioForApiCart>(context).dio,
      );
  @override
  BlocCreator<AddProductToCartBloc> get createAddProductToCartBloc =>
      (context) => AddProductToCartBloc(
          RepositoryProvider.of<ServiceCreator<CartService>>(context)
              .call(context));

  @override
  BlocCreator<AddBundleToCartBloc> get createAddBundleToCartBloc =>
          (context) => AddBundleToCartBloc(
          RepositoryProvider.of<ServiceCreator<CartService>>(context)
              .call(context));

  @override
  BlocCreator<RemoveProductToCartBloc> get createRemoveProductToCartBloc =>
      (context) => RemoveProductToCartBloc(
          RepositoryProvider.of<ServiceCreator<CartService>>(context)
              .call(context));

  @override
  BlocCreator<UpdateCustomerBloc> get updateCustomerBloc => (context) =>
      UpdateCustomerBloc(
        RepositoryProvider.of<ServiceCreator<UpdateCustomerService>>(context)
            .call(context),
      );

  @override
  BlocCreator<ProductTagsBloc> get createProductTagsBloc =>
      (context) => ProductTagsBloc(
            RepositoryProvider.of<ServiceCreator<ProductTagsService>>(context)
                .call(context),
          );

  @override
  ServiceCreator<UpdateCustomerService> get updateCustomerService =>
      (context) => UpdateCustomerService(
            RepositoryProvider.of<DioForApi>(context).dio,
          );
  @override
  ServiceCreator<ProductTagsService> get createProductTagsService =>
      (context) => ProductTagsService(
            RepositoryProvider.of<DioForApi>(context).dio,
          );

  @override
  BlocCreator<MyOrdersBloc> get myOrdersBloc => (context) => MyOrdersBloc(
        RepositoryProvider.of<ServiceCreator<MyOrdersService>>(context)
            .call(context),
      );

  @override
  ServiceCreator<MyOrdersService> get myOrdersService =>
      (context) => MyOrdersService(
            RepositoryProvider.of<DioForApiCart>(context).dio,
          );


  @override
  BlocCreator<AddressBloc> get createAddressBloc => (context) => AddressBloc(
    RepositoryProvider.of<ServiceCreator<AddressService>>(context).call(context),
  );

  @override
  ServiceCreator<AddressService> get createAddressService =>
          (context) => AddressService(
        RepositoryProvider.of<DioForApiCart>(context).dio,
      );

  @override
  BlocCreator<PointsBloc> get createPointsBloc => (context) => PointsBloc();
}
