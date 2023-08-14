import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:doconline_hospital/core/constants/url.dart';
import 'package:doconline_hospital/data/model/schedulemodel.dart';
import 'package:doconline_hospital/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:doconline_hospital/data/repository/viewservices.dart';
import 'package:doconline_hospital/presentation/widgets/common.dart';

import 'package:shared_preferences/shared_preferences.dart';

class ScheduleImplimentation implements ScheduleService {
  @override
  Future<Either<MainFailure, ScheduleModel>> getSchedule(
      {required String id}) async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();

    Cookie cookie = Cookie('hospitalToken', sharedPref.getString('token')!);
    final url = '$baseUrl/doctor/schedule/$id';
    try {
      final response = await Dio().get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        final data = scheduleModelFromJson(response.data);

        return right(data);
      } else {
        return left(const MainFailure.serverFailure(null));
      }
    } catch (e) {
      log('error b:$e');
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, bool>> addSchedule(
      {required String id,
      required Schedule currentTime,
      required Fri newTime,
      required String day}) async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();

    Cookie cookie = Cookie('hospitalToken', sharedPref.getString('token')!);
    const url = '$baseUrl/doctor/schedule';
    dynamic requestBody;
    Schedule updatedSchedule = Schedule(
      mon: currentTime.mon,
      tue: currentTime.tue,
      wed: currentTime.wed,
      thu: currentTime.thu,
      fri: currentTime.fri,
      sat: currentTime.sat,
      sun: currentTime.sun,
    );
    switch (day) {
      case 'Monday':
        updatedSchedule.mon!.add(newTime);

        break;
      case 'Tuesday':
        currentTime.tue!.add(newTime);
        break;
      case 'Wednusday':
        currentTime.wed!.add(newTime);
        break;
      case 'Thursday':
        currentTime.thu!.add(newTime);
        break;
      case 'Friday':
        currentTime.fri!.add(newTime);
        break;
      case 'Saturday':
        currentTime.sat!.add(newTime);
        break;
      case 'Sunday':
        currentTime.sun!.add(newTime);
        break;
    }

    requestBody = {
      'doctorId': id,
      'mon': updatedSchedule.mon,
      'tue': updatedSchedule.tue,
      'wed': updatedSchedule.wed,
      'thu': updatedSchedule.thu,
      'fri': updatedSchedule.fri,
      'sat': updatedSchedule.sat,
      'sun': updatedSchedule.sun,
    };
    try {
      final response = await Dio().patch(url,
          data: requestBody,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (response.data['err']) {
        log('err');
        return left(const MainFailure.serverFailure(null));
      } else {
        log('succes');
        bool a = response.data['err'];
        return right(a);
      }
    } catch (e) {
      log('add error $e');
      return left(const MainFailure.clientFailure());
    }
  }
}
