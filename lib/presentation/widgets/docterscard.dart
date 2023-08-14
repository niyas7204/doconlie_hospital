import 'package:doconline_hospital/data/model/doctersmodel.dart';
import 'package:doconline_hospital/presentation/doctordetails.dart';
import 'package:doconline_hospital/presentation/widgets/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/widgets.dart' as prefix;

doctersCard(List<Doctor> bstate, int index, BuildContext context) {
  return GestureDetector(
    onTap: () async {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DoctorProfile(
                index: index,
              )));
    },
    child: Container(
      padding: const EdgeInsets.all(10),
      height: 110.h,
      width: 340.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 101, 131, 146)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            child: prefix.Image.network(
              bstate[index].image!.secureUrl!,
              fit: BoxFit.cover,
              width: 100.w,
              height: 80.h,
            ),
          ),
          space1w(),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bstate[index].name![0].toUpperCase() +
                      bstate[index].name!.substring(1),
                  style: const TextStyle(
                    fontSize: 25,
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
                Text(
                  bstate[index].email!,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  bstate[index].fees!.toString(),
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  bstate[index].block! ? 'blocked' : 'on',
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
