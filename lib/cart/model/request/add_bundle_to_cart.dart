import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http_services/http_services.dart';

part 'add_bundle_to_cart.freezed.dart';
part 'add_bundle_to_cart.g.dart';



@freezed
class AddBundleToCart extends RequestBase with _$AddBundleToCart {
  AddBundleToCart._();
  factory AddBundleToCart({
    required final int id,
    required final Map data,
    required final String cartUrl,
    required final int quantity,
  }) = _AddBundleToCart;

  factory AddBundleToCart.fromJson(Map<String, dynamic> json) =>
      _$AddBundleToCartFromJson(json);

  @override
  String get endpoint => '${cartUrl}';
  //String get endpoint => '/wp-json/wc/store/v1/cart/add-item';

  @override
  Map<String, dynamic> toData() {
    return {'data': data, "quantity": quantity};
  }

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
