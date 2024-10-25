part of 'account_bloc.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.initial() = _Initial;
  const factory AccountState.loading() = _Loading;
  const factory AccountState.notLogged() = _NotLogged;
  const factory AccountState.loaded(AccountResponse response) = _Loaded;
  const factory AccountState.error() = _Error;
  const factory AccountState.loadedAddress(AddressResponse response) = _LoadedAddress;
}
