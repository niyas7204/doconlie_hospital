import 'dart:developer';

import 'package:doconline_hospital/core/constants/colors.dart';
import 'package:doconline_hospital/core/response_handler/api_response.dart';
import 'package:doconline_hospital/core/response_handler/status.dart';
import 'package:doconline_hospital/login/bloc/hospitalprofile/hospital_profile_bloc.dart';
import 'package:doconline_hospital/login/data/dataprovider/imagepicker.dart';
import 'package:doconline_hospital/login/data/model/doctersmodel.dart';
import 'package:doconline_hospital/login/data/model/hospitalprofilemodel.dart';
import 'package:doconline_hospital/login/data/repository/listofform.dart';
import 'package:doconline_hospital/login/presentation/helpers/form_validations/updatehospital.dart';
import 'package:doconline_hospital/login/presentation/widgets/common.dart';
import 'package:doconline_hospital/login/presentation/widgets/formfield.dart';
import 'package:doconline_hospital/login/presentation/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditHospitalProfile extends StatelessWidget {
  final Hospital hospital;
  const EditHospitalProfile({super.key, required this.hospital});

  @override
  Widget build(BuildContext context) {
    List<String> labels = [
      'Name',
      'Place',
      'Mobile',
      'Address',
      'About',
    ];
    List<TextEditingController> controllers;

    controllers = createHospitalEditFormlist(hospital);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 101, 131, 146),
        title: const Text(
          'Edit Hospital Profile',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: BlocListener<HospitalProfileBloc, HospitalProfileState>(
          listener: (context, state) {
            if (state.profile.status == ResponseStatus.complete) {
              Navigator.pop(context);
              const snackBar = SnackBar(
                  content: Text('Successfully edited\nHospital profile'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              Navigator.pop(context);
            }
          },
          child: BlocBuilder<HospitalProfileBloc, HospitalProfileState>(
            builder: (context, state) {
              return Stack(
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          logo(),
                          space1h(),
                          ListView.separated(
                              physics: const ScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) => hospialEditField(
                                  labels[index], controllers[index]),
                              separatorBuilder: (context, index) => space1h(),
                              itemCount: labels.length),
                          space1h(),
                          Center(
                            child: SizedBox(
                              height: 50,
                              width: 150,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color.fromARGB(
                                        255, 101, 131, 146),
                                  ),
                                  onPressed: () {
                                    bool valid = validateFieldEdit(
                                        controllers, labels, context);
                                    log(valid.toString());
                                    if (valid) {
                                      showconfirmdiolog(
                                          context,
                                          'sure want to update',
                                          () => updateProfile(
                                              controllers, context));
                                    }
                                  },
                                  child: const Text(
                                    'UPDATE',
                                    style: TextStyle(fontSize: 25),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  state.profile.status == ResponseStatus.loading
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : const SizedBox()
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  updateProfile(List<TextEditingController> controllers, context) {
    return BlocProvider.of<HospitalProfileBloc>(context)
        .add(HospitalProfileEvent.editHospitalProfile(
      name: controllers[0].text,
      place: controllers[1].text,
      mobile: controllers[2].text,
      address: controllers[3].text,
      about: controllers[4].text,
    ));
  }
}
