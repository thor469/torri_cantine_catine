part of 'list_all_orders_bloc.dart';

@freezed
class ListAllOrdersState with _$ListAllOrdersState {
  const factory ListAllOrdersState.initial() = _Initial;
  const factory ListAllOrdersState.loading() = _Loading;
  const factory ListAllOrdersState.loaded(ListAllOrdersResponse response) = _Loaded;
  factory ListAllOrdersState.error(error) = _Error;
}