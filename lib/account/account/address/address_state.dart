part of 'address_bloc.dart';

@freezed
class AddressState with _$AddressState {
  const factory AddressState.initial() = _Initial;
  const factory AddressState.loading() = _Loading;
  const factory AddressState.notLogged() = _NotLogged;
  const factory AddressState.loaded(AddressResponse response) = _Loaded;
  const factory AddressState.error() = _Error;
}
