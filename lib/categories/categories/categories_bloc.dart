import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/app/dependency_injection/dependency_factory_impl.dart';
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
      const dep = DependencyFactoryImpl();
      Dio dio = dep.createDioForApi().dio;
      var codeInfo = await dio.request(
        '/wp-json/wc/v3/products/categories',
        queryParameters: {
          "page" : 1,
          "per_page":10
        },
        options: Options(
          method: 'GET',
        ),
      );
      // final response = await service.getCategories (CategoriesRequest());
      var response = CategoriesResponse.fromJson({"categories" : codeInfo.data});
      yield CategoriesState.loaded(response);
    } catch (e) {
      yield const CategoriesState.error();
    }
  }


  Future<CategoriesResponse?> getOther(int page, int perPage) async{
    try {
      const dep = DependencyFactoryImpl();
      Dio dio = dep.createDioForApi().dio;
      var codeInfo = await dio.request(
        '/wp-json/wc/v3/products/categories',
        queryParameters: {
          "page" : page,
          "per_page": perPage
        },
        options: Options(
          method: 'GET',
        ),
      );
      var response = CategoriesResponse.fromJson({"categories" : codeInfo.data});
      return response;
    } on DioError catch (e) {
      print(e.message);
      return null;
    }
  }

}