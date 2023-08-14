import 'dart:developer';

import 'package:doconline_hospital/businesslogic/booking/booking_bloc.dart';
import 'package:doconline_hospital/businesslogic/schedule/schedule_bloc.dart';
import 'package:doconline_hospital/core/response_handler/status.dart';
import 'package:doconline_hospital/data/model/schedulemodel.dart';
import 'package:doconline_hospital/presentation/widgets/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

Widget scheduleDay(List<Fri> scheduleByDay, String day, BuildContext context,
    Schedule schedule, String id) {
  return SizedBox(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          labelText(day),
          ListView.separated(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) =>
                scheduleCard(index, scheduleByDay[index]),
            separatorBuilder: (context, index) => space1h(),
            itemCount: scheduleByDay.length,
          ),
          SizedBox(
            width: 150,
            child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) =>
                          addScheduleField(context, schedule, day, id));
                },
                child: Row(
                  children: const [Icon(Icons.add), Text('Add Schedule')],
                )),
          )
        ],
      ),
    ),
  );
}

scheduleCard(int index, Fri schedule) {
  return Container(
      decoration: BoxDecoration(
          color: Colors.blueGrey, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text20("${index + 1}"),
            Row(
              children: [
                text20('Start Time   :'),
                text20(
                    "${schedule.startDate!.hour}:${schedule.startDate!.minute}"),
                SizedBox(
                  width: 40.w,
                ),
                text20('End Time   :'),
                text20("${schedule.endDate!.hour}:${schedule.endDate!.minute}"),
                IconButton(onPressed: () {}, icon: const Icon(Icons.edit))
              ],
            ),
            text20('Slots :${schedule.slot}')
          ],
        ),
      ));
}

addScheduleField(
    BuildContext context, Schedule schedule, String day, String id) {
  TextEditingController startTimeController = TextEditingController();
  TextEditingController endTimeController = TextEditingController();
  TextEditingController slotController = TextEditingController();

  return BlocListener<ScheduleBloc, ScheduleState>(
    listener: (context, state) {
      if (state.schedule.status == ResponseStatus.complete) {
        Navigator.of(context).pop();
      }
    },
    child: AlertDialog(
      backgroundColor: const Color.fromARGB(201, 255, 255, 255),
      content: SingleChildScrollView(
        child: SizedBox(
          height: 410,
          width: 360.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              labelText('Start Time'),
              sheduleEditField(startTimeController, context),
              labelText('End Time'),
              sheduleEditField(endTimeController, context),
              labelText('Slots'),
              SizedBox(
                width: 200,
                child: TextField(
                  controller: slotController,
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                ),
              )
            ],
          ),
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 100,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancel')),
            ),
            SizedBox(
              width: 100,
              child: ElevatedButton(
                  onPressed: () {
                    if (startTimeController.text.isNotEmpty &&
                        endTimeController.text.isNotEmpty) {
                      if (slotController.text.isNotEmpty) {
                        Fri time = Fri(
                            startDate: DateTime.parse(startTimeController.text),
                            endDate: DateTime.parse(endTimeController.text),
                            slot: slotController.text);
                        BlocProvider.of<ScheduleBloc>(context).add(
                            ScheduleEvent.addShedule(
                                id: id,
                                currentTime: schedule,
                                newTime: time,
                                day: day));
                      } else {
                        showErrordiolog(context, 'slot should be filled');
                      }
                    } else {
                      showErrordiolog(
                          context, 'Start time and End time should be slected');
                    }
                  },
                  child: const Text('Add')),
            ),
          ],
        ),
      ],
    ),
  );
}

sheduleEditField(
  TextEditingController controller,
  BuildContext context,
) {
  TimeOfDay selectedTime = TimeOfDay.now(); // Initialize with the current time
  TextEditingController timeController = TextEditingController();
  return Container(
    decoration: BoxDecoration(
        border: Border.all(), borderRadius: BorderRadius.circular(10)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(
            controller: timeController,
            readOnly: true,
            onTap: () {
              // Show time picker
              showTimePicker(
                context: context,
                initialTime: selectedTime,
              ).then((pickedTime) {
                if (pickedTime != null) {
                  timeController.text =
                      '${pickedTime.hour}:${pickedTime.minute}';
                  selectedTime = pickedTime;
                  final formattedText = DateTime(
                      DateTime.now().year,
                      DateTime.now().month,
                      DateTime.now().day,
                      selectedTime.hour,
                      selectedTime.minute);
                  log(formattedText.toString());

                  controller.text = formattedText.toIso8601String();
                } else {
                  log("pickedTime $pickedTime");
                }
              });
            },
            decoration: const InputDecoration(labelText: 'Time'),
          ),
        ],
      ),
    ),
  );
}
