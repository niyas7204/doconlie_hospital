import 'package:doconline_hospital/core/constants/colors.dart';
import 'package:flutter/material.dart';

dashBoard(String caption, int value, IconData icon, bool isWallet) {
  return Stack(
    children: [
      Container(
        height: 130,
        width: double.infinity,
        color: Colors.blueGrey,
      ),
      Positioned(
        top: 25,
        left: 30,
        child: Text(
          caption,
          style: const TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: baseColor),
        ),
      ),
      Positioned(
        top: 50,
        left: 60,
        child: Text(value.toString(),
            style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 47, 47, 48))),
      ),
      Positioned(
        top: 30,
        left: 300,
        child: Container(
          height: 50,
          width: 50,
          color: const Color.fromARGB(255, 214, 220, 223),
          child: Icon(
            icon,
            size: 45,
          ),
        ),
      ),
      isWallet
          ? Positioned(
              top: 50,
              left: 60,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Withdraw',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 47, 47, 48))),
              ))
          : const SizedBox(),
    ],
  );
}
