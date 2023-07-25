import 'dart:io';

import 'package:dio/dio.dart';
import 'package:doconline_hospital/core/constants/url.dart';
import 'package:doconline_hospital/login/data/model/dashboardmodel.dart';
import 'package:doconline_hospital/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:doconline_hospital/login/data/repository/viewservices.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetDashBoardImplimentation implements GetDashBoardService {
  Dio dio = Dio();

  @override
  Future<Either<MainFailure, DashBoardModel>> getDashboard() async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();

    Cookie cookie = Cookie('hospitalToken', sharedPref.getString('token')!);
    String url = '$baseUrl/dashboard';
    try {
      final response = await dio.get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        final data = dashBoardModelFromJson(response.data);
        return right(data);
      } else {
        return left(const MainFailure.serverFailure(null));
      }
    } catch (e) {
      return left(const MainFailure.clientFailure());
    }
  }
}
