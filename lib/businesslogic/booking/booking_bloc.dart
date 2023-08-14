import 'dart:developer';

import 'package:doconline_hospital/core/response_handler/api_response.dart';
import 'package:doconline_hospital/data/model/bookingmodel.dart';
import 'package:doconline_hospital/data/repository/viewservices.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_event.dart';
part 'booking_state.dart';
part 'booking_bloc.freezed.dart';

class BookingBloc extends Bloc<BookingEvent, BookingState> {
  final GetBookingService bookingService;
  BookingBloc(this.bookingService) : super(BookingState.initial()) {
    List<Booking> booking = state.viewBooking;
    on<_getBooking>((event, emit) async {
      emit(state.copyWith(bookings: ApiResponse.loading()));
      final response = await bookingService.getBooking(skip: event.skip);

      emit(response.fold((l) => state.copyWith(bookings: ApiResponse.error(l)),
          (r) {
        return state.copyWith(
            viewBooking: booking, bookings: ApiResponse.complete(r));
      }));
    });
  }
}
