import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/account/model/request/add_address_request.dart';
import 'package:torri_cantine_app/account/model/response/add_address_response.dart';
import 'package:torri_cantine_app/account/model/response/address_response.dart';

class AddressService extends HttpServiceBase {
  AddressService(Dio dioInstance) : super(dioInstance);

  Future<AddAddressResponse> addAddress(AddAddressRequest request) => postData(
    request: request,
    mapper: (json, _) => AddAddressResponse.fromJson(json),
    orElse: (json, data) => AddAddressResponse.fromJson({'billing ': json}),
  );

  Future<AddressResponse> updateAddress(AddAddressRequest request) => putData(
    request: request,
    mapper: (json, _) => AddressResponse.fromJson(json),
    orElse: (json, data) => AddressResponse.fromJson({'user': json}),
  );
}
