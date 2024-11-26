import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http_services/http_services.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:torri_cantine_app/registration/model/request/registration_request.dart';
import 'package:torri_cantine_app/registration/model/response/registration_response.dart';
import 'package:torri_cantine_app/registration/service/registration_service.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';
import 'package:uuid/uuid.dart';

part 'registration_bloc.freezed.dart';
part 'registration_event.dart';
part 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final RegistrationService service;

  RegistrationBloc(this.service) : super(const RegistrationState.initial());

  @override
  Stream<RegistrationState> mapEventToState(RegistrationEvent event) async* {
    yield* event.when(
      fetch: _fetch,
      registerWithGoogle: _registerWithGoogle,
      registerWithFacebook: _registerWithFacebook,
      registerWithApple: _registerWithApple,
    );
  }

  Stream<RegistrationState> _fetch(String email, String firstname,
      String lastname, String username, String password) async* {
    yield const RegistrationState.loading();
    try {
      final response = await service.getRegistration(
        RegistrationRequest(
          billing: null,
          email: email,
          first_name: firstname,
          last_name: lastname,
          password: password,
          shipping: null,
          username: username,
        ),
      );
      yield RegistrationState.loaded(response);
    } on ApiException catch (e) {
      yield RegistrationState.error(
          getWarningMeessage(e.body['code']), e.body['code']);
    }
  }

  Stream<RegistrationState> _registerWithGoogle() async* {
    LocalStorage storage = LocalStorage();
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    // final bool isSigned = await GoogleSignIn().isSignedIn();
    if (googleUser != null) {
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );

      try {
        UserCredential userCredential =
            await FirebaseAuth.instance.signInWithCredential(credential);
        storage.setUserName(userCredential.user!.email ?? "");
        storage.setPassword(getPassword(userCredential.user!.email ?? ""));
        final response = await service.getRegistration(
          RegistrationRequest(
            billing: null,
            email: userCredential.user!.email ?? "",
            first_name: userCredential.user!.displayName ?? "",
            last_name: "",
            password: getPassword(userCredential.user!.email ?? ""),
            shipping: null,
            username: "",
          ),
        );
        // googleUser.clearAuthCache();

        yield RegistrationState.loadedWithGoogle(response, userCredential.user!.email ?? "", getPassword(userCredential.user!.email ?? ""));
        // await googleSignIn.signOut();
      } on ApiException catch (e) {
        await googleUser.clearAuthCache();
        await GoogleSignIn().signOut();
        yield RegistrationState.error(getWarningMeessage(e.body['code']), e.body['code']);
      }
    } else {
      yield const RegistrationState.error('Google sign in aborted.', "");
    }
  }

  Stream<RegistrationState> _registerWithFacebook() async* {
    // LocalStorage storage = LocalStorage();
    //
    // final facebookAuth = await FacebookAuth.instance.login();
    // if (facebookAuth.accessToken != null) {
    //   final user = await FacebookAuth.instance.getUserData();
    //   try {
    //     storage.setUserName(user['email']);
    //     storage.setPassword(getPassword(user['email']));
    //     final response = await service.getRegistration(
    //       RegistrationRequest(
    //         billing: null,
    //         email: user['email'],
    //         first_name: user['name'],
    //         last_name: "",
    //         password: getPassword(user['email']),
    //         shipping: null,
    //         username: "",
    //       ),
    //     );
    //
    //     yield RegistrationState.loadedWithGoogle(
    //         response, user['email'], getPassword(user['email']));
    //   } on ApiException catch (e) {
    //     await FacebookAuth.i.logOut();
    //
    //     yield RegistrationState.error(
    //         getWarningMeessage(e.body['code']), e.body['code']);
    //   }
    // } else {
      yield const RegistrationState.error('Facebook sign in aborted.', "");
    // }
  }

  Stream<RegistrationState> _registerWithApple() async* {LocalStorage storage = LocalStorage();
    final AuthorizationCredentialAppleID appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName
      ],
    );

    // final String rawNonce = generateNonce();
        // rawNonce: rawNonce,
    final AuthCredential credential = OAuthProvider('apple.com').credential(
      idToken: appleCredential.identityToken,
      accessToken: appleCredential.authorizationCode
    );



    try {
      final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
      storage.setUserName(userCredential.user!.email ?? "");
      storage.setPassword(getPassword(userCredential.user!.email ?? ""));

      // if (kDebugMode) {
      //   print('@@##### USER CREDENTIAL ########################');
      // }
      // if (kDebugMode) {
      //   print(userCredential);
      // }
      // if (kDebugMode) {
      //   print(userCredential.user);
      // }
      // if (kDebugMode) {
      //   print('---');
      // }
      // if (kDebugMode) {
      //   print(userCredential.additionalUserInfo);
      // }
      // if (kDebugMode) {
      //   print('---------------');
      // }

      String userDisplayName = '';
      if(userCredential.user!.displayName==null) {
        userDisplayName = 'utente_${(userCredential.user!.email ?? "").split('@').first}';
      } else {
        userDisplayName = userCredential.user!.email!;
      }

      final response = await service.getRegistration(RegistrationRequest(
        billing: null,
        email: userCredential.user!.email ?? "",
        first_name: userDisplayName,
        last_name: "",
        password: getPassword(userCredential.user!.email ?? ""),
        shipping: null,
        username: "",
      ));
      yield RegistrationState.loaded(response);
    } on ApiException catch (e) {
      yield RegistrationState.error(
          getWarningMeessage(e.body['code']), e.body['code']);
    }
  }

  String generateNonce() {
    final String uuid = const Uuid().v4();
    return uuid;
  }

  static String getWarningMeessage(String msg) {
    switch (msg) {
      case 'registration-error-email-exists':
        return 'Account già registrato, utilizza un email diversa o procedi con il login.';
      default:
        return msg;
    }
  }

  static void userRegisteredAlready(String msg, VoidCallbackAction action) {
    switch (msg) {
      case 'registration-error-email-exists':
        () => action;
        break;
      default:
    }
  }

  static String getPassword(String email) {
    return "${email.substring(3, 4)}${email.substring(0, 1)}GoogleAccess@";
  }
}
