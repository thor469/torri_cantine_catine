part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.login(
      String username, String password, String? fcmToken) = _Login;
  const factory LoginEvent.logout() = _Logout;
  const factory LoginEvent.loginWithGoogle() = _LoginWithGoogle;
  const factory LoginEvent.loginWithApple() = _LoginWithApple;
  const factory LoginEvent.loginWithFacebook() = _LoginWithFacebook;
  
}
