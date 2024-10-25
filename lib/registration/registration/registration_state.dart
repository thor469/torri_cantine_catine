part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial() = _Initial;
  const factory RegistrationState.loading() = _Loading;
  const factory RegistrationState.loaded(RegistrationResponse response) = _Loaded;
  const factory RegistrationState.loadedWithGoogle(
          RegistrationResponse response, String username, String password) =
      _LoadedWithGoogle;
  const factory RegistrationState.error(String string, String code) = _Error;
}
