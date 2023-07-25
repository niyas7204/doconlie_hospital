import 'package:doconline_hospital/login/data/model/hospitalprofilemodel.dart';
import 'package:doconline_hospital/login/presentation/bookings.dart';
import 'package:doconline_hospital/login/presentation/departments.dart';
import 'package:doconline_hospital/login/presentation/doctorslist.dart';
import 'package:doconline_hospital/login/presentation/hospitalProfile.dart';
import 'package:flutter/material.dart';

homeDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.edit),
          title: const Text('Profile'),
          onTap: () => {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const HospitalDetails(),
            ))
          },
        ),
        ListTile(
          leading: const Icon(Icons.edit),
          title: const Text('Dashboard'),
          onTap: () => {},
        ),
        ListTile(
          leading: const Icon(Icons.edit),
          title: const Text('Doctor'),
          onTap: () => {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const DoctorsList(),
            ))
          },
        ),
        ListTile(
          leading: const Icon(Icons.edit),
          title: const Text('Bookings'),
          onTap: () => {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const BookingDetails(),
            ))
          },
        ),
        ListTile(
          leading: const Icon(Icons.exit_to_app),
          title: const Text('Departments'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const Departments(),
            ));
          },
        ),
        ListTile(
          leading: const Icon(Icons.exit_to_app),
          title: const Text('Reports'),
          onTap: () {},
        ),
      ],
    ),
  );
}
