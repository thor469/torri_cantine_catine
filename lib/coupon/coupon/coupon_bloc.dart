import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';

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
    );
  }

  Stream<CouponState> _coupon(String code) async* {
    yield const CouponState.initial();
    yield const CouponState.loading();

    try {
      final response = await service.getCoupon(CouponRequest());
      print('COUPON RESPONSE: $response'); // Printing the response

      var coupon = response.coupons!.firstWhereOrNull((element) => element.code == code);
      print('FILTERED COUPON: $coupon'); // Printing the coupon if found

      if (coupon != null) {
        // Check if the coupon is expired


        // If the coupon is valid, attempt to add it to the cart
        addCouponResponse? add2Cart = await addCouponToCart(coupon.code);
        print('ADD COUPON TO CART RESPONSE: $add2Cart'); // Print the add-to-cart response

        if (add2Cart == null) {
          print('ERROR ADDING COUPON TO CART'); // Print error message
          yield const CouponState.error();
        } else {
          print('SUCCESSFULLY GOT COUPON'); // Coupon successfully processed
          yield CouponState.gotCoupon(coupon);
        }
      } else {
        print('COUPON NOT FOUND'); // Coupon was not found
        yield const CouponState.noCoupon();
      }
    } catch (e) {
      print('ERROR FETCHING COUPON: $e'); // Print error
      yield const CouponState.error();
    }
  }



  Stream<CouponState> _delete(String code) async* {
    yield const CouponState.initial();
    yield const CouponState.loading();
    try {
      final response = await deleteCouponFromCart(code);

      print('#### DELETE COUPON FROM CART ####################');
      print(response);

      if (response ==true) {
        yield const CouponState.noCoupon();
        }
    } catch (e) {
      yield const CouponState.error();
    }
  }

}
