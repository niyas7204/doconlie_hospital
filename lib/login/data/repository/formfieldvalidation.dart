import 'package:flutter/material.dart';

validateDoctorField(
  List<TextEditingController> controllers,
  String? department,
  BuildContext context,
) {
  late bool valid;
  for (int i = 0; i < controllers.length; i++) {
    if (controllers[i].text.isNotEmpty) {
      valid = true;
    } else {
      valid = false;
      break;
    }
  }
  if (valid && department != null) {
    valid = true;
  } else {
    valid = false;
  }
  return valid;
}
