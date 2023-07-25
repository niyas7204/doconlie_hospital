import 'dart:developer';

import 'package:doconline_hospital/login/data/model/departmentmodel.dart';

List<Map<String, String>> creatDepartmentDropDown(
    List<Department> departmentList) {
  log('abcd');
  List<Map<String, String>> dropDowlist = [];
  for (int i = 0; i < departmentList.length; i++) {
    var newValue = {
      'value': departmentList[i].id!,
      'display': departmentList[i].name!,
    };
    dropDowlist.add(newValue);
    log(newValue.toString());
  }
  log(dropDowlist.toString());
  return dropDowlist;
}
