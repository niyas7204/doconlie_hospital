import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doconline_hospital/core/response_handler/api_response.dart';

import 'package:doconline_hospital/login/data/model/doctersmodel.dart';
import 'package:doconline_hospital/login/data/repository/viewservices.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'getdoctots_event.dart';
part 'getdoctots_state.dart';
part 'getdoctots_bloc.freezed.dart';

class GetdoctorsBloc extends Bloc<GetdoctorsEvent, GetdoctorsState> {
  final GetDoctorService getDocters;
  GetdoctorsBloc(this.getDocters) : super(GetdoctorsState.initial()) {
    on<_getDoctors>((event, emit) async {
      final response = await getDocters.getDoctors();
      emit(response.fold((l) => state.copyWith(doctors: ApiResponse.error(l)),
          (r) => state.copyWith(doctors: ApiResponse.complete(r))));
    });
    on<_addDoctor>((event, emit) async {
      await getDocters.addDoctor(
          name: event.name,
          email: event.email,
          password: event.password,
          department: event.department,
          qualification: event.qualification,
          fee: event.fee,
          specialization: event.specialization,
          about: event.about);
      final response = await getDocters.getDoctors();
      emit(response.fold((l) => state.copyWith(doctors: ApiResponse.error(l)),
          (r) => state.copyWith(doctors: ApiResponse.complete(r))));
    });
    on<_editDoctor>((event, emit) async {
      await getDocters.editDoctor(
          name: event.name,
          email: event.email,
          password: event.password,
          department: event.department,
          qualification: event.qualification,
          fee: event.fee,
          specialization: event.specialization,
          about: event.about);
      final response = await getDocters.getDoctors();
      emit(response.fold((l) => state.copyWith(doctors: ApiResponse.error(l)),
          (r) => state.copyWith(doctors: ApiResponse.complete(r))));
    });
  }
}