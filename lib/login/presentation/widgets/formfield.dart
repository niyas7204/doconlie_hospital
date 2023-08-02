import 'dart:developer';

import 'package:doconline_hospital/core/response_handler/status.dart';
import 'package:doconline_hospital/login/bloc/departmet/department_bloc.dart';
import 'package:doconline_hospital/login/data/model/hospitalprofilemodel.dart';
import 'package:doconline_hospital/login/data/repository/createdropdownlist.dart';
import 'package:doconline_hospital/login/presentation/widgets/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget textEditField(
  String label,
  TextEditingController controller,
) {
  bool obscure = label == 'Password';
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      labelText(label),
      TextFormField(
        obscureText: obscure,
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    ],
  );
}

hospialEditField(
  String label,
  TextEditingController controller,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      labelText(label),
      TextFormField(
        controller: controller,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    ],
  );
}

dropDownButton(
  String label,
  Function(String?) onChanged,
  String? currentdepartment,
) {
  return BlocBuilder<DepartmentBloc, DepartmentState>(
    builder: (context, state) {
      switch (state.departments.status) {
        case ResponseStatus.error:
          return const SizedBox();
        case ResponseStatus.loading:
          return const Center(
            child: CircularProgressIndicator(),
          );
        case ResponseStatus.complete:
          if (currentdepartment != null) {
            log('if');
            for (var department in state.departments.data!.departments!) {
              log('for');
              if (department.name == currentdepartment) {
                log('check');
                log('dep ${department.name}');
                onChanged(department.id);
              }
            }
          }
          final list =
              creatDepartmentDropDown(state.departments.data!.departments!);

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              labelText(label),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                  borderRadius: BorderRadius.circular(10),
                  items: list.map((item) {
                    return DropdownMenuItem(
                      value: item['value'].toString(),
                      child: Text(item['display'].toString()),
                    );
                  }).toList(),
                  value: currentdepartment,
                  onChanged: onChanged,
                ),
              ),
            ],
          );
        default:
          return const SizedBox();
      }
    },
  );
}
