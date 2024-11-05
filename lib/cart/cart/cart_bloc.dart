import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/cart/model/request/cart_request.dart';
import 'package:torri_cantine_app/cart/model/response/cart_response.dart';
import 'package:torri_cantine_app/cart/service/cart_service.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

import '../../app/dependency_injection/dependency_factory_impl.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartService service;
  CartBloc(this.service) : super(const _Initial());
  @override
  Stream<CartState> mapEventToState(
    CartEvent event,
  ) async* {
    yield* event.when(fetch: _fetch, fetchTotals: _fetchTotals);
  }

  Stream<CartState> _fetch() async* {
    LocalStorage storage = LocalStorage();
    yield const CartState.initial();
    try {
      yield const CartState.loading();
      final response = await service.cart(CartRequest());
      var isNotLogged = await storage.getTokenId() == null;
      if (isNotLogged) {
        yield const CartState.notLogged();
      } else {
        if (response.items.isEmpty) {
          yield const CartState.cartEmpty();
        } else {
          const dep = DependencyFactoryImpl();
          Dio dio= dep.createDioForApiCart().dio;
          var codeInfo = await dio.request(
            '/wp-json/wc/store/v1/cart/',
            options: Options(
              method: 'GET',
            ),
          );
          var newCartResponse = CartResponse.fromJson(codeInfo.data);
          yield CartState.loaded(newCartResponse);
        }
      }
    } on ApiException catch (e) {
      yield CartState.error(e.body);
    }
  }

  Stream<CartState> _fetchTotals() async* {
    // yield const CartState.initial();
    try {
      // yield const CartState.loading();
      final response = await service.cart(CartRequest());
      if (response.items.isEmpty) {
        yield const CartState.cartEmpty();
      } else {
        yield CartState.loaded(response);
      }
    } on ApiException catch (e) {
      yield CartState.error(e.body);
    }
  }
}
