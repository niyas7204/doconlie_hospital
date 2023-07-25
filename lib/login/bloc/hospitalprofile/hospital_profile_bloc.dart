import 'package:doconline_hospital/core/response_handler/api_response.dart';
import 'package:doconline_hospital/login/data/model/hospitalprofilemodel.dart';
import 'package:doconline_hospital/login/data/repository/viewservices.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'hospital_profile_event.dart';
part 'hospital_profile_state.dart';
part 'hospital_profile_bloc.freezed.dart';

class HospitalProfileBloc
    extends Bloc<HospitalProfileEvent, HospitalProfileState> {
  final GetHospitalProfile hospitalProfile;
  HospitalProfileBloc(this.hospitalProfile)
      : super(HospitalProfileState.initial()) {
    on<_getHospitalProfile>((event, emit) async {
      final response = await hospitalProfile.getHospital();
      emit(response.fold((l) => state.copyWith(profile: ApiResponse.error(l)),
          (r) => state.copyWith(profile: ApiResponse.complete(r))));
    });
    on<_editHospitalProfile>((event, emit) async {
      final response = await hospitalProfile.editHospital(
          name: event.name,
          about: event.about,
          address: event.address,
          place: event.place,
          mobile: event.mobile);
      emit(response.fold((l) => state.copyWith(profile: ApiResponse.error(l)),
          (r) => state.copyWith(profile: ApiResponse.complete(r))));
    });
  }
}
