import 'package:http_services/http_services.dart';
import 'package:torri_cantine_app/utilities/local_storage.dart';

class TokenInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final LocalStorage storage = LocalStorage();
    final token = await storage.getTokenId();
    if (token != null) {
      options.headers.addAll({'authorization': 'Bearer $token'});
    }
    super.onRequest(options, handler);
  }
}
