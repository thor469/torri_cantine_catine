import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:torri_cantine_app/all_products/product_tags/model/request/product_tags_request.dart';
import 'package:torri_cantine_app/all_products/product_tags/model/response/product_tags_response.dart';
import 'package:torri_cantine_app/all_products/product_tags/service/product_tags_service.dart';

part 'product_tags_state.dart';
part 'product_tags_event.dart';
part 'product_tags_bloc.freezed.dart';

class ProductTagsBloc extends Bloc<ProductTagsEvent,ProductTagsState>{
  ProductTagsService service;
  ProductTagsBloc(this.service) : super(const _Initial());

  
  @override
  Stream<ProductTagsState> mapEventToState(
    ProductTagsEvent event,
  ) async* {
    yield* event.when(
      fetch: _fetch,
    );
  }

  Stream<ProductTagsState> _fetch() async* {
    yield const ProductTagsState.initial();
    yield const ProductTagsState.loading();
    try {
      final response = await service.getProductTags(ProductTagsRequest());
      yield ProductTagsState.loaded(response);
    } catch (e) {
      yield const ProductTagsState.error();
    }
  }
}