part of 'add_bundle_to_cart_bloc.dart';

@freezed
class AddBundleToCartEvent with _$AddBundleToCartEvent {
  const factory AddBundleToCartEvent.addBundle(int id, Map data, String cartUrl, int quantity) =
      _AddBundle;
  const factory AddBundleToCartEvent.updateBundle(String key, Map data, int quantity) =
      _UpdateBundle;
}
