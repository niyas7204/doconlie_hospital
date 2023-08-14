part of 'booking_bloc.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState({
    required ApiResponse<BookingModel> bookings,
    required List<Booking> viewBooking,
  }) = _BookingState;
  factory BookingState.initial() => BookingState(
        viewBooking: [],
        bookings: ApiResponse.initial(),
      );
}
