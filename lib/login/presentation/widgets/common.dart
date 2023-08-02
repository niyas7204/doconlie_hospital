import 'package:doconline_hospital/core/constants/colors.dart';
import 'package:doconline_hospital/login/bloc/hospitalprofile/hospital_profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

text20(text) => Text(text,
    style: const TextStyle(
        fontSize: 17, fontWeight: FontWeight.w600, color: baseColor),
    overflow: TextOverflow.ellipsis,
    maxLines: 3);
cText1(String text) => Text(
      text,
      style: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: Color.fromARGB(255, 78, 78, 78),
      ),
    );
labelText(String text) => Text(
      text,
      style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(179, 65, 64, 64)),
    );
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

Future<dynamic> showErrordiolog(BuildContext context, String? errorText) {
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

netWorkError() {
  return SizedBox(
    child: Center(
      child: cText1('Network not found'),
    ),
  );
}

review(String profile, int rating, String review) {
  return Container(
    width: double.infinity,
    height: 100,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 231, 233, 236),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 30,
            child: Icon(Icons.person_2_sharp),
          ),
          space1w(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text20(profile),
              starRating(rating),
              text20(review),
            ],
          )
        ],
      ),
    ),
  );
}

starRating(int rating) {
  return SizedBox(
    height: 20,
    child: Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) => index < rating
            ? const Icon(
                Icons.star,
                color: Colors.amber,
              )
            : const Icon(
                Icons.star,
                color: Color.fromARGB(255, 179, 178, 175),
              ),
      ),
    ),
  );
}

Future<dynamic> showprofileUpdatemdiologe(BuildContext context,
    String? messageText, List<TextEditingController> controllers) {
  return showDialog(
      context: context,
      builder: (context) => AlertDialog(
            content: Text(messageText!),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('close')),
              ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<HospitalProfileBloc>(context)
                        .add(HospitalProfileEvent.editHospitalProfile(
                      name: controllers[0].text,
                      about: controllers[1].text,
                      address: controllers[2].text,
                      mobile: controllers[3].text,
                      place: controllers[4].text,
                    ));
                  },
                  child: const Text('confirm')),
            ],
          ));
}

Future<dynamic> showconfirmdiolog(
  BuildContext context,
  String? messageText,
  Function onPressCallback,
) {
  return showDialog(
      context: context,
      builder: (context) => AlertDialog(
            content: Text(messageText!),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('close')),
              ElevatedButton(
                  onPressed: () {
                    onPressCallback();
                  },
                  child: const Text('confirm')),
            ],
          ));
}
