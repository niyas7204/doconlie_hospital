import 'dart:developer';

import 'package:doconline_hospital/core/constants/colors.dart';

import 'package:doconline_hospital/core/response_handler/status.dart';

import 'package:doconline_hospital/login/bloc/login/log_in_bloc.dart';
import 'package:doconline_hospital/login/presentation/dashboard.dart';

import 'package:doconline_hospital/login/presentation/widgets/common.dart';
import 'package:doconline_hospital/login/presentation/widgets/logo.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: BlocListener<LogInBloc, LogInState>(
            listener: (context, state) {
              if (state.logresponse!.status == ResponseStatus.complete) {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const DashBoardPage(),
                ));
              }
            },
            child: Stack(
              children: [
                Positioned(
                  left: 16.0,
                  child: logo(),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      header1('Login'),
                      space1h(),
                      textField('Username', emailcontroller),
                      space1h(),
                      textField('Password', passwordcontroller),
                      TextButton(
                          onPressed: () async {},
                          child: const Text(
                            "Forgot password",
                            style: TextStyle(color: Colors.blue),
                          )),
                      SizedBox(
                        width: 160.w,
                        height: 35.h,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: baseColor,
                          ),
                          onPressed: () {
                            onPress(context, emailcontroller.text,
                                passwordcontroller.text);
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        ),
                      ),
                      space1h(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account?"),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Create New',
                                style: TextStyle(color: Colors.blue),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

Future onPress(BuildContext pagecontext, String email, String password) async {
  log('on');

  if (email.isNotEmpty && password.isNotEmpty) {
    log('on press');
    BlocProvider.of<LogInBloc>(pagecontext)
        .add(LogInEvent.getLogin(email: email, password: password));
  } else {
    showErrordiolog(pagecontext, 'fields mustnot be empty');
  }
}
