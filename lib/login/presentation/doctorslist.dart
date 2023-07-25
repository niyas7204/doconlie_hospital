import 'package:doconline_hospital/core/response_handler/status.dart';
import 'package:doconline_hospital/login/bloc/doctors/getdoctots_bloc.dart';
import 'package:doconline_hospital/login/presentation/editdoctorprofile.dart';
import 'package:doconline_hospital/login/presentation/widgets/common.dart';
import 'package:doconline_hospital/login/presentation/widgets/docterscard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsList extends StatelessWidget {
  const DoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<GetdoctorsBloc>(context)
          .add(const GetdoctorsEvent.getDoctors());
    });

    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<GetdoctorsBloc, GetdoctorsState>(
          builder: (context, state) {
            switch (state.doctors.status) {
              case Status.error:
                return const SizedBox();
              case Status.loading:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              case Status.complete:
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Doctors',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      AddOrEditProfile(isAdd: true),
                                ));
                              },
                              child: const Text('Add Doctors'))
                        ],
                      ),
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
