import 'dart:developer';

import 'package:doconline_hospital/core/constants/colors.dart';
import 'package:doconline_hospital/core/helpers/common.dart';
import 'package:doconline_hospital/login/bloc/departmet/department_bloc.dart';
import 'package:doconline_hospital/login/presentation/widgets/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<dynamic> addDepartmentshowdiologue(BuildContext context) {
  TextEditingController nameController = TextEditingController();
  return showDialog(
      context: context,
      builder: (context) => AlertDialog(
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: header1('Add Department'),
                ),
                space1h(),
                labelText('Department Name.'),
                space1h(),
                textField('name', nameController)
              ],
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 101, 131, 146)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Close')),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 101, 131, 146)),
                      onPressed: () {
                        if (nameController.text.isNotEmpty) {
                          showconfirmdiolog(
                              context,
                              'Are you sure want to add department ?',
                              () =>
                                  addDepartment(context, nameController.text));
                        } else {
                          showErrordiolog(context, 'Field should be complete');
                        }
                      },
                      child: const Text('Add'))
                ],
              )
            ],
          ));
}

addDepartment(BuildContext context, String name) {
  name = capitalizeString(name);
  log('name $name');
  BlocProvider.of<DepartmentBloc>(context)
      .add(DepartmentEvent.addDepartment(name: name));
}
