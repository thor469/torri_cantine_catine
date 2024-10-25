part of 'my_orders_bloc.dart';

@freezed
class MyOrdersState with _$MyOrdersState {
  const factory MyOrdersState.initial() = _Initial;
  const factory MyOrdersState.loading() = _Loading;
  const factory MyOrdersState.loaded(MyOrdersResponse response) = _Loaded;
  const factory MyOrdersState.error() = _Error;
}