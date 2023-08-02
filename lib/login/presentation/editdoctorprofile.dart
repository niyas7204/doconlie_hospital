import 'package:doconline_hospital/core/constants/colors.dart';
import 'package:doconline_hospital/core/response_handler/status.dart';

import 'package:doconline_hospital/login/bloc/departmet/department_bloc.dart';
import 'package:doconline_hospital/login/bloc/doctors/getdoctots_bloc.dart';

import 'package:doconline_hospital/login/data/model/doctersmodel.dart';
import 'package:doconline_hospital/login/data/repository/listofform.dart';
import 'package:doconline_hospital/login/presentation/helpers/form_validations/updatehospital.dart';
import 'package:doconline_hospital/login/presentation/widgets/common.dart';
import 'package:doconline_hospital/login/presentation/widgets/formfield.dart';
import 'package:doconline_hospital/login/presentation/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddOrEditProfile extends StatelessWidget {
  final bool isAdd;
  final Doctor? doctor;

  const AddOrEditProfile({super.key, required this.isAdd, this.doctor});

  @override
  Widget build(BuildContext context) {
    String? selectedDepartment;
    void onDepartmentChanged(String? value) {
      selectedDepartment = value;
    }

    BlocProvider.of<DepartmentBloc>(context)
        .add(const DepartmentEvent.getDepartments());
    List<String> addLabels = [
      'Name',
      'Email',
      'Qualification',
      'Fee',
      'Password',
      'About',
      'Specialization'
    ];
    List<String> editLabels = [
      'Name',
      'Email',
      'Qualification',
      'Fee',
      'About',
      'Specialization'
    ];
    List<TextEditingController> controllers;
    if (!isAdd) {
      controllers = createEditFormlist(doctor!);
    } else {
      controllers = createAddFormlist();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 101, 131, 146),
        title: Text(
          isAdd ? ' Add Doctor' : 'Edit Doctor',
          style: const TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: BlocListener<GetdoctorsBloc, GetdoctorsState>(
          listener: (context, state) {
            if (state.doctors.status == ResponseStatus.complete) {
              Navigator.pop(context);
              final snackBar = isAdd
                  ? const SnackBar(content: Text('Successfully added\ndoctor'))
                  : const SnackBar(
                      content: Text('Successfully edited\ndoctor'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              Navigator.pop(context);
            }
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Positioned(top: 10, left: 20, child: logo()),
                  space1h(),
                  ListView.separated(
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return textEditField(
                          isAdd ? addLabels[index] : editLabels[index],
                          controllers[index],
                        );
                      },
                      separatorBuilder: (context, index) => space1h(),
                      itemCount: isAdd ? addLabels.length : editLabels.length),
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
                            bool valid = validateFieldEdit(controllers,
                                isAdd ? addLabels : editLabels, context);
                            if (selectedDepartment == null) {
                              valid = false;
                              showErrordiolog(context, 'department is Empty');
                            }
                            if (valid) {
                              isAdd
                                  ? showconfirmdiolog(
                                      context,
                                      'Are you sure want to add docter',
                                      () => addDocter(context, controllers,
                                          selectedDepartment!))
                                  : showconfirmdiolog(
                                      context,
                                      'Are you sure want to edit docter',
                                      () => editDoctor(context, controllers,
                                          selectedDepartment!, doctor!.id!));
                            }
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
      ),
    );
  }
}

addDocter(
  BuildContext context,
  List<TextEditingController> controllers,
  String selectedDepartment,
) {
  BlocProvider.of<GetdoctorsBloc>(context).add(GetdoctorsEvent.addDoctor(
    name: controllers[0].text,
    email: controllers[1].text,
    qualification: controllers[2].text,
    department: selectedDepartment,
    fee: controllers[3].text,
    password: controllers[4].text,
    about: controllers[5].text,
    specialization: controllers[6].text,
  ));
}

editDoctor(BuildContext context, List<TextEditingController> controllers,
    String selectedDepartment, String id) {
  BlocProvider.of<GetdoctorsBloc>(context).add(GetdoctorsEvent.editDoctor(
    name: controllers[0].text,
    email: controllers[1].text,
    qualification: controllers[2].text,
    department: selectedDepartment,
    fee: controllers[3].text,
    about: controllers[4].text,
    specialization: controllers[5].text,
    id: id,
  ));
}
