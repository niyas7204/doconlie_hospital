import 'package:doconline_hospital/login/presentation/bookings.dart';
import 'package:doconline_hospital/login/presentation/departments.dart';
import 'package:doconline_hospital/login/presentation/doctorslist.dart';
import 'package:doconline_hospital/login/presentation/hospitalprofile.dart';
import 'package:flutter/material.dart';

homeDrawer(BuildContext context, String currentPage) {
  final List<String> drawerItems = [
    'Profile',
    'Doctors',
    'Bookings',
    'Departments',
    'Reports',
    'Logout'
  ];

  TextStyle getTileTextStyle(bool isSelected) {
    return TextStyle(
      color: isSelected ? Colors.blue : Colors.black,
      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
    );
  }

  return Drawer(
    child: ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        final String itemTitle = drawerItems[index];
        bool isSelected = itemTitle.toLowerCase() == currentPage.toLowerCase();

        return ListTile(
          leading: Icon(_getIconForItem(itemTitle)),
          title: Text(itemTitle, style: getTileTextStyle(isSelected)),
          onTap: () {
            _onDrawerItemTap(context, itemTitle);
          },
        );
      },
    ),
  );
}

void _onDrawerItemTap(BuildContext context, String itemTitle) {
  Navigator.pop(context);

  switch (itemTitle) {
    case 'Profile':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const HospitalDetails()));
      break;

    case 'Doctors':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const DoctorsList()));
      break;
    case 'Bookings':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const BookingDetails()));
      break;
    case 'Departments':
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const Departments()));
      break;
    case 'Reports':
      break;
    case 'Logout':
      break;
    default:
      break;
  }
}

// A helper function to get the icon for each drawer item
IconData _getIconForItem(String itemTitle) {
  switch (itemTitle) {
    case 'Profile':
      return Icons.person_2;
    case 'Dashboard':
      return Icons.dashboard;
    case 'Doctors':
      return Icons.medical_services_rounded;
    case 'Bookings':
      return Icons.bookmark_outline;
    case 'Departments':
      return Icons.document_scanner;
    case 'Reports':
      return Icons.list_alt;
    case 'Logout':
      return Icons.exit_to_app;
    default:
      return Icons.help_outline;
  }
}
