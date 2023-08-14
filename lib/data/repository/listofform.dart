import 'package:doconline_hospital/data/model/doctersmodel.dart';
import 'package:doconline_hospital/data/model/hospitalprofilemodel.dart';
import 'package:flutter/material.dart';

createEditFormlist(Doctor doctorDetails) {
  TextEditingController nameController =
      TextEditingController(text: doctorDetails.name);
  TextEditingController emailController =
      TextEditingController(text: doctorDetails.email);

  TextEditingController aboutController =
      TextEditingController(text: doctorDetails.about);
  TextEditingController feeController =
      TextEditingController(text: doctorDetails.fees.toString());
  TextEditingController qualificationController =
      TextEditingController(text: doctorDetails.qualification);
  TextEditingController specializationController =
      TextEditingController(text: doctorDetails.specialization);

  List<TextEditingController> controllers = [
    nameController,
    emailController,
    qualificationController,
    feeController,
    aboutController,
    specializationController,
  ];
  return controllers;
}

createAddFormlist() {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController aboutController = TextEditingController();
  TextEditingController feeController = TextEditingController();
  TextEditingController qualificationController = TextEditingController();
  TextEditingController specializationController = TextEditingController();

  List<TextEditingController> controllers = [
    nameController,
    emailController,
    qualificationController,
    feeController,
    passwordController,
    aboutController,
    specializationController,
  ];
  return controllers;
}

createHospitalEditFormlist(Hospital hospital) {
  TextEditingController nameController =
      TextEditingController(text: hospital.name);
  TextEditingController aboutController =
      TextEditingController(text: hospital.about);
  TextEditingController adressController =
      TextEditingController(text: hospital.address);

  TextEditingController mobileController =
      TextEditingController(text: hospital.mobile.toString());
  TextEditingController placeController =
      TextEditingController(text: hospital.place);

  List<TextEditingController> controllers = [
    nameController,
    placeController,
    mobileController,
    adressController,
    aboutController,
  ];
  return controllers;
}
