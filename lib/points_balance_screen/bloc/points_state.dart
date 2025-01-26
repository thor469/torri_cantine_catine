part of 'points_bloc.dart';

@freezed
class PointsState with _$PointsState {
  const factory PointsState.initial() = _Initial;
  const factory PointsState.loading() = _Loading;
  const factory PointsState.loaded(String num, List<PointHistoryResponse> history) = _Loaded;
  const factory PointsState.error() = _Error;
}
