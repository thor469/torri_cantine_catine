part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;
  const factory CartState.notLogged() = _NotLogged;
  const factory CartState.loading() = _Loading;
  const factory CartState.loaded(CartResponse response) = _Loaded;
  const factory CartState.cartEmpty() = _CartEmpty;
  const factory CartState.error(String error) = _Error;
}
