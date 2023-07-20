import 'package:doconline_hospital/logIn/bloc/login/log_in_bloc.dart';
import 'package:doconline_hospital/logIn/data/dataprovider/login_impl.dart';
import 'package:doconline_hospital/logIn/presentation/home.dart';
import 'package:doconline_hospital/logIn/presentation/login_page.dart';
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
                  return const HomePage();
                } else {
                  return const LogInPage();
                }
              } else {
                return LogInPage();
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
