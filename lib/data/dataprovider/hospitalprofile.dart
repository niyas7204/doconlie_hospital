import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:doconline_hospital/core/constants/url.dart';
import 'package:doconline_hospital/core/failure/failure.dart';

import 'package:doconline_hospital/data/model/hospitalprofilemodel.dart';
import 'package:doconline_hospital/data/repository/viewservices.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HospitalProfileImplimentation implements GetHospitalProfile {
  Dio dio = Dio();
  @override
  Future<Either<MainFailure, HospitalProfileModel>> getHospital() async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();

    Cookie cookie = Cookie('hospitalToken', sharedPref.getString('token')!);
    String url = '$baseUrl/profile';

    try {
      final response = await dio.get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        final data = hospitalProfileModelFromJson(response.data);
        return right(data);
      } else {
        return left(const MainFailure.serverFailure(null));
      }
    } catch (e) {
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, HospitalProfileModel>> editHospital({
    required String name,
    required String about,
    required String address,
    required String place,
    required String mobile,
  }) async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();

    Cookie cookie = Cookie('hospitalToken', sharedPref.getString('token')!);
    String url = '$baseUrl/profile';
    final requestBody = {
      'name': name,
      'about': about,
      'address': address,
      'place': place,
      'mobile': mobile
    };
    try {
      final response = await dio.patch(url,
          data: requestBody,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));
      log(response.toString());
      if (!response.data['err']) {
        final data = hospitalProfileModelFromJson(response.data);

        return right(data);
      } else {
        return left(const MainFailure.serverFailure(null));
      }
    } catch (e) {
      log('error:$e');
      return left(const MainFailure.clientFailure());
    }
  }
}
