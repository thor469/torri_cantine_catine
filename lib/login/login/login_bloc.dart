import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http_services/http_services.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:torri_cantine_app/firebase_options.dart';
import 'package:torri_cantine_app/login/model/request/insert_notification_request.dart';
import 'package:torri_cantine_app/login/model/request/login_request.dart';
import 'package:torri_cantine_app/login/model/request/notification_request.dart';
import 'package:torri_cantine_app/login/model/response/login_response.dart';
import 'package:torri_cantine_app/login/service/login_service.dart';
import 'package:torri_cantine_app/login/service/notification_service.dart';
import 'package:torri_cantine_app/registration/registration/registration_bloc.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  NotificationService notificationService;
  LoginService service;
  LoginBloc(this.service, this.notificationService) : super(const _Initial());
  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield* event.when(
      login: _login,
      logout: _logout,
      loginWithGoogle: _loginWithGoole,
      loginWithApple: _loginWithApple,
      loginWithFacebook: _loginWithFacebook,
    );
  }

  Stream<LoginState> _login(String username, String password, String? fcmToken) async* {
    yield const LoginState.initial();
    yield const LoginState.loading();
    try {
      final response = await service.login(
        LoginRequest(username: username, password: password),
      );
      LocalStorage storage = LocalStorage();
      String token = await storage.getFCMToken() ?? '';
      String deviceId = await storage.getDeviceId() ??'';
      if (fcmToken == null) {
        await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
        await FirebaseMessaging.instance.getToken().then((value) {
          token = value ?? "";
          storage.setFCMToken(token);
        });
        notificationService.insertToken(InsertNotificationRequest(token: token.trim(), deviceId: deviceId.trim(), email: username));
      } else {
        notificationService.insertToken(InsertNotificationRequest(token: fcmToken.trim(), deviceId: deviceId.trim(), email: username));
      }
      storage.setUserName(username);
      storage.setPassword(password);
      yield LoginState.loggedIn(response);
    } on ApiException catch (e) {
      if (kDebugMode) {
        print('#### LoginState.error');
      }
      if (kDebugMode) {
        print(e);
      }
      // yield const LoginState.loading();
      yield LoginState.error('${e.body?['code']}');
    }
  }

  Stream<LoginState> _logout() async* {
    LocalStorage storage = LocalStorage();
    yield const LoginState.initial();
    yield const LoginState.loading();
    //await storage.deleteTokenId();
    //await storage.deleteFCMToken();
    await storage.deleteFCMToken();
    await storage.deleteTokenId();
    await storage.deleteUserName();
    await storage.deletePassword();
    await storage.deleteUserEmail();
    FirebaseAuth.instance.signOut();
    await DefaultCacheManager().emptyCache();
    yield const LoginState.loggedOut();
  }

  Stream<LoginState> _loginWithApple() async* {
    LocalStorage storage = LocalStorage();

    final AuthorizationCredentialAppleID appleCredential =
        await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName
      ],
    );

    final String rawNonce = generateNonce();
    final AuthCredential credential = OAuthProvider('apple.com').credential(
      idToken: appleCredential.identityToken,
      rawNonce: rawNonce,
    );

    try {
      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      final response = await service.login(LoginRequest(
          username: userCredential.user!.email ?? "",
          password:
              RegistrationBloc.getPassword(userCredential.user!.email ?? "")));
      yield LoginState.loggedIn(response);
    } on ApiException catch (e) {
      storage.deleteUserName();
      storage.deletePassword();
      yield const LoginState.loading();
      yield LoginState.error('${e.body?['code']}');
    }
  }

  Stream<LoginState> _loginWithGoole() async* {
    LocalStorage storage = LocalStorage();
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    if (googleUser != null) {
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );

      yield const LoginState.initial();
      yield const LoginState.loading();
      try {
        UserCredential userCredential =
            await FirebaseAuth.instance.signInWithCredential(credential);
        storage.setUserName(userCredential.user!.email ?? "");
        storage.setPassword(
            RegistrationBloc.getPassword(userCredential.user!.email ?? ""));

        if (kDebugMode) {
          print('_loginWithGoole getPassword');
        }
        if (kDebugMode) {
          print(userCredential.user!.email);
        }
        if (kDebugMode) {
          print(RegistrationBloc.getPassword(
            userCredential.user!.email ?? ""));
        }
        final response = await service.login(LoginRequest(username: userCredential.user!.email ?? "", password: RegistrationBloc.getPassword(userCredential.user!.email ?? "")));
        String token = await storage.getFCMToken() ?? '';
        String deviceId = await storage.getDeviceId() ??'';
        final notificationResponse =
            await notificationService.getToken(NotificationRequest());
        if (kDebugMode) {
          print('_loginWithGoole notificationResponse');
        }
        if (kDebugMode) {
          print(notificationResponse);
        }
        if (token == '') {
          await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
          await FirebaseMessaging.instance.getToken().then((value) {
            token = value ?? "";
            if (kDebugMode) {
              print('FCMToken:${token}');
            }
            if (kDebugMode) {
              print('DeviceID:${deviceId!}');
            }
            storage.setFCMToken(token!);
          });
          notificationService.insertToken(InsertNotificationRequest(token: token.trim(), deviceId: deviceId.trim(), email: userCredential.user!.email ?? "",));
        } else {
          notificationService.insertToken(InsertNotificationRequest(token: token.trim(), deviceId: deviceId.trim(), email: userCredential.user!.email ?? "",));
        }

        yield LoginState.loggedIn(response);
      } on ApiException catch (e) {
        storage.deleteUserName();
        storage.deletePassword();
        yield const LoginState.loading();
        await GoogleSignIn().signOut();
        if (kDebugMode) {
          print('_loginWithGoole exception');
        }
        if (kDebugMode) {
          print(e.body);
        }
        if (kDebugMode) {
          print(e.error);
        }
        if (kDebugMode) {
          print(e.httpCode);
        }
        if (kDebugMode) {
          print(e.httpMessage);
        }
        if((e.body?['code'] ?? "") == "[jwt_auth] incorrect_password"){
          yield const LoginState.error('isRegisteredEmail');
        }else{
          yield LoginState.error('${e.body?['code']}');
        }
      }
    }
  }

  Stream<LoginState> _loginWithFacebook() async* {
    // LocalStorage storage = LocalStorage();
    yield const LoginState.loading();
  //
  //   yield const LoginState.initial();
  //   yield const LoginState.loading();
  //   try {
  //     final auth = await FacebookAuth.instance.login();
  //     if (auth.accessToken != null) {
  //       final user = await FacebookAuth.instance.getUserData();
  //       storage.setUserName(user['email']);
  //       storage.setPassword(RegistrationBloc.getPassword(user['email']));
  //       final response = await service.login(LoginRequest(
  //           username: user['email'],
  //           password: RegistrationBloc.getPassword(user['email'])));
  //       String fcmToken = await storage.getFCMToken() ?? '';
  //       String deviceId = await storage.getDeviceId() ??'';
  //       //String deviceId = response.token!;
  //       final notificationResponse =
  //           await notificationService.getToken(NotificationRequest());
  //           print(notificationResponse);
  //       if (fcmToken == '') {
  //         await Firebase.initializeApp(
  //             options: DefaultFirebaseOptions.currentPlatform);
  //         FirebaseMessaging.instance.getToken().then((value) {
  //           String? token = value;
  //           print('FCMToken:' + token!);
  //           print('DEVICE_id:' + deviceId!);
  //           storage.setFCMToken(token);
  //         });
  //         notificationService.insertToken(
  //             InsertNotificationRequest(token: fcmToken.trim(), deviceId: deviceId.trim(), userId: 169));
  //       } else {
  //         notificationService.insertToken(
  //             InsertNotificationRequest(token: fcmToken.trim(), deviceId: deviceId.trim(), userId: 170));
  //       }
  //       yield LoginState.loggedIn(response);
  //     }
  //   } on ApiException catch (e) {
  //     storage.deleteUserName();
  //     storage.deletePassword();
  //     yield const LoginState.loading();
  //     yield LoginState.error('${e.body?['code']}');
  //   }
  }
}
