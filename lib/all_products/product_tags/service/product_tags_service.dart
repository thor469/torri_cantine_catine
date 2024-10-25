import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/all_products/product_tags/model/request/product_tags_request.dart';
import 'package:torri_cantine_app/all_products/product_tags/model/response/product_tags_response.dart';

class ProductTagsService extends HttpServiceBase {
 ProductTagsService(Dio dioInstance) : super(dioInstance);

  Future<ProductTagsResponse> getProductTags(ProductTagsRequest request) =>
      getQuery(
        request: request,
        mapper: (json, _) => ProductTagsResponse.fromJson(json),
        orElse: (json, data) =>
            ProductTagsResponse.fromJson({'tags': json}),
      );
}
