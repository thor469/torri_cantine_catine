import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:dio/dio.dart';
import 'package:torri_cantine_app/app/cache_manager/http_cache_manager.dart';
import 'package:torri_cantine_app/app/dependency_injection/dependency_factory_impl.dart';
import 'package:torri_cantine_app/categories/model/response/categories_response.dart';
import 'package:torri_cantine_app/categories/service/categories_service.dart';

part 'categories_state.dart';
part 'categories_event.dart';
part 'categories_bloc.freezed.dart';

// Bloc Implementation
class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final CategoriesService service;
  final CacheManager<CategoriesResponse> cacheManager;

  CategoriesBloc(this.service)
      : cacheManager = CacheManager(cacheDuration: const Duration(minutes: 15)),
        super(const _Initial());

  @override
  Stream<CategoriesState> mapEventToState(CategoriesEvent event) async* {
    yield* event.when(
      fetch: _fetch,
    );
  }

  Stream<CategoriesState> _fetch() async* {
    const cacheKey = 'fetch_categories';
    final cachedResponse = cacheManager.get(cacheKey);

    if (cachedResponse != null) {
      yield CategoriesState.loaded(cachedResponse);
      return;
    }

    yield const CategoriesState.initial();
    yield const CategoriesState.loading();
    try {
      const dep = DependencyFactoryImpl();
      Dio dio = dep.createDioForApi().dio;
      var codeInfo = await dio.request(
        '/wp-json/wc/v3/products/categories',
        queryParameters: {
          "page": 1,
          "per_page": 10,
        },
        options: Options(
          method: 'GET',
        ),
      );
      var response = CategoriesResponse.fromJson({"categories": codeInfo.data});

      // Salva nella cache.
      cacheManager.set(cacheKey, response);

      yield CategoriesState.loaded(response);
    } catch (e) {
      yield const CategoriesState.error();
    }
  }

  Future<CategoriesResponse?> getOther(int page, int perPage) async {
    final cacheKey = 'getOther_${page}_$perPage';
    final cachedResponse = cacheManager.get(cacheKey);

    if (cachedResponse != null) {
      return cachedResponse;
    }

    try {
      const dep = DependencyFactoryImpl();
      Dio dio = dep.createDioForApi().dio;
      var codeInfo = await dio.request(
        '/wp-json/wc/v3/products/categories',
        queryParameters: {
          "page": page,
          "per_page": perPage,
        },
        options: Options(
          method: 'GET',
        ),
      );
      var response = CategoriesResponse.fromJson({"categories": codeInfo.data});

      // Salva nella cache.
      cacheManager.set(cacheKey, response);

      return response;
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e.message);
      }
      return null;
    }
  }
}