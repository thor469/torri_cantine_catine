import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/my_orders/model/request/my_orders_request.dart';
import 'package:torri_cantine_app/my_orders/model/response/my_orders_response.dart';

class MyOrdersService extends HttpServiceBase {
  MyOrdersService(Dio dioInstance) : super(dioInstance);

  Future<MyOrdersResponse> getOrdersData(MyOrdersRequest request) =>
      getQuery(
        request: request,
        mapper: (json, _) => MyOrdersResponse.fromJson(json),
        orElse: (json, data) => MyOrdersResponse.fromJson({'orders': json}),
      );

       Future<MyOrdersResponse> postOrdersData(MyOrdersRequest request) =>
      postData(
        queryParameters: request.toData(),
        request: request,
        mapper: (json, _) => MyOrdersResponse.fromJson(json),
        orElse: (json, data) => MyOrdersResponse.fromJson({'orders': json}),
      );

}
