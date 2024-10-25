import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/login/model/request/login_request.dart';
import 'package:torri_cantine_app/login/model/response/login_response.dart';

class LoginService extends HttpServiceBase {
  LoginService(Dio dioInstance) : super(dioInstance);

  Future<LoginResponse> login(LoginRequest request) => postData(
        queryParameters: request.toData(),
        request: request,
        mapper: (json, _) => LoginResponse.fromJson(json),
        orElse: (json, data) => LoginResponse.fromJson(json),
      );
}
