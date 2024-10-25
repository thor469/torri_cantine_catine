import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:torri_cantine_app/categories/model/request/categories_request.dart';
import 'package:torri_cantine_app/categories/model/response/categories_response.dart';
import 'package:torri_cantine_app/categories/service/categories_service.dart';

part 'categories_state.dart';
part 'categories_event.dart';
part 'categories_bloc.freezed.dart';

class CategoriesBloc extends Bloc<CategoriesEvent,CategoriesState>{
  CategoriesService service;
  CategoriesBloc(this.service) : super(const _Initial());

    @override
  Stream<CategoriesState> mapEventToState(
    CategoriesEvent event,
  ) async* {
    yield* event.when(
      fetch: _fetch,
    );
  }
  

  Stream<CategoriesState> _fetch() async* {
    yield const CategoriesState.initial();
    yield const CategoriesState.loading();
    try {
      final response = await service.getCategories (CategoriesRequest());
      yield CategoriesState.loaded(response);
    } catch (e) {
      yield const CategoriesState.error();
    }
  }
}