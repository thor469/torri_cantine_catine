import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torri_cantine_app/account/account/address/address_bloc.dart';
import 'package:torri_cantine_app/all_products/all_products/all_products_bloc.dart';
import 'package:torri_cantine_app/cart/add_bundle_to_cart/add_bundle_to_cart_bloc.dart';
import 'package:torri_cantine_app/cart/add_product_to_cart/add_product_to_cart_bloc.dart';
import 'package:torri_cantine_app/cart/cart/cart_bloc.dart';
import 'package:torri_cantine_app/all_products/product_tags/product_tags/product_tags_bloc.dart';
import 'package:torri_cantine_app/cart/cubit/cart_badge_cubit_cubit.dart';
import 'package:torri_cantine_app/cart/cubit/counter_single_product_cubit.dart';
import 'package:torri_cantine_app/login/login/login_bloc.dart';
import 'package:torri_cantine_app/cart/remove_product_to_cart/remove_product_to_cart_bloc.dart';
import 'package:torri_cantine_app/categories/categories/categories_bloc.dart';
import 'package:torri_cantine_app/my_orders/my_orders/list_all_orders/list_all_orders_bloc.dart';
import 'package:torri_cantine_app/my_orders/my_orders/my_orders_bloc.dart';
import 'package:torri_cantine_app/order_detail/order_detail/order_detail_bloc.dart';
import 'package:torri_cantine_app/points_balance_screen/bloc/points_bloc.dart';
import 'package:torri_cantine_app/product_detail/product_detail/product_detail_bloc.dart';
import 'package:torri_cantine_app/product_detail/widgets/reviews.dart/reviews/reviews_bloc.dart';
import 'package:torri_cantine_app/registration/registration/registration_bloc.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

import '../../account/account/account_bloc.dart';
import '../../all_products/cubit/products_wishlisted_cubit.dart';

import '../../coupon/coupon/coupon_bloc.dart';
import '../../personal_info/update_customer/update_customer_bloc.dart';
import 'dependency_factory.dart';
import 'dio_wrappers.dart';

class DependencyProvider extends StatefulWidget {
  final Widget child;
  final DependencyFactory dependencyFactory;
  final List<int>? wishList;
  const DependencyProvider(
      {Key? key,
      required this.child,
      required this.dependencyFactory,
      this.wishList})
      : super(key: key);

  @override
  DependencyProviderState createState() => DependencyProviderState();
}

class DependencyProviderState extends State<DependencyProvider> {
  LocalStorage wishListStorage = LocalStorage();
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<DioForApi>(
          create: (_) => widget.dependencyFactory.createDioForApi(),
        ),
        RepositoryProvider<DioForApiCart>(
          create: (_) => widget.dependencyFactory.createDioForApiCart(),
        ),
        RepositoryProvider<DioForLogin>(
          create: (_) => widget.dependencyFactory.createDioForLogin(),
        ),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createAllProductsBloc),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createCouponBloc),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createCouponService),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createAllProductsService),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createOrderDetailBloc),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createOrderDetailService),
            RepositoryProvider.value(
            value: widget.dependencyFactory.createProductDetailBloc),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createProductDetailService),
             RepositoryProvider.value(
            value: widget.dependencyFactory.createReviewsBloc),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createReviewsService),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createRegistrationBloc),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createRegistrationService),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createLoginBlocBloc),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createLoginBlocService),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createLoginNotificationBlocService),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createCategoriesBloc),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createCategoriesService),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createAccountBloc),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createAccountService),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createCartBloc),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createCartService),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createAddProductToCartBloc),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createAddBundleToCartBloc),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createRemoveProductToCartBloc),
        RepositoryProvider.value(
            value: widget.dependencyFactory.updateCustomerBloc),
        RepositoryProvider.value(
            value: widget.dependencyFactory.updateCustomerService),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createProductTagsBloc),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createProductTagsService),
        RepositoryProvider.value(value: widget.dependencyFactory.myOrdersBloc),
        RepositoryProvider.value(
            value: widget.dependencyFactory.myOrdersService),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createListAllOrdersBloc),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createListAllOrdersService),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createAddressBloc),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createAddressService),
        RepositoryProvider.value(
            value: widget.dependencyFactory.createPointsBloc),
      ],
      child: Builder(builder: (context) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              lazy: false,
              create:
                  RepositoryProvider.of<BlocCreator<AllProductsBloc>>(context),
            ),
             BlocProvider(
              lazy: false,
              create:
                  RepositoryProvider.of<BlocCreator<ListAllOrdersBloc>>(context),
            ),
            BlocProvider(
              lazy: false,
              create: RepositoryProvider.of<BlocCreator<ProductDetailBloc>>(
                  context),
            ),
             BlocProvider(
              lazy: false,
              create: RepositoryProvider.of<BlocCreator<OrderDetailBloc>>(
                  context),
            ),

            BlocProvider(
              lazy: false,
              create: RepositoryProvider.of<BlocCreator<ReviewsBloc>>(
                  context),
            ),
            BlocProvider(
              lazy: false,
              create:
                  RepositoryProvider.of<BlocCreator<RegistrationBloc>>(context),
            ),
            BlocProvider(
              lazy: true,
              create: RepositoryProvider.of<BlocCreator<LoginBloc>>(context),
            ),
            BlocProvider(
              lazy: false,
              create:
                  RepositoryProvider.of<BlocCreator<CategoriesBloc>>(context),
            ),
            BlocProvider(
              lazy: false,
              create: RepositoryProvider.of<BlocCreator<AccountBloc>>(context),
            ),
            BlocProvider(
              lazy: false,
              create:
                  RepositoryProvider.of<BlocCreator<ProductTagsBloc>>(context),
            ),
            BlocProvider.value(
                value: ProductsWishlistedCubit(
                    widget.wishList ?? [], wishListStorage)),
            BlocProvider.value(value: CartBadgeCubitCubit()),
            BlocProvider.value(value: CounterSingleProductCubit()),
            BlocProvider(
              lazy: false,
              create: RepositoryProvider.of<BlocCreator<CartBloc>>(context),
            ),
            BlocProvider(
              lazy: false,
              create: RepositoryProvider.of<BlocCreator<AddProductToCartBloc>>(
                  context),
            ),
            BlocProvider(
              lazy: false,
              create: RepositoryProvider.of<BlocCreator<AddBundleToCartBloc>>(
                  context),
            ),
            BlocProvider(
              lazy: false,
              create: RepositoryProvider.of<BlocCreator<UpdateCustomerBloc>>(
                  context),
            ),
            BlocProvider(
              lazy: false,
              create:
                  RepositoryProvider.of<BlocCreator<RemoveProductToCartBloc>>(
                      context),
            ),
            BlocProvider(
              lazy: false,
              create: RepositoryProvider.of<BlocCreator<MyOrdersBloc>>(context),
            ),
            BlocProvider(
              lazy: false,
              create: RepositoryProvider.of<BlocCreator<CouponBloc>>(context),
            ),
            BlocProvider(
              lazy: false,
              create: RepositoryProvider.of<BlocCreator<AddressBloc>>(context),
            ),
            BlocProvider(
              lazy: false,
              create: RepositoryProvider.of<BlocCreator<PointsBloc>>(context),
            ),
          ],
          child: widget.child,
        );
      }),
    );
  }
}
