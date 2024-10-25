import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/my_orders/my_orders/list_all_orders/model/request/list_all_orders_request.dart';
import 'package:torri_cantine_app/my_orders/my_orders/list_all_orders/model/response/list_all_orders_response.dart';

class ListAllOrdersService extends HttpServiceBase {
  ListAllOrdersService(Dio dioInstance) : super(dioInstance);

  Future<ListAllOrdersResponse> getListAllOrders(ListAllOrdersRequest request) =>
      getQuery(
        request: request,
        mapper: (json, _) => ListAllOrdersResponse.fromJson(json),
        orElse: (json, data) =>
            ListAllOrdersResponse.fromJson({'orders': json}),
      );
}
