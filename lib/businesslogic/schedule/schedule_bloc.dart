import 'dart:math';

import 'package:doconline_hospital/core/response_handler/api_response.dart';

import 'package:doconline_hospital/data/model/schedulemodel.dart';
import 'package:doconline_hospital/data/repository/viewservices.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_event.dart';
part 'schedule_state.dart';
part 'schedule_bloc.freezed.dart';

class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  final ScheduleService scheduleService;
  ScheduleBloc(this.scheduleService) : super(ScheduleState.initial()) {
    on<Getschedule>((event, emit) async {
      emit(state.copyWith(schedule: ApiResponse.loading()));
      final response = await scheduleService.getSchedule(id: event.id);
      emit(response.fold((l) => state.copyWith(schedule: ApiResponse.error(l)),
          (r) => state.copyWith(schedule: ApiResponse.complete(r))));
    });
    on<Addschedule>((event, emit) async {
      emit(state.copyWith(schedule: ApiResponse.loading()));
      await scheduleService.addSchedule(
          id: event.id,
          currentTime: event.currentTime,
          newTime: event.newTime,
          day: event.day);
      final response = await scheduleService.getSchedule(id: event.id);
      emit(response.fold((l) => state.copyWith(schedule: ApiResponse.error(l)),
          (r) => state.copyWith(schedule: ApiResponse.complete(r))));
    });
  }
}
