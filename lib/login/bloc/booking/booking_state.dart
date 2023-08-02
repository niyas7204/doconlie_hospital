part of 'booking_bloc.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState(
      {required ApiResponse<BookingModel> bookings,
      required List<Booking> viewBooking,
      required int present,
      required int perpage}) = _BookingState;
  factory BookingState.initial() => BookingState(
        viewBooking: [],
        present: 0,
        perpage: 5,
        bookings: ApiResponse.loading(),
      );
}
