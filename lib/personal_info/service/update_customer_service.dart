import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/account/model/request/add_address_request.dart';
import 'package:torri_cantine_app/account/model/response/add_address_response.dart';

import '../model/request/update_customer_request.dart';
import '../model/response/update_customer_response.dart';

class UpdateCustomerService extends HttpServiceBase {
  UpdateCustomerService(Dio dioInstance) : super(dioInstance);

  Future<UpdateCustomerResponse> updateCustomer(UpdateCustomerRequest request) =>
      putJson(
        request: request,
        mapper: (json, _) => UpdateCustomerResponse.fromJson(json),
        orElse: (json, data) => UpdateCustomerResponse.fromJson({'update': json}),
      );


  Future<AddAddressResponse> addAddress(AddAddressRequest request) => postData(
    request: request,
    mapper: (json, _) => AddAddressResponse.fromJson(json),
    orElse: (json, data) => AddAddressResponse.fromJson({'userAddress': json}),
  );
}
