import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:torri_cantine_app/product_detail/model/request/product_detail_request.dart';
import 'package:torri_cantine_app/product_detail/model/response/product_detail_response.dart';
import 'package:torri_cantine_app/product_detail/service/product_detail_service.dart';
part 'product_detail_state.dart';
part 'product_detail_event.dart';
part 'product_detail_bloc.freezed.dart';

class ProductDetailBloc extends Bloc<ProductDetailEvent,ProductDetailState>{
  ProductDetailService service;
  ProductDetailBloc(this.service) : super(const _Initial());

    @override
  Stream<ProductDetailState> mapEventToState(
    ProductDetailEvent event,
  ) async* {
    yield* event.when(
      fetch: _fetch,
    );
  }
  

  Stream<ProductDetailState> _fetch(int id) async* {
    yield const ProductDetailState.initial();
    yield const ProductDetailState.loading();
    try {
      final response = await service.getProductDetail (ProductDetailRequest(id: id));
      yield ProductDetailState.loaded(response);
    } catch (e) {
      if (kDebugMode) {
        print('ProductDetailState ERROR');
      }
      if (kDebugMode) {
        print(e);
      }
      yield const ProductDetailState.error();
    }
  }
}