import 'dart:developer';

import 'package:doconline_hospital/businesslogic/schedule/schedule_bloc.dart';
import 'package:doconline_hospital/core/helpers/schedulelist.dart';
import 'package:doconline_hospital/core/response_handler/api_response.dart';
import 'package:doconline_hospital/core/response_handler/status.dart';
import 'package:doconline_hospital/presentation/widgets/common.dart';
import 'package:doconline_hospital/presentation/widgets/schedulelist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorSchedule extends StatelessWidget {
  final String id;
  const DoctorSchedule({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    List<String> days = [
      'Monday',
      'Tuesday',
      'Wednusday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ];

    BlocProvider.of<ScheduleBloc>(context)
        .add(ScheduleEvent.getSchedule(id: id));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'Add and Edit Schedule',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<ScheduleBloc, ScheduleState>(
          builder: (context, state) {
            switch (state.schedule.status) {
              case ResponseStatus.error:
                return const SizedBox();
              case ResponseStatus.loading:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              case ResponseStatus.complete:
                var scheduleList =
                    createScheduleList(state.schedule.data!.schedule!);

                return ListView.separated(
                    itemBuilder: (context, index) => scheduleDay(
                        scheduleList[index],
                        days[index],
                        context,
                        state.schedule.data!.schedule!,
                        id),
                    separatorBuilder: (context, index) => space1h(),
                    itemCount: days.length);
              default:
                return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
