import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:torri_cantine_app/firebase_options.dart';
import 'package:torri_cantine_app/utilities/db_products.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';
import 'package:torri_cantine_app/utilities/pushNotificationConfig.dart';
import 'app/common/utilities/device_info.dart';

import 'app/app.dart';

final navigatorKey = GlobalKey<NavigatorState>();



void main() async {
  //final document = await getApplicationDocumentsDirectory();
  await Hive.initFlutter();
  Hive.registerAdapter(LocalStorageAdapter());
  LocalStorage storage = LocalStorage();

  // final dir = await getApplicationDocumentsDirectory();
  // final isar = await Isar.open(
  //   [DbProductsIsarSchema],
  //   directory: dir.path,
  // );

  WidgetsFlutterBinding.ensureInitialized();
  storage.deleteFilters();
  
  // Stripe.publishableKey = "pk_test_aNkLcRvBroToL0F9CyWydbpV00AaqoeiCr";
  Stripe.publishableKey = "pk_test_51QHRcORui7MolgV0k2u9RG4ePtSAuNAvOzR0ghpCf6PZb8N2yoaXgKNjO7hz1GoqytAM9wh94syFVah44j6Hj1OT00qgzgMHoM";
  //"pk_test_aNkLcRvBroToL0F9CyWydbpV00AaqoeiCr";
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseMessaging.instance.getToken().then((value) {
    String? token = value;
    //print('FCMToken_:' + token!);
    //print('DeviceID:' + deviceId!);
    storage.setFCMToken(token!);
  });
  var devID= await getId();
  // print('QUIQUIUIQ@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@');
  // print(devID);
  storage.setDeviceId(devID!);

  await PushNotificationConfig(navigatorKey).setupInteractedMessage();
  final initialWishlist = await storage.getWishList();
  runApp(App(
    wishList: initialWishlist ?? [],
  ));
  initializeDateFormatting('it_IT', null);
}
