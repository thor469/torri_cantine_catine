import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'cart_request.freezed.dart';
part 'cart_request.g.dart';

@freezed
class CartRequest extends RequestBase with _$CartRequest {
  CartRequest._();
  factory CartRequest() = _CartRequest;

  factory CartRequest.fromJson(Map<String, dynamic> json) =>
      _$CartRequestFromJson(json);

  @override
  String get endpoint => '/wp-json/wc/store/v1/cart';

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
