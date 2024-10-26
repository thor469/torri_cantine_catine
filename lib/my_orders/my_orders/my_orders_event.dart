part of 'my_orders_bloc.dart';


@freezed
class MyOrdersEvent with _$MyOrdersEvent {
  const factory MyOrdersEvent.fetch() = _Fetch;
  const factory MyOrdersEvent.createCheckout(
    Billing? billing,
    Shipping? shipping,
    String? customerNote,
    String? paymentMethods,
    List<String>? paymentData,int totPoint
  ) =
      _CreateCheckout;
  
}
