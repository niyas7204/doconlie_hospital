part of 'schedule_bloc.dart';

@freezed
class ScheduleEvent with _$ScheduleEvent {
  const factory ScheduleEvent.getSchedule({required String id}) = Getschedule;
  const factory ScheduleEvent.addShedule({
    required String id,
    required Schedule currentTime,
    required Fri newTime,
    required String day,
  }) = Addschedule;
}
