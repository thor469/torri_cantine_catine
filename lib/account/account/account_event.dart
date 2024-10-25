part of 'account_bloc.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.fetch(String email) = _Fetch;
  const factory AccountEvent.fetchAddress() = _FetchAddress;
  const factory AccountEvent.updateAddress(AddAddressRequest request, String id) = _UpdateAddress;
}
