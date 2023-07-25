part of 'booking_bloc.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState({required ApiResponse<BookingModel> bookings}) =
      _BookingState;
  factory BookingState.initial() =>
      BookingState(bookings: ApiResponse.loading());
}
