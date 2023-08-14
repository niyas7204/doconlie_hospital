import 'package:doconline_hospital/businesslogic/booking/booking_bloc.dart';

import 'package:doconline_hospital/core/response_handler/status.dart';
import 'package:doconline_hospital/data/model/bookingmodel.dart';

import 'package:doconline_hospital/presentation/widgets/cards.dart';
import 'package:doconline_hospital/presentation/widgets/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingDetails extends StatelessWidget {
  const BookingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    List<Booking> bookings = [];
    int skip = 0;
    BlocProvider.of<BookingBloc>(context)
        .add(BookingEvent.getBooking(skip: skip));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 101, 131, 146),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Bookings',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(20), color: Colors.white),
            ),
          ],
        ),
      ),
      body: SafeArea(child: BlocBuilder<BookingBloc, BookingState>(
        builder: (context, state) {
          switch (state.bookings.status) {
            case ResponseStatus.error:
              return text20(ResponseStatus.error);

            case ResponseStatus.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case ResponseStatus.complete:
              for (int i = 0; i < state.bookings.data!.bookings!.length; i++) {
                bookings.add(state.bookings.data!.bookings![i]);
              }

              return Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    header1('Bookings'),
                    space1h(),
                    Expanded(
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return bookingCard(bookings[index]);
                          },
                          separatorBuilder: (context, index) => space1h(),
                          itemCount: bookings.length),
                    ),
                    Center(
                        child: TextButton(
                            onPressed: () {
                              skip += 5;
                              BlocProvider.of<BookingBloc>(context)
                                  .add(BookingEvent.getBooking(skip: skip));
                            },
                            child: text20('load more')))
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
