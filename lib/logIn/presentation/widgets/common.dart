import 'package:doconline_hospital/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

header1(String text) => Text(
      text,
      style: const TextStyle(
          fontSize: 30, fontWeight: FontWeight.w600, color: baseColor),
    );
space1h() => const SizedBox(
      height: 10,
    );
space1w() => const SizedBox(
      width: 10,
    );
textField(String hint, TextEditingController txtCntrlr) {
  return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1), borderRadius: BorderRadius.circular(7)),
      height: 40.h,
      width: 300.w,
      child: TextFormField(
        controller: txtCntrlr,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 20), hintText: hint),
      ));
}

Future<dynamic> showdiologue(BuildContext context, String? errorText) {
  return showDialog(
      context: context,
      builder: (context) => AlertDialog(
            content: Text(errorText!),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('close'))
            ],
          ));
}
