import 'package:doconline_hospital/data/model/schedulemodel.dart';

List<List<Fri>> createScheduleList(Schedule schedule) {
  List<String> day = ['mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun'];
  List<List<Fri>> scheduleList = [];
  for (int i = 0; i < 7; i++) {
    switch (day[i]) {
      case 'mon':
        scheduleList.add(schedule.mon!);
        break;

      case 'tue':
        scheduleList.add(schedule.tue!);
        break;
      case 'wed':
        scheduleList.add(schedule.wed!);
        break;
      case 'thu':
        scheduleList.add(schedule.thu!);
        break;
      case 'fri':
        scheduleList.add(schedule.fri!);
        break;
      case 'sat':
        scheduleList.add(schedule.sat!);
        break;
      case 'sun':
        scheduleList.add(schedule.sun!);
        break;
    }
  }
  return scheduleList;
}
