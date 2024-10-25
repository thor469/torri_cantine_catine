part of 'order_detail_bloc.dart';

@freezed
class OrderDetailEvent with _$OrderDetailEvent {
    const factory OrderDetailEvent.fetch(int id) = _Fetch;
}