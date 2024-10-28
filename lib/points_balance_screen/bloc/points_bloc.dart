import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/account/model/response/address_response.dart';
import 'package:torri_cantine_app/account/service/account_service.dart';
import 'package:torri_cantine_app/app/dependency_injection/dependency_factory_impl.dart';
import 'package:torri_cantine_app/points_balance_screen/model/response/point_response.dart';

part 'points_bloc.freezed.dart';
part 'points_event.dart';
part 'points_state.dart';

class PointsBloc extends Bloc<PointsEvent, PointsState> {
  // final AccountService service;
  PointsBloc() : super(const _Initial());

  @override
  Stream<PointsState> mapEventToState(PointsEvent event) async* {
    yield* event.when(
      fetch: getTotalPoint,
    );
  }


  Stream<PointsState>  getTotalPoint() async*{
    yield const PointsState.initial();
    yield const PointsState.loading();
    try{
      const dep = DependencyFactoryImpl();
      Dio dio = dep.createDioForApiCart().dio;
      var codeInfo = await dio.request(
        '/wp-json/wp/v2/get_user_total_points',
        options: Options(
          method: 'GET',
        ),
      );
      // AddressResponse data = AddressResponse.fromJson(codeInfo.data);
      yield PointsState.loaded(codeInfo.data);
    } on DioError catch (e){
      if (kDebugMode) {
        print(e.message);
      }
      yield const PointsState.error();
    }
  }

  Future<int?> getOrderPoint(int orderId) async{
    try{
      const dep = DependencyFactoryImpl();
      Dio dio = dep.createDioForApiCart().dio;
      var codeInfo = await dio.request(
        '/wp-json/wp/v2/get_order_total_points',
        options: Options(
          method: 'GET',
        ),
        queryParameters: {
          "order_id" : orderId
        }
      );
      // AddressResponse data = AddressResponse.fromJson(codeInfo.data);
      if (kDebugMode) {
        print(codeInfo.data);
      }
      return codeInfo.data;
    }
    catch (e){
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  Future<PointMaxValueResponse?> getPointsMaxValues() async{
    try{
      const dep = DependencyFactoryImpl();
      Dio dio = dep.createDioForApiCart().dio;
      var codeInfo = await dio.request(
          '/wp-json/wp/v2/get_points_max_values',
          options: Options(
            method: 'GET',
          ),
      );
      PointMaxValueResponse data = PointMaxValueResponse.fromJson(codeInfo.data);
      print(data);
      return data;
    }
    catch (e){
      print(e);
      return null;
    }
  }

  Future<double?> getMoneyDiscountAvaible() async{
    try{
      const dep = DependencyFactoryImpl();
      Dio dio = dep.createDioForApiCart().dio;
      var codeInfo = await dio.request(
        '/wp-json/wp/v2/get_money_discount_available',
        options: Options(
          method: 'GET',
        ),
      );
      // PointMaxValueResponse data = PointMaxValueResponse.fromJson(codeInfo.data);
      print(codeInfo.data);
      if(codeInfo.data is int){
        codeInfo.data = codeInfo.data.toDouble();
      }
      return codeInfo.data;
    }
    catch (e){
      print(e);
      return null;
    }
  }
}
