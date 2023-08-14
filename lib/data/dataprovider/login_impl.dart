import 'dart:developer';

import 'package:doconline_hospital/core/constants/url.dart';
import 'package:doconline_hospital/core/failure/failure.dart';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:doconline_hospital/data/repository/login.dart';
import 'package:doconline_hospital/data/repository/sharedpreference.dart';

class LogInImplimentation implements LogInService {
  @override
  Future<Either<MainFailure, bool>> logIn(
      {required String email, required String password}) async {
    const url = '$authbaseUlr/login';
    final requestBody = {'email': email, 'password': password};
    try {
      log('try');
      final response = await Dio().post(url, data: requestBody);
      log('call');
      log(response.toString());
      if (!response.data['err']) {
        String headerString = response.headers['set-cookie'].toString();
        final togenRegExp = RegExp(r'(?<=hospitalToken=)[^;]+');
        final match = togenRegExp.firstMatch(headerString);
        final token = match!.group(0);
        log(token.toString());
        updateSharedPreference(token!, true);
        return right(true);
      } else {
        return left(MainFailure.serverFailure(response.data['message']));
      }
    } catch (e) {
      log('error  $e');
      return left(const MainFailure.clientFailure());
    }
  }
}
