part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.loggedIn(LoginResponse userDatas) = _LoggedIn;
  const factory LoginState.error(String error) = _Error;
}
