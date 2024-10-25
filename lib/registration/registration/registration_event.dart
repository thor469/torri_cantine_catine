part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.fetch({
    required String email,
    required String firstName,
    required String lastName,
    required String username,
    required String password,
  }) = _Fetch;
   const factory RegistrationEvent.registerWithGoogle() = _RegisterWithGoogle;
  const factory RegistrationEvent.registerWithFacebook() =
      _RegisterWithFacebook;
  const factory RegistrationEvent.registerWithApple() = _RegisterWithApple;
}
