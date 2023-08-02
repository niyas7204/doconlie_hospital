import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:doconline_hospital/core/constants/url.dart';
import 'package:doconline_hospital/login/data/model/departmentmodel.dart';
import 'package:doconline_hospital/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:doconline_hospital/login/data/repository/viewservices.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetDepartmentImplimentation implements GetDepartmentService {
  Dio dio = Dio();
  @override
  Future<Either<MainFailure, DepartmentModel>> getDepartment() async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    Cookie cookie = Cookie('hospitalToken', sharedPref.getString('token')!);
    String url = '$baseUrl/departments';

    try {
      final response = await dio.get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        final data = departmetModelFromJson(response.data);
        return right(data);
      } else {
        return left(const MainFailure.serverFailure(null));
      }
    } catch (e) {
      log('error dep:$e');
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, bool>> addDepartment(
      {required String name}) async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    Cookie cookie = Cookie('hospitalToken', sharedPref.getString('token')!);
    String url = '$baseUrl/department';
    final requestBody = {'department': name};

    try {
      final response = await dio.post(url,
          data: requestBody,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        return right(!response.data['err']);
      } else {
        return left(const MainFailure.serverFailure(null));
      }
    } catch (e) {
      log('error dep:$e');
      return left(const MainFailure.clientFailure());
    }
  }
}
