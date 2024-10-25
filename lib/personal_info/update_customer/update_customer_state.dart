part of 'update_customer_bloc.dart';

@freezed
class UpdateCustomerState with _$UpdateCustomerState {
  const factory UpdateCustomerState.initial() = _Initial;
  const factory UpdateCustomerState.loading() = _Loading;
  const factory UpdateCustomerState.loaded(UpdateCustomerResponse response) =
      _Loaded;
  const factory UpdateCustomerState.error() = _Error;
}
