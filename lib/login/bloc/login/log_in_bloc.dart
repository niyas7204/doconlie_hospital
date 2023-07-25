import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doconline_hospital/core/response_handler/api_response.dart';
import 'package:doconline_hospital/login/data/repository/login.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_in_event.dart';
part 'log_in_state.dart';
part 'log_in_bloc.freezed.dart';

class LogInBloc extends Bloc<LogInEvent, LogInState> {
  final LogInService logInService;
  LogInBloc(this.logInService) : super(LogInState.initial()) {
    on<_getLogin>((event, emit) async {
      final response = await logInService.logIn(
          email: event.email, password: event.password);
      emit(response.fold(
          (l) => state.copyWith(logresponse: ApiResponse.error(l)),
          (r) => state.copyWith(logresponse: ApiResponse.complete(r))));
    });
  }
}
