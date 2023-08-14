part of 'schedule_bloc.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const factory ScheduleState({required ApiResponse<ScheduleModel> schedule}) =
      _ScheduleState;
  factory ScheduleState.initial() =>
      ScheduleState(schedule: ApiResponse.initial());
}
