import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:torri_cantine_app/order_detail/model/request/order_detail_request.dart';
import 'package:torri_cantine_app/order_detail/model/response/order_detail_response.dart';
import 'package:torri_cantine_app/order_detail/service/order_detail_service.dart';

part 'order_detail_state.dart';
part 'order_detail_event.dart';
part 'order_detail_bloc.freezed.dart';

class OrderDetailBloc extends Bloc<OrderDetailEvent,OrderDetailState>{
  OrderDetailService service;
  OrderDetailBloc(this.service) : super(const _Initial());

    @override
  Stream<OrderDetailState> mapEventToState(
    OrderDetailEvent event,
  ) async* {
    yield* event.when(
      fetch: _fetch,
    );
  }
  

  Stream<OrderDetailState> _fetch(int id) async* {
    yield const OrderDetailState.initial();
    yield const OrderDetailState.loading();
    try {
      final response = await service.getOrderDetail (OrderDetailRequest(id: id));
      yield OrderDetailState.loaded(response);
    } catch (e) {
      yield const OrderDetailState.error();
    }
  }
}