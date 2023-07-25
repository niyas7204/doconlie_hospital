import 'package:doconline_hospital/core/constants/colors.dart';
import 'package:doconline_hospital/login/data/model/bookingmodel.dart';
import 'package:doconline_hospital/login/data/model/hospitalprofilemodel.dart';
import 'package:doconline_hospital/login/presentation/edithospital.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/widgets.dart' as prefix;

departmentCard(String dpName, String id, context) {
  return GestureDetector(
    onTap: () async {},
    child: Card(
      child: SizedBox(
        width: 105.w,
        height: 200.h,
        child: Column(
          children: [
            prefix.Image.asset(
                'assets/image/stethoscope-icon-2316460_1280.png'),
            Center(
              child: SizedBox(
                width: 100.w,
                child: Text(
                  dpName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

bookingCard(Booking bookings) {
  return Container(
    height: 95.h,
    width: 340.w,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 101, 131, 146)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Doctor Name:${bookings.doctorId!.name}',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Patient Name:${bookings.patientName}',
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Fees:${bookings.fees}',
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Date:${bookings.date!.day}/${bookings.date!.month}/${bookings.date!.year}',
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}

sliverAppBar(String imgUrl, context, Hospital hospital) {
  return SliverAppBar(
    actions: [
      SizedBox(
        width: 160,
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => EditHospitalProfile(
                hospital: hospital,
              ),
            ));
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey.withOpacity(.7),
              side: BorderSide.none,
              shape: const StadiumBorder()),
          child: const Text('EditProfile',
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
      ),
    ],
    expandedHeight: 350,
    flexibleSpace: FlexibleSpaceBar(
        background: prefix.Image.network(
      imgUrl,
      fit: BoxFit.cover,
    )),
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: Container(
        width: double.infinity,
        height: 20,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
        ),
        child: Center(
          child: Container(
            width: 50,
            height: 5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(75, 158, 158, 158)),
          ),
        ),
      ),
    ),
  );
}
