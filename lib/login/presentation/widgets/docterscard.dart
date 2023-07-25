import 'package:doconline_hospital/login/data/model/doctersmodel.dart';
import 'package:doconline_hospital/login/presentation/doctordetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/widgets.dart' as prefix;

doctersCard(List<Doctor> bstate, int index, BuildContext context) {
  return GestureDetector(
    onTap: () async {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DoctorProfile(doctor: bstate[index])));
    },
    child: Container(
      height: 95.h,
      width: 340.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 101, 131, 146)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            child: prefix.Image.asset(
              'assets/image/doctor.png',
              fit: BoxFit.cover,
              width: 100.w,
              height: 80.h,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bstate[index].name!,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  bstate[index].qualification!,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
