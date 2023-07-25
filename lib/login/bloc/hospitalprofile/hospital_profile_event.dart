part of 'hospital_profile_bloc.dart';

@freezed
class HospitalProfileEvent with _$HospitalProfileEvent {
  const factory HospitalProfileEvent.getHospitalProfile() = _getHospitalProfile;
  const factory HospitalProfileEvent.editHospitalProfile({
    required XFile imageFile,
    required String name,
    required String about,
    required String address,
    required String place,
    required String mobile,
  }) = _editHospitalProfile;
}
