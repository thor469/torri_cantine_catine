import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/app/dependency_injection/dependency_factory_impl.dart';
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
      loading: _loading
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
  Stream<MyOrdersState> _loading() async* {
    yield const MyOrdersState.loading();
  }

  Stream<MyOrdersState> _createCheckout(Billing? billing, Shipping? shipping, String? customerNote, String? paymentMethod, List<String>? paymentData, int totPoint) async* {
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
      // ?=<id_ordine>&=<somma_punti>
    print(response.order_id);
     await addPoint(response.order_id ?? 0, totPoint);
    yield MyOrdersState.loaded(response);
    } on ApiException catch (e) {
      print(e);
      yield const MyOrdersState.error();
    }
  }

  Future<void> addPoint(int orderId, int totPoint) async{
    try{
      const dep = DependencyFactoryImpl();
      Dio dio = dep.createDioForApiCart().dio;
      var codeInfo = await dio.request(
        '/wp-json/wp/v2/update_order_points',
        queryParameters: {
          "order_id": orderId,
          "points" : totPoint
        },
        options: Options(
          method: 'POST',
        ),
      );
      print(codeInfo);
    }on DioError catch(e){
      if (kDebugMode) {
        print(e.message);
      }
    }
  }


  Future<int?> createCheckOutForStripe(Billing? billing, Shipping? shipping, String? customerNote, String? paymentMethod, List<String>? paymentData, int totPoint) async {
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
      // ?=<id_ordine>&=<somma_punti>
      print(response.order_id);
      await addPoint(response.order_id ?? 0, totPoint);
      return response.order_id;
    } on ApiException catch (e) {

      print(e.body["order_id"]);
      return e.body["order_id"];
    }
  }

}
