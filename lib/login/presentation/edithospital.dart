import 'package:doconline_hospital/login/bloc/hospitalprofile/hospital_profile_bloc.dart';
import 'package:doconline_hospital/login/data/dataprovider/imagepicker.dart';
import 'package:doconline_hospital/login/data/model/doctersmodel.dart';
import 'package:doconline_hospital/login/data/model/hospitalprofilemodel.dart';
import 'package:doconline_hospital/login/data/repository/listofform.dart';
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
    List<String> labels = ['Name', 'about', 'adress', 'mobile', 'place'];
    List<TextEditingController> controllers;

    controllers = createHospitalEditFormlist(hospital);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Positioned(top: 10, left: 20, child: logo()),
                space1h(),
                Center(
                  child: header1('Edit Hospital Profile'),
                ),
                ListView.separated(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        hospialEditField(labels[index], controllers[index]),
                    separatorBuilder: (context, index) => space1h(),
                    itemCount: labels.length),
                space1h(),
                Center(
                  child: SizedBox(
                    height: 50,
                    width: 150,
                    child: ElevatedButton(
                        onPressed: () async {
                          final image = await pickImage();
                          BlocProvider.of<HospitalProfileBloc>(context).add(
                              HospitalProfileEvent.editHospitalProfile(
                                  imageFile: image!,
                                  name: controllers[0].text,
                                  about: controllers[1].text,
                                  address: controllers[2].text,
                                  place: controllers[3].text,
                                  mobile: controllers[4].text));
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
      ),
    );
  }
}
