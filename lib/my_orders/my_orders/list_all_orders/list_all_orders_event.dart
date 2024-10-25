part of 'list_all_orders_bloc.dart';

@freezed
class ListAllOrdersEvent with _$ListAllOrdersEvent {
    const factory ListAllOrdersEvent.fetch(int? customer_id) = _Fetch;
}