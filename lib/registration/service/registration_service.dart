import 'package:http_services/http_services.dart';

import '../model/request/registration_request.dart';
import '../model/response/registration_response.dart';

class RegistrationService extends HttpServiceBase {
  RegistrationService(Dio dioInstance) : super(dioInstance);

  Future<RegistrationResponse> getRegistration(RegistrationRequest request) =>
      postData(
        expectedStatusCode: 201,
        queryParameters: request.toData(),
        request: request,
        mapper: (json, _) => RegistrationResponse.fromJson(json),
        orElse: (json, data) => RegistrationResponse.fromJson({'id': json}),
      );
}
