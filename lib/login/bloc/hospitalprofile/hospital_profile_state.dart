part of 'hospital_profile_bloc.dart';

@freezed
class HospitalProfileState with _$HospitalProfileState {
  const factory HospitalProfileState(
          {required ApiResponse<HospitalProfileModel> profile}) =
      _HospitalProfileState;

  factory HospitalProfileState.initial() =>
      HospitalProfileState(profile: ApiResponse.loading());
}
