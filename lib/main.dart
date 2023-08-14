import 'dart:developer';

import 'package:doconline_hospital/businesslogic/booking/booking_bloc.dart';
import 'package:doconline_hospital/businesslogic/dashboard/dashboard_bloc.dart';
import 'package:doconline_hospital/businesslogic/departmet/department_bloc.dart';
import 'package:doconline_hospital/businesslogic/doctors/getdoctots_bloc.dart';
import 'package:doconline_hospital/businesslogic/hospitalprofile/hospital_profile_bloc.dart';
import 'package:doconline_hospital/businesslogic/login/log_in_bloc.dart';
import 'package:doconline_hospital/businesslogic/schedule/schedule_bloc.dart';
import 'package:doconline_hospital/data/dataprovider/getbookingimpl.dart';
import 'package:doconline_hospital/data/dataprovider/getdashboard_impl.dart';
import 'package:doconline_hospital/data/dataprovider/getdepartment.dart';
import 'package:doconline_hospital/data/dataprovider/getdoctors_impl.dart';
import 'package:doconline_hospital/data/dataprovider/getschedule.dart';
import 'package:doconline_hospital/data/dataprovider/hospitalprofile.dart';
import 'package:doconline_hospital/data/dataprovider/login_impl.dart';
import 'package:doconline_hospital/presentation/dashboard.dart';

import 'package:doconline_hospital/presentation/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LogInBloc(LogInImplimentation()),
        ),
        BlocProvider(
          create: (context) => DashboardBloc(GetDashBoardImplimentation()),
        ),
        BlocProvider(
          create: (context) => GetdoctorsBloc(GetDoctorsImplimentation()),
        ),
        BlocProvider(
          create: (context) => DepartmentBloc(GetDepartmentImplimentation()),
        ),
        BlocProvider(
          create: (context) => BookingBloc(BookingImplimentation()),
        ),
        BlocProvider(
          create: (context) =>
              HospitalProfileBloc(HospitalProfileImplimentation()),
        ),
        BlocProvider(
          create: (context) => ScheduleBloc(ScheduleImplimentation()),
        ),
      ],
      child: ScreenUtilInit(
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          home: FutureBuilder<bool>(
            future: isLoggedIn(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data!) {
                  log('dash');
                  return const DashBoardPage();
                } else {
                  log('log');
                  return const LogInPage();
                }
              } else {
                log('dash else');
                return const LogInPage();
              }
            },
          ),
        ),
      ),
    );
  }

  Future<bool> isLoggedIn() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.getBool('isLoggedin') ?? false;
    bool logIn = pref.getBool('isLoggedin')!;
    return logIn;
  }
}
