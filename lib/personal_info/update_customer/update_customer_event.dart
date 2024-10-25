part of 'update_customer_bloc.dart';

@freezed
class UpdateCustomerEvent with _$UpdateCustomerEvent {
  const factory UpdateCustomerEvent.update(
      {int? id,
      String? firstName,
      String? lastName,
      String? phone,
      Billing? billing,
      Shipping? shipping}) = _Update;
  //int id, String firstName, String lastName, Billing billing) = _Update;
}
