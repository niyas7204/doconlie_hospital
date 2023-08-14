import 'package:doconline_hospital/core/response_handler/api_response.dart';
import 'package:doconline_hospital/data/model/dashboardmodel.dart';
import 'package:doconline_hospital/data/repository/viewservices.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final GetDashBoardService dashBoardService;
  DashboardBloc(this.dashBoardService) : super(DashboardState.initial()) {
    on<DashboardEvent>((event, emit) async {
      final response = await dashBoardService.getDashboard();
      emit(response.fold(
          (l) => state.copyWith(dashBoardData: ApiResponse.error(l)),
          (r) => state.copyWith(dashBoardData: ApiResponse.complete(r))));
    });
  }
}
