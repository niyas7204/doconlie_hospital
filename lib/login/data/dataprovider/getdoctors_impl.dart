import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:doconline_hospital/core/constants/url.dart';
import 'package:doconline_hospital/login/data/model/doctersmodel.dart';
import 'package:doconline_hospital/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:doconline_hospital/login/data/repository/viewservices.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetDoctorsImplimentation implements GetDoctorService {
  Dio dio = Dio();
  @override
  Future<Either<MainFailure, DoctorsModel>> getDoctors() async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    Cookie cookie = Cookie('hospitalToken', sharedPref.getString('token')!);
    String url = '$baseUrl/doctors';
    try {
      final response = await dio.get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        final data = doctorsModelFromJson(response.data);
        return right(data);
      } else {
        return left(const MainFailure.serverFailure(null));
      }
    } catch (e) {
      log('error :$e');
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, bool>> addDoctor(
      {required String name,
      required String email,
      required String password,
      required String department,
      required String qualification,
      required String fee,
      required String specialization,
      required String about}) async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    Cookie cookie = Cookie('hospitalToken', sharedPref.getString('token')!);
    String url = '$baseUrl/doctor';
    final requestBody = {
      'email': email,
      'password': password,
      'name': name,
      'department': department,
      'qualification': qualification,
      'specialization': specialization,
      'fees': fee,
      'about': about,
    };
    try {
      final response = await dio.post(url,
          data: requestBody,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));
      log('rsp $response');
      if (!response.data['err']) {
        return right(!response.data['err']);
      } else {
        log('failure');
        return left(const MainFailure.serverFailure(null));
      }
    } catch (e) {
      log('error add:$e');
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, bool>> editDoctor(
      {required String name,
      required String email,
      required String password,
      required String department,
      required String qualification,
      required String fee,
      required String specialization,
      required String about}) async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    Cookie cookie = Cookie('hospitalToken', sharedPref.getString('token')!);
    String url = '$baseUrl/doctor';
    final requestBody = {
      'email': email,
      'password': password,
      'name': name,
      'department': department,
      'qualification': qualification,
      'specialization': specialization,
      'fees': fee,
      'about': about,
    };
    try {
      final response = await dio.patch(url,
          data: requestBody,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));
      log('rsp $response');
      if (!response.data['err']) {
        return right(!response.data['err']);
      } else {
        log('failure');
        return left(const MainFailure.serverFailure(null));
      }
    } catch (e) {
      log('error add:$e');
      return left(const MainFailure.clientFailure());
    }
  }
}
