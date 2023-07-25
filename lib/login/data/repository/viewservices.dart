import 'package:dartz/dartz.dart';
import 'package:doconline_hospital/core/failure/failure.dart';
import 'package:doconline_hospital/login/data/model/bookingmodel.dart';
import 'package:doconline_hospital/login/data/model/dashboardmodel.dart';
import 'package:doconline_hospital/login/data/model/departmentmodel.dart';
import 'package:doconline_hospital/login/data/model/doctersmodel.dart';
import 'package:doconline_hospital/login/data/model/hospitalprofilemodel.dart';
import 'package:image_picker/image_picker.dart';

abstract class GetDoctorService {
  Future<Either<MainFailure, DoctorsModel>> getDoctors();
  Future<Either<MainFailure, bool>> addDoctor({
    required String name,
    required String email,
    required String password,
    required String department,
    required String qualification,
    required String fee,
    required String specialization,
    required String about,
  });
  Future<Either<MainFailure, bool>> editDoctor({
    required String name,
    required String email,
    required String password,
    required String department,
    required String qualification,
    required String fee,
    required String specialization,
    required String about,
  });
}

abstract class GetDashBoardService {
  Future<Either<MainFailure, DashBoardModel>> getDashboard();
}

abstract class GetDepartmentService {
  Future<Either<MainFailure, DepartmentModel>> getDepartment();
  Future<Either<MainFailure, bool>> addDepartment({required String name});
}

abstract class GetBookingService {
  Future<Either<MainFailure, BookingModel>> getBooking();
}

abstract class GetHospitalProfile {
  Future<Either<MainFailure, HospitalProfileModel>> getHospital();
  Future<Either<MainFailure, HospitalProfileModel>> editHospital({
    required String name,
    required String about,
    required String address,
    required String place,
    required String mobile,
  });
}
