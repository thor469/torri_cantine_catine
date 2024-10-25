import 'package:http_services/http_services.dart';

abstract class DioWrapper {
  final Dio dio;
  DioWrapper(this.dio);
}

class DioForApi extends DioWrapper {
  DioForApi(Dio dio) : super(dio);
}
class DioForApiCart extends DioWrapper {
  DioForApiCart(Dio dio) : super(dio);
}

class DioForLogin extends DioWrapper {
  DioForLogin(Dio dio) : super(dio);
}
