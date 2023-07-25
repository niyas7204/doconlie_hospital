import 'package:doconline_hospital/core/response_handler/api_response.dart';
import 'package:doconline_hospital/login/data/model/departmentmodel.dart';
import 'package:doconline_hospital/login/data/repository/viewservices.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'department_event.dart';
part 'department_state.dart';
part 'department_bloc.freezed.dart';

class DepartmentBloc extends Bloc<DepartmentEvent, DepartmentState> {
  final GetDepartmentService departmentService;
  DepartmentBloc(this.departmentService) : super(DepartmentState.initial()) {
    on<_getDepartments>((event, emit) async {
      final response = await departmentService.getDepartment();
      emit(response.fold(
          (l) => state.copyWith(departments: ApiResponse.error(l)),
          (r) => state.copyWith(departments: ApiResponse.complete(r))));
    });
    on<_addDepartments>((event, emit) async {
      await departmentService.addDepartment(name: event.name);
      final response = await departmentService.getDepartment();
      emit(response.fold(
          (l) => state.copyWith(departments: ApiResponse.error(l)),
          (r) => state.copyWith(departments: ApiResponse.complete(r))));
    });
  }
}
