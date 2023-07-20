import 'package:dartz/dartz.dart';
import 'package:doconline_hospital/core/failure/failure.dart';

abstract class LogInService {
  Future<Either<MainFailure, bool>> logIn(
      {required String email, required String password});
}
