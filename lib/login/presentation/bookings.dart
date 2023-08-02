import 'dart:developer';

import 'package:doconline_hospital/core/response_handler/api_response.dart';
import 'package:doconline_hospital/core/response_handler/status.dart';
import 'package:doconline_hospital/login/bloc/booking/booking_bloc.dart';
import 'package:doconline_hospital/login/presentation/widgets/cards.dart';
import 'package:doconline_hospital/login/presentation/widgets/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingDetails extends StatelessWidget {
  const BookingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<BookingBloc>(context).add(const BookingEvent.getBooking());
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
                            return bookingCard(state.viewBooking[index]);
                          },
                          separatorBuilder: (context, index) => space1h(),
                          itemCount: state.viewBooking.length),
                    ),
                    Center(
                        child: TextButton(
                            onPressed: () {
                              if (state.viewBooking.length <=
                                  state.bookings.data!.bookings!.length) {
                                BlocProvider.of<BookingBloc>(context).add(
                                    BookingEvent.loadmore(
                                        present: state.present,
                                        perpage: state.perpage,
                                        originallist:
                                            state.bookings.data!.bookings!,
                                        loadedlist: state.viewBooking));
                              } else {
                                final snackBar = SnackBar(
                                    backgroundColor: const Color.fromARGB(
                                        255, 101, 131, 146),
                                    content: text20('no more data'));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              }
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
