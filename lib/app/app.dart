import 'package:flutter/material.dart';
import 'package:torri_cantine_app/app/routing/main_navigation.dart';
import 'package:torri_cantine_app/app/routing/main_navigation_stack.dart';
import 'package:torri_cantine_app/app/routing/main_router_delegate.dart';

import '../utilities/local_storage.dart';
import 'dependency_injection/dependency_factory_impl.dart';
import 'dependency_injection/dependency_provider.dart';

class App extends StatelessWidget {
  static final navigatorKey = GlobalKey<NavigatorState>();
  static final mainNavigationDelegate =
      MainRouterDelegate(
    MainNavigationStack(
      [
        const MainNavigation.welcome(),
      ],
    ),
  );
  final List<int>? wishList;
  const App({
    Key? key,
    this.wishList,
  }) : super(key: key);



  
  @override
  Widget build(BuildContext context) {

    // final mediaQueryData = MediaQuery.of(context);
    // final scale = mediaQueryData.textScaler..clamp(
    //   minScaleFactor: 0, // Minimum scale factor allowed.
    //   maxScaleFactor: 0, // Maximum scale factor allowed.
    // );
    const TextScaler noScaling = TextScaler.linear(1);
    LocalStorage storage = LocalStorage();
    storage.setTabState(0) ;
    storage.setBottomTabState(0) ;

    return DependencyProvider(
      wishList: wishList,
      dependencyFactory: const DependencyFactoryImpl(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: mainNavigationDelegate,
        // builder: (context, child) => child!,
        builder: (context, child) {
          final MediaQueryData data = MediaQuery.of(context);
          return MediaQuery(
            data: data.copyWith(textScaler: noScaling),
            child: child!,
          );
        },
      ),
      //data: MediaQuery.of(context).copyWith(textScaler: scale),
    );

  }

}
