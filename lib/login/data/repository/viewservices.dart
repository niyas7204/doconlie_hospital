import 'package:dartz/dartz.dart';
import 'package:doconline_hospital/core/failure/failure.dart';
import 'package:doconline_hospital/login/data/model/bookingmodel.dart'
    as viewBokkings;
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
    required String department,
    required String qualification,
    required String fee,
    required String specialization,
    required String about,
    required String id,
  });
  Future<Either<MainFailure, bool>> blockDoctor({required String id});
  Future<Either<MainFailure, bool>> unblockDoctor({required String id});
}

abstract class GetDashBoardService {
  Future<Either<MainFailure, DashBoardModel>> getDashboard();
}

abstract class GetDepartmentService {
  Future<Either<MainFailure, DepartmentModel>> getDepartment();
  Future<Either<MainFailure, bool>> addDepartment({required String name});
}

abstract class GetBookingService {
  Future<Either<MainFailure, viewBokkings.BookingModel>> getBooking();
  List<viewBokkings.Booking> loadMore(
      {required int present,
      required int perpage,
      required List<viewBokkings.Booking> origianlist,
      required List<viewBokkings.Booking> loadedList});
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
