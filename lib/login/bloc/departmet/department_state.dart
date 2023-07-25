part of 'department_bloc.dart';

@freezed
class DepartmentState with _$DepartmentState {
  const factory DepartmentState(
      {required ApiResponse<DepartmentModel> departments}) = _DepartmentState;
  factory DepartmentState.initial() =>
      DepartmentState(departments: ApiResponse.loading());
}
