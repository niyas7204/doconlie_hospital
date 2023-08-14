import 'dart:developer';
import 'package:doconline_hospital/businesslogic/doctors/getdoctots_bloc.dart';
import 'package:doconline_hospital/core/response_handler/status.dart';

import 'package:doconline_hospital/presentation/editdoctorprofile.dart';
import 'package:doconline_hospital/presentation/widgets/common.dart';
import 'package:doconline_hospital/presentation/widgets/docterscard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsList extends StatelessWidget {
  const DoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<GetdoctorsBloc>(context)
          .add(const GetdoctorsEvent.getDoctors());
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 101, 131, 146),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Doctors',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(20), color: Colors.white),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey.withOpacity(.5),
                  side: BorderSide.none,
                  shape: const StadiumBorder()),
              child: Text('Add Doctors',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: ScreenUtil().setSp(18))),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AddOrEditProfile(isAdd: true)));
              },
            )
          ],
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<GetdoctorsBloc, GetdoctorsState>(
          builder: (context, state) {
            switch (state.doctors.status) {
              case ResponseStatus.error:
                log(state.doctors.failure.toString());
                return netWorkError();
              case ResponseStatus.loading:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              case ResponseStatus.complete:
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Expanded(
                          child: ListView.separated(
                        separatorBuilder: (context, index) => space1h(),
                        itemCount: state.doctors.data!.doctors!.length,
                        itemBuilder: (context, index) => doctersCard(
                            state.doctors.data!.doctors!, index, context),
                      )),
                    ],
                  ),
                );
              default:
                return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
