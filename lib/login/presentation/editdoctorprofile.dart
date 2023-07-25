import 'dart:developer';

import 'package:doconline_hospital/login/bloc/departmet/department_bloc.dart';
import 'package:doconline_hospital/login/bloc/doctors/getdoctots_bloc.dart';
import 'package:doconline_hospital/login/data/model/doctersmodel.dart';
import 'package:doconline_hospital/login/data/repository/listofform.dart';
import 'package:doconline_hospital/login/presentation/widgets/common.dart';
import 'package:doconline_hospital/login/presentation/widgets/formfield.dart';
import 'package:doconline_hospital/login/presentation/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddOrEditProfile extends StatelessWidget {
  final bool isAdd;
  final Doctor? doctor;
  String? selectedDepartment;
  AddOrEditProfile({super.key, required this.isAdd, this.doctor});

  void onDepartmentChanged(String? value) {
    selectedDepartment = value;
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<DepartmentBloc>(context)
        .add(const DepartmentEvent.getDepartments());
    List<String> labels = [
      'Name',
      'Email',
      'Qualification',
      'Fee',
      'Password',
      'about',
      'Specialization'
    ];
    List<TextEditingController> controllers;
    if (!isAdd) {
      controllers = createEditFormlist(doctor!);
    } else {
      controllers = createAddFormlist();
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Positioned(top: 10, left: 20, child: logo()),
                space1h(),
                Center(
                  child: isAdd
                      ? header1('Add Doctor')
                      : header1('Edit Doctor Profile'),
                ),
                ListView.separated(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return textEditField(
                        labels[index],
                        controllers[index],
                      );
                    },
                    separatorBuilder: (context, index) => space1h(),
                    itemCount: labels.length),
                space1h(),
                dropDownButton("Department", onDepartmentChanged,
                    isAdd ? null : doctor!.department),
                space1h(),
                Center(
                  child: SizedBox(
                    height: 50,
                    width: 150,
                    child: ElevatedButton(
                        onPressed: () {
                          isAdd
                              ? BlocProvider.of<GetdoctorsBloc>(context)
                                  .add(GetdoctorsEvent.addDoctor(
                                  name: controllers[0].text,
                                  email: controllers[1].text,
                                  qualification: controllers[2].text,
                                  department: selectedDepartment!,
                                  fee: controllers[4].text,
                                  password: controllers[5].text,
                                  about: controllers[6].text,
                                  specialization: controllers[7].text,
                                ))
                              : BlocProvider.of<GetdoctorsBloc>(context)
                                  .add(GetdoctorsEvent.editDoctor(
                                  name: controllers[0].text,
                                  email: controllers[1].text,
                                  qualification: controllers[2].text,
                                  department: selectedDepartment!,
                                  fee: controllers[4].text,
                                  password: controllers[5].text,
                                  about: controllers[6].text,
                                  specialization: controllers[7].text,
                                ));
                        },
                        child: Text(
                          isAdd ? 'ADD' : 'UPDATE',
                          style: const TextStyle(fontSize: 25),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
