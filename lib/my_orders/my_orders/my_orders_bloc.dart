import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/my_orders/model/request/my_orders_request.dart';
import 'package:torri_cantine_app/my_orders/model/response/my_orders_response.dart';
import 'package:torri_cantine_app/my_orders/service/my_orders_service.dart';

import '../../coupon/coupon/add_coupon.dart';

part 'my_orders_bloc.freezed.dart';
part 'my_orders_event.dart';
part 'my_orders_state.dart';

class MyOrdersBloc extends Bloc<MyOrdersEvent, MyOrdersState> {
  MyOrdersService service;
  MyOrdersBloc(this.service) : super(const _Initial());

  @override
  Stream<MyOrdersState> mapEventToState(
    MyOrdersEvent event,
  ) async* {
    yield* event.when(
      fetch: _fetch,
      createCheckout: _createCheckout,
    );
  }

  Stream<MyOrdersState> _fetch() async* {
    yield const MyOrdersState.initial();
    yield const MyOrdersState.loading();
    try {
      final response = await service.getOrdersData(MyOrdersRequest());
      yield MyOrdersState.loaded(response);
    } catch (e) {
      yield const MyOrdersState.error();
    }
  }

  Stream<MyOrdersState> _createCheckout(
      Billing? billing,
      Shipping? shipping,
      String? customerNote,
      String? paymentMethod,
      List<String>? paymentData) async* {
    yield const MyOrdersState.initial();
    yield const MyOrdersState.loading();
    try {




      final response = await service.postOrdersData(
        MyOrdersRequest(
          billing_address: billing,
          shipping_address: shipping,
          create_account: false,
          customer_note: customerNote,
            payment_method: paymentMethod,
            payment_data: paymentData
        ),
      );
      // wp/v2/update_order_points?order_id=<id_ordine>&points=<somma_punti>

    yield MyOrdersState.loaded(response);
    } on ApiException catch (e) {
      yield const MyOrdersState.error();
    }
  }
}
