import 'dart:developer';

import 'package:doconline_hospital/core/response_handler/api_response.dart';
import 'package:doconline_hospital/login/data/model/bookingmodel.dart';
import 'package:doconline_hospital/login/data/repository/viewservices.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_event.dart';
part 'booking_state.dart';
part 'booking_bloc.freezed.dart';

class BookingBloc extends Bloc<BookingEvent, BookingState> {
  final GetBookingService bookingService;
  BookingBloc(this.bookingService) : super(BookingState.initial()) {
    on<_getBooking>((event, emit) async {
      final response = await bookingService.getBooking();

      emit(response.fold((l) => state.copyWith(bookings: ApiResponse.error(l)),
          (r) {
        add(_$_loadMore(
            present: 0, perpage: 5, originallist: r.bookings!, loadedlist: []));
        return state.copyWith(bookings: ApiResponse.complete(r));
      }));
    });
    on<_loadMore>((event, emit) {
      log('hello');
      try {
        final result = bookingService.loadMore(
            present: event.present,
            perpage: event.perpage,
            origianlist: event.originallist,
            loadedList: event.loadedlist);
        log('hhhhhh${result.toString()}');
        final updatedViewBooking = result;
        emit(state.copyWith(
            viewBooking: updatedViewBooking,
            present: event.perpage + event.perpage));
      } catch (e) {
        log('error$e');
      }
    });
  }
}
