import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/coupon/model/request/coupon_request.dart';
import 'package:torri_cantine_app/coupon/model/response/coupon_response.dart';

class CouponService extends HttpServiceBase {
  CouponService(Dio dioInstance) : super(dioInstance);

  Future<CouponResponse> getCoupon(CouponRequest request) => getQuery(
        request: request,
        mapper: (json, _) => CouponResponse.fromJson(json),
        orElse: (json, data) => CouponResponse.fromJson({'coupons': json}),
      );



}
