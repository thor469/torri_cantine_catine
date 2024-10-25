part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.fetch() = _Fetch;
  const factory CartEvent.fetchTotals() = _FetchTotals;
}
