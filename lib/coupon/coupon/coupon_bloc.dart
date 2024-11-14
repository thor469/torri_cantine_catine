import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';
import 'package:torri_cantine_app/app/dependency_injection/dependency_factory_impl.dart';
import 'package:torri_cantine_app/coupon/model/response/add_coupon_response.dart';

import '../model/request/coupon_request.dart';
import '../model/response/coupon_response.dart';
import '../service/coupon_service.dart';
import 'add_coupon.dart';

part 'coupon_state.dart';
part 'coupon_event.dart';
part 'coupon_bloc.freezed.dart';

class CouponBloc extends Bloc<CouponEvent, CouponState> {
  final CouponService service;
  CouponBloc(this.service) : super(const _Initial());

  @override
  Stream<CouponState> mapEventToState(
    CouponEvent event,
  ) async* {
    yield* event.when(
      fetch: _coupon,
      delete: _delete,
      reset: _reset,
    );
  }

  Stream<CouponState> _reset() async* {
    yield const CouponState.initial();
  }

  Future<AddCouponResponse?> addCoupon(String code) async{
    const dep = DependencyFactoryImpl();
    Dio dio = dep.createDioForApiCart().dio;
    try{
      var response = await dio.post('/wp-json/wc/store/v1/cart/coupons', data: {"code": code});
      return AddCouponResponse.fromJson(response.data);
    }on DioError catch(e){
      print(e.message);
      return null;
    }
  }

  Future<List<Coupons>?> getCoupon(String code) async{
    const dep = DependencyFactoryImpl();
    Dio dio = dep.createDioForApiCart().dio;
    try{
      var response = await dio.get('/wp-json/wc/store/v1/cart/coupons', queryParameters: {"code": code});
      //RIMAPPARE
      print(response.statusCode);
      final List<Coupons> couponsList = (response.data as List).map((json) => Coupons.fromJson(json as Map<String, dynamic>)).toList();
      return couponsList;
    }on DioError catch(e){
      print(e);
      return null;
    }
  }


  Stream<CouponState> _coupon(String code) async* {
    yield const CouponState.loading();
    try {
      AddCouponResponse? add2Cart = await addCoupon(code);
      if (add2Cart != null) {
        final response = await getCoupon(code);
        var coupon = response?.firstWhereOrNull((element) => element.code == code);
        if (coupon != null) {
            yield CouponState.gotCoupon(Coupon(code: coupon.code, amount: "${int.parse(coupon.totals.totalDiscountTax)  + int.parse(coupon.totals.totalDiscount)}", discount_type: coupon.discountType));
        }
        else {
          yield const CouponState.couponNotFound('COUPON NON TROVATO');
        }
      }else{
        yield const CouponState.error("ERRORE NELL'AGGIUNTA DEL COUPON");
      }
    } catch (e) {
      print('ERROR FETCHING COUPON: $e');
      yield const CouponState.error("ERRORE COUNPON NON ESISTENTE O NON VALIDO");
    }
  }


  Future<bool> deleteCoupon(String code) async{
    const dep = DependencyFactoryImpl();
    Dio dio = dep.createDioForApiCart().dio;
    try{
      var response = await dio.delete('/wp-json/wc/store/v1/cart/coupons/$code');
      if(response.statusCode == 204){
        return true;
      }
      return false;
    }on DioError catch(e){
      print(e.message);
      return false;
    }
  }


  Stream<CouponState> _delete(String code) async* {
    yield const CouponState.loading();
    try {
      final response = await deleteCoupon(code);
      if(response){
        yield const CouponState.noCoupon();
      }else{
        yield const CouponState.error("ERRORE NELL'ELIMINAZIONE DEL COUPON");
      }
    }on DioError catch (e) {
      yield  CouponState.error(e.message);
    }
  }

}
