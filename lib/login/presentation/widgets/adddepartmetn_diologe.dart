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
              mainAxisSize: MainAxisSize.min,
              children: [
                header1('Add Department'),
                labelText('DepartmentName'),
                textField('name', nameController)
              ],
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Close')),
                  ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<DepartmentBloc>(context).add(
                            DepartmentEvent.addDepartment(
                                name: nameController.text));
                      },
                      child: const Text('Add'))
                ],
              )
            ],
          ));
}
