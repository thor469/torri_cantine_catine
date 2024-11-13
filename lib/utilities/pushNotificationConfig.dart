import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_in_app_messaging/firebase_in_app_messaging.dart'; // Import In-App Messaging
import 'package:torri_cantine_app/utilities/local_storage.dart';

class PushNotificationConfig {
  Dio dio = Dio();
  final GlobalKey<NavigatorState> navigatorKey;

  PushNotificationConfig(this.navigatorKey);
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  final FirebaseInAppMessaging _inAppMessaging = FirebaseInAppMessaging.instance;

  enableIOSNotifications() async {
    await _firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  androidNotificationChannel() => const AndroidNotificationChannel(
      'high_importance_channel',
      'High Importance Notifications',
      description: 'This channel is used for important notifications.',
      importance: Importance.high,
      playSound: true);

  Future<void> setupInteractedMessage() async {
    LocalStorage storage = LocalStorage();

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      AppleNotification? apple = message.notification?.apple;
      if (notification != null && (android != null || apple != null)) {
        switch (message.data['type']) {
          case "case1":
          // Navigator.pushNamed(navigatorKey.currentContext!, PAge1.routeName, arguments: message.data['item_id']);
            break;
          case "case2":
          // Navigator.pushNamed(navigatorKey.currentContext!, PAge2.routeName, arguments: message.data['item_id']);
            break;
          default:
          // Navigator.pushNamed(navigatorKey.currentContext!, MainScreen.routeName);
        }
      }
    });

    _firebaseMessaging.getToken().then((value) {
      storage.setFCMToken(value!);
    });

    await enableIOSNotifications();
    await registerNotificationListeners();

    // Inizializzazione di Firebase In-App Messaging (facoltativo)
    _inAppMessaging.setAutomaticDataCollectionEnabled(true); // Attiva la raccolta dei dati per in-app messages
  }

  registerNotificationListeners() async {
    AndroidNotificationChannel channel = androidNotificationChannel();
    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    const androidSettings = AndroidInitializationSettings('launcher_icon');
    const iOSSettings = DarwinInitializationSettings(
      requestSoundPermission: true,
      requestBadgePermission: true,
      requestAlertPermission: true,
    );

    const initSettings =
    InitializationSettings(android: androidSettings, iOS: iOSSettings);
    flutterLocalNotificationsPlugin.initialize(
      initSettings,
    );

    FirebaseMessaging.onMessage.listen((RemoteMessage? message) {
      RemoteNotification? notification = message!.notification;
      AndroidNotification? android = message.notification?.android;
      AppleNotification? apple = message.notification?.apple;
      if (notification != null && (android != null || apple != null)) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                channelDescription: channel.description,
                playSound: true,
              ),
              iOS: const DarwinNotificationDetails(
                  presentAlert: true, presentBadge: true, presentSound: true)),
        );
      }
    });
  }
}