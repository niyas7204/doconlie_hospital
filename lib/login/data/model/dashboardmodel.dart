// To parse this JSON data, do
//
//     final dashBoardModel = dashBoardModelFromJson(jsonString);

import 'dart:convert';

DashBoardModel dashBoardModelFromJson(Map<String, dynamic> str) =>
    DashBoardModel.fromJson(str);

String dashBoardModelToJson(DashBoardModel data) => json.encode(data.toJson());

class DashBoardModel {
  bool? err;
  int? totalDoctors;
  Booking? booking;
  List<int>? monthlyData;

  DashBoardModel({
    this.err,
    this.totalDoctors,
    this.booking,
    this.monthlyData,
  });

  factory DashBoardModel.fromJson(Map<String, dynamic> json) => DashBoardModel(
        err: json["err"],
        totalDoctors: json["totalDoctors"],
        booking:
            json["booking"] == null ? null : Booking.fromJson(json["booking"]),
        monthlyData: json["monthlyData"] == null
            ? []
            : List<int>.from(json["monthlyData"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "err": err,
        "totalDoctors": totalDoctors,
        "booking": booking?.toJson(),
        "monthlyData": monthlyData == null
            ? []
            : List<dynamic>.from(monthlyData!.map((x) => x)),
      };
}

class Booking {
  String? id;
  int? totalBooking;
  int? totalRevenue;

  Booking({
    this.id,
    this.totalBooking,
    this.totalRevenue,
  });

  factory Booking.fromJson(Map<String, dynamic> json) => Booking(
        id: json["_id"],
        totalBooking: json["totalBooking"],
        totalRevenue: json["totalRevenue"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "totalBooking": totalBooking,
        "totalRevenue": totalRevenue,
      };
}
