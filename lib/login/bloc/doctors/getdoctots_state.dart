part of 'getdoctots_bloc.dart';

@freezed
class GetdoctorsState with _$GetdoctorsState {
  const factory GetdoctorsState({required ApiResponse<DoctorsModel> doctors}) =
      _GetdoctorsState;
  factory GetdoctorsState.initial() =>
      GetdoctorsState(doctors: ApiResponse.loading());
}
