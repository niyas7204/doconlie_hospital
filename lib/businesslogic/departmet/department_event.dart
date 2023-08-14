part of 'department_bloc.dart';

@freezed
class DepartmentEvent with _$DepartmentEvent {
  const factory DepartmentEvent.getDepartments() = _getDepartments;
  const factory DepartmentEvent.addDepartment({required String name}) =
      _addDepartments;
}
