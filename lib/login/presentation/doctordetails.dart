import 'package:doconline_hospital/core/constants/colors.dart';
import 'package:doconline_hospital/login/data/model/doctersmodel.dart';
import 'package:doconline_hospital/login/presentation/editdoctorprofile.dart';
import 'package:doconline_hospital/login/presentation/widgets/logo.dart';
import 'package:flutter/material.dart';

class DoctorProfile extends StatelessWidget {
  final Doctor doctor;
  const DoctorProfile({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Profile',
          ),
        ),
        body: SingleChildScrollView(
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
                    backgroundImage: NetworkImage(doctor.image!.secureUrl!),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    doctor.name!,
                    style: const TextStyle(fontSize: 20, color: baseColor),
                  ),
                  Text(
                    doctor.qualification!,
                    style: const TextStyle(fontSize: 25, color: baseColor),
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
                        onPressed: () {},
                        child: const Text(
                          'Schedule',
                          style: TextStyle(fontSize: 25, color: baseColor),
                        )),
                  ),
                  const Divider(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Block Doctor',
                          style: TextStyle(fontSize: 25, color: baseColor),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
