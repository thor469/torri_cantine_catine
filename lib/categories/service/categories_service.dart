
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/categories/model/request/categories_request.dart';
import 'package:torri_cantine_app/categories/model/response/categories_response.dart';

class CategoriesService extends HttpServiceBase {
  CategoriesService(Dio dioInstance) : super(dioInstance);

  Future<CategoriesResponse> getCategories(CategoriesRequest request) =>
      getQuery(
        request: request,
        mapper: (json, _) => CategoriesResponse.fromJson(json),
        orElse: (json, data) =>
            CategoriesResponse.fromJson({'categories': json}),
      );
}