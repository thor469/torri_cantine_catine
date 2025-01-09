// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      final args = routeData.argsAs<AccountRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AccountScreen(
          key: args.key,
          fromSecondPage: args.fromSecondPage,
        ),
      );
    },
    AddReviewRoute.name: (routeData) {
      final args = routeData.argsAs<AddReviewRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AddReviewScreen(
          key: args.key,
          productId: args.productId,
        ),
      );
    },
    AddressListRoute.name: (routeData) {
      final args = routeData.argsAs<AddressListRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AddressListScreen(
          key: args.key,
          customerdId: args.customerdId,
        ),
      );
    },
    CartRoute.name: (routeData) {
      final args = routeData.argsAs<CartRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CartScreen(
          key: args.key,
          showAppBar: args.showAppBar,
          fromMenu: args.fromMenu,
          fromCompleteOrder: args.fromCompleteOrder,
          fromHomePage: args.fromHomePage,
        ),
      );
    },
    CategoriesDetailRoute.name: (routeData) {
      final args = routeData.argsAs<CategoriesDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CategoriesDetailScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
    CategoriesRoute.name: (routeData) {
      final args = routeData.argsAs<CategoriesRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CategoriesScreen(
          key: args.key,
          showAppBar: args.showAppBar,
          fromMenu: args.fromMenu,
        ),
      );
    },
    CompleteOrderRoute.name: (routeData) {
      final args = routeData.argsAs<CompleteOrderRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CompleteOrderScreen(
          key: args.key,
          totPoint: args.totPoint,
          cartSubTotal: args.cartSubTotal,
        ),
      );
    },
    FirstRegistrRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FirstRegistrScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScreen(),
      );
    },
    MenuRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MenuScreen(),
      );
    },
    MyOrdersRoute.name: (routeData) {
      final args = routeData.argsAs<MyOrdersRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MyOrdersScreen(
          key: args.key,
          fromMenu: args.fromMenu,
          fromAccount: args.fromAccount,
          fromThankScreen: args.fromThankScreen,
          fromOrderDetails: args.fromOrderDetails,
        ),
      );
    },
    NewAddressFromAccountRoute.name: (routeData) {
      final args = routeData.argsAs<NewAddressFromAccountRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NewAddressFromAccountScreen(
          key: args.key,
          customerdId: args.customerdId,
          editFatturazione: args.editFatturazione,
          editShipping: args.editShipping,
          existingAddress: args.existingAddress,
          returnPage: args.returnPage,
          isNewAddress: args.isNewAddress,
          point: args.point,
          cart: args.cart,
          subTotal: args.subTotal,
        ),
      );
    },
    OrderDetailRoute.name: (routeData) {
      final args = routeData.argsAs<OrderDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OrderDetailScreen(
          key: args.key,
          order: args.order,
        ),
      );
    },
    PersonalInfoRoute.name: (routeData) {
      final args = routeData.argsAs<PersonalInfoRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PersonalInfoScreen(
          key: args.key,
          user: args.user,
        ),
      );
    },
    PointsBalanceRoute.name: (routeData) {
      final args = routeData.argsAs<PointsBalanceRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PointsBalanceScreen(
          key: args.key,
          fromMenu: args.fromMenu,
          fromAccount: args.fromAccount,
        ),
      );
    },
    ProductDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductDetailScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
    ProductsRoute.name: (routeData) {
      final args = routeData.argsAs<ProductsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductsScreen(
          key: args.key,
          minPrice: args.minPrice,
          maxPrice: args.maxPrice,
          orderAsc: args.orderAsc,
          orderDesc: args.orderDesc,
          orderDate: args.orderDate,
          orderPop: args.orderPop,
          orderRating: args.orderRating,
          categoriesMap: args.categoriesMap,
          tagsMap: args.tagsMap,
          categoriesIdMap: args.categoriesIdMap,
          tagsIdMap: args.tagsIdMap,
          showAppBar: args.showAppBar,
          fromMenu: args.fromMenu,
        ),
      );
    },
    SecondRegistrRoute.name: (routeData) {
      final args = routeData.argsAs<SecondRegistrRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SecondRegistrScreen(
          key: args.key,
          registrationDatas: args.registrationDatas,
        ),
      );
    },
    ThankYouRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ThankYouScreen(),
      );
    },
    ThirdRegistrRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ThirdRegistrScreen(),
      );
    },
    WelcomeRoute.name: (routeData) {
      final args = routeData.argsAs<WelcomeRouteArgs>(
          orElse: () => const WelcomeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WelcomeScreen(
          key: args.key,
          mounted: args.mounted,
        ),
      );
    },
    WishlistRoute.name: (routeData) {
      final args = routeData.argsAs<WishlistRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WishlistScreen(
          key: args.key,
          fromMenu: args.fromMenu,
          fromAccount: args.fromAccount,
        ),
      );
    },
  };
}

/// generated route for
/// [AccountScreen]
class AccountRoute extends PageRouteInfo<AccountRouteArgs> {
  AccountRoute({
    Key? key,
    required bool fromSecondPage,
    List<PageRouteInfo>? children,
  }) : super(
          AccountRoute.name,
          args: AccountRouteArgs(
            key: key,
            fromSecondPage: fromSecondPage,
          ),
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const PageInfo<AccountRouteArgs> page =
      PageInfo<AccountRouteArgs>(name);
}

class AccountRouteArgs {
  const AccountRouteArgs({
    this.key,
    required this.fromSecondPage,
  });

  final Key? key;

  final bool fromSecondPage;

  @override
  String toString() {
    return 'AccountRouteArgs{key: $key, fromSecondPage: $fromSecondPage}';
  }
}

/// generated route for
/// [AddReviewScreen]
class AddReviewRoute extends PageRouteInfo<AddReviewRouteArgs> {
  AddReviewRoute({
    Key? key,
    required int productId,
    List<PageRouteInfo>? children,
  }) : super(
          AddReviewRoute.name,
          args: AddReviewRouteArgs(
            key: key,
            productId: productId,
          ),
          initialChildren: children,
        );

  static const String name = 'AddReviewRoute';

  static const PageInfo<AddReviewRouteArgs> page =
      PageInfo<AddReviewRouteArgs>(name);
}

class AddReviewRouteArgs {
  const AddReviewRouteArgs({
    this.key,
    required this.productId,
  });

  final Key? key;

  final int productId;

  @override
  String toString() {
    return 'AddReviewRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [AddressListScreen]
class AddressListRoute extends PageRouteInfo<AddressListRouteArgs> {
  AddressListRoute({
    Key? key,
    required int customerdId,
    List<PageRouteInfo>? children,
  }) : super(
          AddressListRoute.name,
          args: AddressListRouteArgs(
            key: key,
            customerdId: customerdId,
          ),
          initialChildren: children,
        );

  static const String name = 'AddressListRoute';

  static const PageInfo<AddressListRouteArgs> page =
      PageInfo<AddressListRouteArgs>(name);
}

class AddressListRouteArgs {
  const AddressListRouteArgs({
    this.key,
    required this.customerdId,
  });

  final Key? key;

  final int customerdId;

  @override
  String toString() {
    return 'AddressListRouteArgs{key: $key, customerdId: $customerdId}';
  }
}

/// generated route for
/// [CartScreen]
class CartRoute extends PageRouteInfo<CartRouteArgs> {
  CartRoute({
    Key? key,
    required bool showAppBar,
    required bool fromMenu,
    required bool fromCompleteOrder,
    required bool fromHomePage,
    List<PageRouteInfo>? children,
  }) : super(
          CartRoute.name,
          args: CartRouteArgs(
            key: key,
            showAppBar: showAppBar,
            fromMenu: fromMenu,
            fromCompleteOrder: fromCompleteOrder,
            fromHomePage: fromHomePage,
          ),
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const PageInfo<CartRouteArgs> page = PageInfo<CartRouteArgs>(name);
}

class CartRouteArgs {
  const CartRouteArgs({
    this.key,
    required this.showAppBar,
    required this.fromMenu,
    required this.fromCompleteOrder,
    required this.fromHomePage,
  });

  final Key? key;

  final bool showAppBar;

  final bool fromMenu;

  final bool fromCompleteOrder;

  final bool fromHomePage;

  @override
  String toString() {
    return 'CartRouteArgs{key: $key, showAppBar: $showAppBar, fromMenu: $fromMenu, fromCompleteOrder: $fromCompleteOrder, fromHomePage: $fromHomePage}';
  }
}

/// generated route for
/// [CategoriesDetailScreen]
class CategoriesDetailRoute extends PageRouteInfo<CategoriesDetailRouteArgs> {
  CategoriesDetailRoute({
    Key? key,
    required int id,
    List<PageRouteInfo>? children,
  }) : super(
          CategoriesDetailRoute.name,
          args: CategoriesDetailRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoriesDetailRoute';

  static const PageInfo<CategoriesDetailRouteArgs> page =
      PageInfo<CategoriesDetailRouteArgs>(name);
}

class CategoriesDetailRouteArgs {
  const CategoriesDetailRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'CategoriesDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [CategoriesScreen]
class CategoriesRoute extends PageRouteInfo<CategoriesRouteArgs> {
  CategoriesRoute({
    Key? key,
    bool showAppBar = false,
    required bool fromMenu,
    List<PageRouteInfo>? children,
  }) : super(
          CategoriesRoute.name,
          args: CategoriesRouteArgs(
            key: key,
            showAppBar: showAppBar,
            fromMenu: fromMenu,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static const PageInfo<CategoriesRouteArgs> page =
      PageInfo<CategoriesRouteArgs>(name);
}

class CategoriesRouteArgs {
  const CategoriesRouteArgs({
    this.key,
    this.showAppBar = false,
    required this.fromMenu,
  });

  final Key? key;

  final bool showAppBar;

  final bool fromMenu;

  @override
  String toString() {
    return 'CategoriesRouteArgs{key: $key, showAppBar: $showAppBar, fromMenu: $fromMenu}';
  }
}

/// generated route for
/// [CompleteOrderScreen]
class CompleteOrderRoute extends PageRouteInfo<CompleteOrderRouteArgs> {
  CompleteOrderRoute({
    Key? key,
    required int totPoint,
    required String cartSubTotal,
    List<PageRouteInfo>? children,
  }) : super(
          CompleteOrderRoute.name,
          args: CompleteOrderRouteArgs(
            key: key,
            totPoint: totPoint,
            cartSubTotal: cartSubTotal,
          ),
          initialChildren: children,
        );

  static const String name = 'CompleteOrderRoute';

  static const PageInfo<CompleteOrderRouteArgs> page =
      PageInfo<CompleteOrderRouteArgs>(name);
}

class CompleteOrderRouteArgs {
  const CompleteOrderRouteArgs({
    this.key,
    required this.totPoint,
    required this.cartSubTotal,
  });

  final Key? key;

  final int totPoint;

  final String cartSubTotal;

  @override
  String toString() {
    return 'CompleteOrderRouteArgs{key: $key, totPoint: $totPoint, cartSubTotal: $cartSubTotal}';
  }
}

/// generated route for
/// [FirstRegistrScreen]
class FirstRegistrRoute extends PageRouteInfo<void> {
  const FirstRegistrRoute({List<PageRouteInfo>? children})
      : super(
          FirstRegistrRoute.name,
          initialChildren: children,
        );

  static const String name = 'FirstRegistrRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MenuScreen]
class MenuRoute extends PageRouteInfo<void> {
  const MenuRoute({List<PageRouteInfo>? children})
      : super(
          MenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'MenuRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyOrdersScreen]
class MyOrdersRoute extends PageRouteInfo<MyOrdersRouteArgs> {
  MyOrdersRoute({
    Key? key,
    required bool fromMenu,
    required bool fromAccount,
    required bool fromThankScreen,
    required bool fromOrderDetails,
    List<PageRouteInfo>? children,
  }) : super(
          MyOrdersRoute.name,
          args: MyOrdersRouteArgs(
            key: key,
            fromMenu: fromMenu,
            fromAccount: fromAccount,
            fromThankScreen: fromThankScreen,
            fromOrderDetails: fromOrderDetails,
          ),
          initialChildren: children,
        );

  static const String name = 'MyOrdersRoute';

  static const PageInfo<MyOrdersRouteArgs> page =
      PageInfo<MyOrdersRouteArgs>(name);
}

class MyOrdersRouteArgs {
  const MyOrdersRouteArgs({
    this.key,
    required this.fromMenu,
    required this.fromAccount,
    required this.fromThankScreen,
    required this.fromOrderDetails,
  });

  final Key? key;

  final bool fromMenu;

  final bool fromAccount;

  final bool fromThankScreen;

  final bool fromOrderDetails;

  @override
  String toString() {
    return 'MyOrdersRouteArgs{key: $key, fromMenu: $fromMenu, fromAccount: $fromAccount, fromThankScreen: $fromThankScreen, fromOrderDetails: $fromOrderDetails}';
  }
}

/// generated route for
/// [NewAddressFromAccountScreen]
class NewAddressFromAccountRoute
    extends PageRouteInfo<NewAddressFromAccountRouteArgs> {
  NewAddressFromAccountRoute({
    Key? key,
    required int customerdId,
    required bool editFatturazione,
    required bool editShipping,
    UserAddress? existingAddress,
    required String returnPage,
    required bool isNewAddress,
    int? point,
    CartResponse? cart,
    required String subTotal,
    List<PageRouteInfo>? children,
  }) : super(
          NewAddressFromAccountRoute.name,
          args: NewAddressFromAccountRouteArgs(
            key: key,
            customerdId: customerdId,
            editFatturazione: editFatturazione,
            editShipping: editShipping,
            existingAddress: existingAddress,
            returnPage: returnPage,
            isNewAddress: isNewAddress,
            point: point,
            cart: cart,
            subTotal: subTotal,
          ),
          initialChildren: children,
        );

  static const String name = 'NewAddressFromAccountRoute';

  static const PageInfo<NewAddressFromAccountRouteArgs> page =
      PageInfo<NewAddressFromAccountRouteArgs>(name);
}

class NewAddressFromAccountRouteArgs {
  const NewAddressFromAccountRouteArgs({
    this.key,
    required this.customerdId,
    required this.editFatturazione,
    required this.editShipping,
    this.existingAddress,
    required this.returnPage,
    required this.isNewAddress,
    this.point,
    this.cart,
    required this.subTotal,
  });

  final Key? key;

  final int customerdId;

  final bool editFatturazione;

  final bool editShipping;

  final UserAddress? existingAddress;

  final String returnPage;

  final bool isNewAddress;

  final int? point;

  final CartResponse? cart;

  final String subTotal;

  @override
  String toString() {
    return 'NewAddressFromAccountRouteArgs{key: $key, customerdId: $customerdId, editFatturazione: $editFatturazione, editShipping: $editShipping, existingAddress: $existingAddress, returnPage: $returnPage, isNewAddress: $isNewAddress, point: $point, cart: $cart, subTotal: $subTotal}';
  }
}

/// generated route for
/// [OrderDetailScreen]
class OrderDetailRoute extends PageRouteInfo<OrderDetailRouteArgs> {
  OrderDetailRoute({
    Key? key,
    required Order order,
    List<PageRouteInfo>? children,
  }) : super(
          OrderDetailRoute.name,
          args: OrderDetailRouteArgs(
            key: key,
            order: order,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderDetailRoute';

  static const PageInfo<OrderDetailRouteArgs> page =
      PageInfo<OrderDetailRouteArgs>(name);
}

class OrderDetailRouteArgs {
  const OrderDetailRouteArgs({
    this.key,
    required this.order,
  });

  final Key? key;

  final Order order;

  @override
  String toString() {
    return 'OrderDetailRouteArgs{key: $key, order: $order}';
  }
}

/// generated route for
/// [PersonalInfoScreen]
class PersonalInfoRoute extends PageRouteInfo<PersonalInfoRouteArgs> {
  PersonalInfoRoute({
    Key? key,
    required AccountResponse user,
    List<PageRouteInfo>? children,
  }) : super(
          PersonalInfoRoute.name,
          args: PersonalInfoRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'PersonalInfoRoute';

  static const PageInfo<PersonalInfoRouteArgs> page =
      PageInfo<PersonalInfoRouteArgs>(name);
}

class PersonalInfoRouteArgs {
  const PersonalInfoRouteArgs({
    this.key,
    required this.user,
  });

  final Key? key;

  final AccountResponse user;

  @override
  String toString() {
    return 'PersonalInfoRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [PointsBalanceScreen]
class PointsBalanceRoute extends PageRouteInfo<PointsBalanceRouteArgs> {
  PointsBalanceRoute({
    Key? key,
    required bool fromMenu,
    required bool fromAccount,
    List<PageRouteInfo>? children,
  }) : super(
          PointsBalanceRoute.name,
          args: PointsBalanceRouteArgs(
            key: key,
            fromMenu: fromMenu,
            fromAccount: fromAccount,
          ),
          initialChildren: children,
        );

  static const String name = 'PointsBalanceRoute';

  static const PageInfo<PointsBalanceRouteArgs> page =
      PageInfo<PointsBalanceRouteArgs>(name);
}

class PointsBalanceRouteArgs {
  const PointsBalanceRouteArgs({
    this.key,
    required this.fromMenu,
    required this.fromAccount,
  });

  final Key? key;

  final bool fromMenu;

  final bool fromAccount;

  @override
  String toString() {
    return 'PointsBalanceRouteArgs{key: $key, fromMenu: $fromMenu, fromAccount: $fromAccount}';
  }
}

/// generated route for
/// [ProductDetailScreen]
class ProductDetailRoute extends PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    Key? key,
    required int id,
    List<PageRouteInfo>? children,
  }) : super(
          ProductDetailRoute.name,
          args: ProductDetailRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailRoute';

  static const PageInfo<ProductDetailRouteArgs> page =
      PageInfo<ProductDetailRouteArgs>(name);
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [ProductsScreen]
class ProductsRoute extends PageRouteInfo<ProductsRouteArgs> {
  ProductsRoute({
    Key? key,
    double? minPrice,
    double? maxPrice,
    bool? orderAsc,
    bool? orderDesc,
    bool? orderDate,
    bool? orderPop,
    bool? orderRating,
    Map<String, bool>? categoriesMap,
    Map<String, bool>? tagsMap,
    String? categoriesIdMap,
    String? tagsIdMap,
    required bool showAppBar,
    required bool fromMenu,
    List<PageRouteInfo>? children,
  }) : super(
          ProductsRoute.name,
          args: ProductsRouteArgs(
            key: key,
            minPrice: minPrice,
            maxPrice: maxPrice,
            orderAsc: orderAsc,
            orderDesc: orderDesc,
            orderDate: orderDate,
            orderPop: orderPop,
            orderRating: orderRating,
            categoriesMap: categoriesMap,
            tagsMap: tagsMap,
            categoriesIdMap: categoriesIdMap,
            tagsIdMap: tagsIdMap,
            showAppBar: showAppBar,
            fromMenu: fromMenu,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductsRoute';

  static const PageInfo<ProductsRouteArgs> page =
      PageInfo<ProductsRouteArgs>(name);
}

class ProductsRouteArgs {
  const ProductsRouteArgs({
    this.key,
    this.minPrice,
    this.maxPrice,
    this.orderAsc,
    this.orderDesc,
    this.orderDate,
    this.orderPop,
    this.orderRating,
    this.categoriesMap,
    this.tagsMap,
    this.categoriesIdMap,
    this.tagsIdMap,
    required this.showAppBar,
    required this.fromMenu,
  });

  final Key? key;

  final double? minPrice;

  final double? maxPrice;

  final bool? orderAsc;

  final bool? orderDesc;

  final bool? orderDate;

  final bool? orderPop;

  final bool? orderRating;

  final Map<String, bool>? categoriesMap;

  final Map<String, bool>? tagsMap;

  final String? categoriesIdMap;

  final String? tagsIdMap;

  final bool showAppBar;

  final bool fromMenu;

  @override
  String toString() {
    return 'ProductsRouteArgs{key: $key, minPrice: $minPrice, maxPrice: $maxPrice, orderAsc: $orderAsc, orderDesc: $orderDesc, orderDate: $orderDate, orderPop: $orderPop, orderRating: $orderRating, categoriesMap: $categoriesMap, tagsMap: $tagsMap, categoriesIdMap: $categoriesIdMap, tagsIdMap: $tagsIdMap, showAppBar: $showAppBar, fromMenu: $fromMenu}';
  }
}

/// generated route for
/// [SecondRegistrScreen]
class SecondRegistrRoute extends PageRouteInfo<SecondRegistrRouteArgs> {
  SecondRegistrRoute({
    Key? key,
    required List<String> registrationDatas,
    List<PageRouteInfo>? children,
  }) : super(
          SecondRegistrRoute.name,
          args: SecondRegistrRouteArgs(
            key: key,
            registrationDatas: registrationDatas,
          ),
          initialChildren: children,
        );

  static const String name = 'SecondRegistrRoute';

  static const PageInfo<SecondRegistrRouteArgs> page =
      PageInfo<SecondRegistrRouteArgs>(name);
}

class SecondRegistrRouteArgs {
  const SecondRegistrRouteArgs({
    this.key,
    required this.registrationDatas,
  });

  final Key? key;

  final List<String> registrationDatas;

  @override
  String toString() {
    return 'SecondRegistrRouteArgs{key: $key, registrationDatas: $registrationDatas}';
  }
}

/// generated route for
/// [ThankYouScreen]
class ThankYouRoute extends PageRouteInfo<void> {
  const ThankYouRoute({List<PageRouteInfo>? children})
      : super(
          ThankYouRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThankYouRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ThirdRegistrScreen]
class ThirdRegistrRoute extends PageRouteInfo<void> {
  const ThirdRegistrRoute({List<PageRouteInfo>? children})
      : super(
          ThirdRegistrRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThirdRegistrRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WelcomeScreen]
class WelcomeRoute extends PageRouteInfo<WelcomeRouteArgs> {
  WelcomeRoute({
    Key? key,
    dynamic mounted = true,
    List<PageRouteInfo>? children,
  }) : super(
          WelcomeRoute.name,
          args: WelcomeRouteArgs(
            key: key,
            mounted: mounted,
          ),
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const PageInfo<WelcomeRouteArgs> page =
      PageInfo<WelcomeRouteArgs>(name);
}

class WelcomeRouteArgs {
  const WelcomeRouteArgs({
    this.key,
    this.mounted = true,
  });

  final Key? key;

  final dynamic mounted;

  @override
  String toString() {
    return 'WelcomeRouteArgs{key: $key, mounted: $mounted}';
  }
}

/// generated route for
/// [WishlistScreen]
class WishlistRoute extends PageRouteInfo<WishlistRouteArgs> {
  WishlistRoute({
    Key? key,
    required bool fromMenu,
    required bool fromAccount,
    List<PageRouteInfo>? children,
  }) : super(
          WishlistRoute.name,
          args: WishlistRouteArgs(
            key: key,
            fromMenu: fromMenu,
            fromAccount: fromAccount,
          ),
          initialChildren: children,
        );

  static const String name = 'WishlistRoute';

  static const PageInfo<WishlistRouteArgs> page =
      PageInfo<WishlistRouteArgs>(name);
}

class WishlistRouteArgs {
  const WishlistRouteArgs({
    this.key,
    required this.fromMenu,
    required this.fromAccount,
  });

  final Key? key;

  final bool fromMenu;

  final bool fromAccount;

  @override
  String toString() {
    return 'WishlistRouteArgs{key: $key, fromMenu: $fromMenu, fromAccount: $fromAccount}';
  }
}
