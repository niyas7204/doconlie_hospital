part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState(
      {required ApiResponse<DashBoardModel> dashBoardData}) = dashboardState;
 factory DashboardState.initial() =>
      DashboardState(dashBoardData: ApiResponse.loading());
}
