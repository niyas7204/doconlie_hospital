import 'package:doconline_hospital/core/response_handler/status.dart';
import 'package:doconline_hospital/login/bloc/booking/booking_bloc.dart';
import 'package:doconline_hospital/login/presentation/widgets/cards.dart';
import 'package:doconline_hospital/login/presentation/widgets/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookingDetails extends StatelessWidget {
  const BookingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<BookingBloc>(context).add(const BookingEvent.getBooking());
    return Scaffold(
      body: SafeArea(child: BlocBuilder<BookingBloc, BookingState>(
        builder: (context, state) {
          switch (state.bookings.status) {
            case Status.error:
              return const SizedBox();
            case Status.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case Status.complete:
              return Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    header1('Bookings'),
                    space1h(),
                    Expanded(
                      child: ListView.separated(
                          itemBuilder: (context, index) => bookingCard(
                              state.bookings.data!.bookings![index]),
                          separatorBuilder: (context, index) => space1h(),
                          itemCount: state.bookings.data!.bookings!.length),
                    ),
                  ],
                ),
              );
            default:
              return const SizedBox();
          }
        },
      )),
    );
  }
}
