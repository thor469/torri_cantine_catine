import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/product_detail/model/request/product_detail_request.dart';
import 'package:torri_cantine_app/product_detail/model/response/product_detail_response.dart';


class ProductDetailService extends HttpServiceBase {
  ProductDetailService(Dio dioInstance) : super(dioInstance);

  Future<ProductDetailResponse> getProductDetail(ProductDetailRequest request) =>
      getQuery(
        request: request,
        mapper: (json, _) => ProductDetailResponse.fromJson(json),
        orElse: (json, data) =>
            ProductDetailResponse.fromJson({'product': json}),
      );
}
