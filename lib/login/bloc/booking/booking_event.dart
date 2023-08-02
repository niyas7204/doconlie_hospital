part of 'booking_bloc.dart';

@freezed
class BookingEvent with _$BookingEvent {
  const factory BookingEvent.getBooking() = _getBooking;
  const factory BookingEvent.loadmore(
      {required int present,
      required int perpage,
      required List<Booking> originallist,
      required List<Booking> loadedlist}) = _loadMore;
}
