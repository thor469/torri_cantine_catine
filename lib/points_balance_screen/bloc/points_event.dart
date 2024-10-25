part of 'points_bloc.dart';

@freezed
class PointsEvent with _$PointsEvent {
  const factory PointsEvent.fetch() = _Fetch;
}
