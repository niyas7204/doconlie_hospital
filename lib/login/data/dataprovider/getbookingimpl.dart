import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:doconline_hospital/core/constants/url.dart';
import 'package:doconline_hospital/login/data/model/bookingmodel.dart';
import 'package:doconline_hospital/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:doconline_hospital/login/data/repository/viewservices.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BookingImplimentation implements GetBookingService {
  Dio dio = Dio();
  @override
  Future<Either<MainFailure, BookingModel>> getBooking() async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();

    Cookie cookie = Cookie('hospitalToken', sharedPref.getString('token')!);
    String url = '$baseUrl/booking';
    try {
      final response = await dio.get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        final data = bookingModelFromJson(response.data);
        return right(data);
      } else {
        log('serner');
        return left(const MainFailure.serverFailure(null));
      }
    } catch (e) {
      log('error b:$e');
      return left(const MainFailure.clientFailure());
    }
  }
}
