import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:torri_cantine_app/my_orders/my_orders/list_all_orders/model/request/list_all_orders_request.dart';
import 'package:torri_cantine_app/my_orders/my_orders/list_all_orders/model/response/list_all_orders_response.dart';
import 'package:torri_cantine_app/my_orders/service/list_all_orders_service.dart';

part 'list_all_orders_state.dart';
part 'list_all_orders_event.dart';
part 'list_all_orders_bloc.freezed.dart';

class ListAllOrdersBloc extends Bloc<ListAllOrdersEvent,ListAllOrdersState>{
  ListAllOrdersService service;
  ListAllOrdersBloc(this.service) : super(const _Initial());

    @override
  Stream<ListAllOrdersState> mapEventToState(
    ListAllOrdersEvent event,
  ) async* {
    yield* event.when(
      fetch: _fetch,
    );
  }
  

  Stream<ListAllOrdersState> _fetch(int? customer_id) async* {
    yield const ListAllOrdersState.initial();
    yield const ListAllOrdersState.loading(); 
    try {
      final response = await service.getListAllOrders (ListAllOrdersRequest(customer: customer_id));
      yield ListAllOrdersState.loaded(response);
    } catch (e) {
      yield  ListAllOrdersState.error(e);
    }
  }
}