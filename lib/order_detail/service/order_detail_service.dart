import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/order_detail/model/request/order_detail_request.dart';
import 'package:torri_cantine_app/order_detail/model/response/order_detail_response.dart';


class OrderDetailService extends HttpServiceBase {
  OrderDetailService(Dio dioInstance) : super(dioInstance);

  Future<OrderDetailResponse> getOrderDetail(OrderDetailRequest request) =>
      getQuery(
        request: request,
        mapper: (json, _) => OrderDetailResponse.fromJson(json),
        orElse: (json, data) =>
            OrderDetailResponse.fromJson({'order': json}),
      );
}
