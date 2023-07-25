part of 'getdoctots_bloc.dart';

@freezed
class GetdoctorsEvent with _$GetdoctorsEvent {
  const factory GetdoctorsEvent.getDoctors() = _getDoctors;
  const factory GetdoctorsEvent.addDoctor({
    required String name,
    required String email,
    required String password,
    required String department,
    required String qualification,
    required String fee,
    required String specialization,
    required String about,
  }) = _addDoctor;
  const factory GetdoctorsEvent.editDoctor({
    required String name,
    required String email,
    required String password,
    required String department,
    required String qualification,
    required String fee,
    required String specialization,
    required String about,
  }) = _editDoctor;
}
