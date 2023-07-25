part of 'log_in_bloc.dart';

@freezed
class LogInState with _$LogInState {
  const factory LogInState({required ApiResponse<bool>? logresponse}) =
      loginstate;
  factory LogInState.initial() => const loginstate(logresponse: null);
}
