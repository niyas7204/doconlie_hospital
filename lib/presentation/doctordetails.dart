import 'package:doconline_hospital/businesslogic/doctors/getdoctots_bloc.dart';
import 'package:doconline_hospital/core/constants/colors.dart';
import 'package:doconline_hospital/core/response_handler/status.dart';

import 'package:doconline_hospital/data/model/doctersmodel.dart';
import 'package:doconline_hospital/presentation/doctorschedule.dart';
import 'package:doconline_hospital/presentation/editdoctorprofile.dart';
import 'package:doconline_hospital/presentation/widgets/common.dart';
import 'package:doconline_hospital/presentation/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorProfile extends StatelessWidget {
  final int index;
  const DoctorProfile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetdoctorsBloc, GetdoctorsState>(
      builder: (context, state) {
        final doctor = state.doctors.data!.doctors![index];
        bool status = doctor.block!;
        return Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 101, 131, 146),
              title: const Text(
                'Profile',
              ),
            ),
            body: BlocListener<GetdoctorsBloc, GetdoctorsState>(
              listener: (context, state) {
                if (state.doctors.status == ResponseStatus.complete) {
                  status = state.doctors.data!.doctors![index].block!;
                  Navigator.pop(context);
                }
              },
              child: SingleChildScrollView(
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: logo(),
                        ),
                        CircleAvatar(
                          radius: 70,
                          backgroundImage:
                              NetworkImage(doctor.image!.secureUrl!),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          doctor.name!,
                          style:
                              const TextStyle(fontSize: 20, color: baseColor),
                        ),
                        Text(
                          doctor.qualification!,
                          style:
                              const TextStyle(fontSize: 25, color: baseColor),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AddOrEditProfile(
                                  isAdd: false,
                                  doctor: doctor,
                                ),
                              ));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: baseColor,
                                side: BorderSide.none,
                                shape: const StadiumBorder()),
                            child: const Text('EditProfile',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        const Divider(),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => DoctorSchedule(
                                    id: doctor.id!,
                                  ),
                                ));
                              },
                              child: const Text(
                                'Schedule',
                                style:
                                    TextStyle(fontSize: 25, color: baseColor),
                              )),
                        ),
                        const Divider(),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                              onPressed: () {
                                showconfirmdiolog(
                                    context,
                                    status
                                        ? 'Do you want to unbloc'
                                        : 'Do you want to bloc',
                                    () => status
                                        ? unblockDoctor(context, doctor.id!)
                                        : blockDoctor(context, doctor.id!));
                              },
                              child: Text(
                                status ? 'unblock' : 'Block',
                                style: const TextStyle(
                                    fontSize: 25, color: baseColor),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
      },
    );
  }
}

blockDoctor(BuildContext context, String id) {
  BlocProvider.of<GetdoctorsBloc>(context)
      .add(GetdoctorsEvent.blockDoctor(id: id));
}

unblockDoctor(BuildContext context, String id) {
  BlocProvider.of<GetdoctorsBloc>(context)
      .add(GetdoctorsEvent.unblockDoctor(id: id));
}
