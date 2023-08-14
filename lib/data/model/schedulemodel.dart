// To parse this JSON data, do
//
//     final scheduleModel = scheduleModelFromJson(jsonString);

import 'dart:convert';

ScheduleModel scheduleModelFromJson(Map<String, dynamic> str) =>
    ScheduleModel.fromJson(str);

String scheduleModelToJson(ScheduleModel data) => json.encode(data.toJson());

class ScheduleModel {
  bool? err;
  Schedule? schedule;

  ScheduleModel({
    this.err,
    this.schedule,
  });

  factory ScheduleModel.fromJson(Map<String, dynamic> json) => ScheduleModel(
        err: json["err"],
        schedule: json["schedule"] == null
            ? null
            : Schedule.fromJson(json["schedule"]),
      );

  Map<String, dynamic> toJson() => {
        "err": err,
        "schedule": schedule?.toJson(),
      };
}

class Schedule {
  String? id;
  String? doctorId;
  int? v;
  DateTime? createdAt;
  List<Fri>? fri;
  List<Fri>? mon;
  List<Fri>? sat;
  List<Fri>? sun;
  List<Fri>? thu;
  List<Fri>? tue;
  DateTime? updatedAt;
  List<Fri>? wed;

  Schedule({
    this.id,
    this.doctorId,
    this.v,
    this.createdAt,
    this.fri,
    this.mon,
    this.sat,
    this.sun,
    this.thu,
    this.tue,
    this.updatedAt,
    this.wed,
  });

  factory Schedule.fromJson(Map<String, dynamic> json) => Schedule(
        id: json["_id"],
        doctorId: json["doctorId"],
        v: json["__v"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        fri: json["fri"] == null
            ? []
            : List<Fri>.from(json["fri"]!.map((x) => Fri.fromJson(x))),
        mon: json["mon"] == null
            ? []
            : List<Fri>.from(json["mon"]!.map((x) => Fri.fromJson(x))),
        sat: json["sat"] == null
            ? []
            : List<Fri>.from(json["sat"]!.map((x) => Fri.fromJson(x))),
        sun: json["sun"] == null
            ? []
            : List<Fri>.from(json["sun"]!.map((x) => Fri.fromJson(x))),
        thu: json["thu"] == null
            ? []
            : List<Fri>.from(json["thu"]!.map((x) => Fri.fromJson(x))),
        tue: json["tue"] == null
            ? []
            : List<Fri>.from(json["tue"]!.map((x) => Fri.fromJson(x))),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        wed: json["wed"] == null
            ? []
            : List<Fri>.from(json["wed"]!.map((x) => Fri.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "doctorId": doctorId,
        "__v": v,
        "createdAt": createdAt?.toIso8601String(),
        "fri":
            fri == null ? [] : List<dynamic>.from(fri!.map((x) => x.toJson())),
        "mon":
            mon == null ? [] : List<dynamic>.from(mon!.map((x) => x.toJson())),
        "sat":
            sat == null ? [] : List<dynamic>.from(sat!.map((x) => x.toJson())),
        "sun":
            sun == null ? [] : List<dynamic>.from(sun!.map((x) => x.toJson())),
        "thu":
            thu == null ? [] : List<dynamic>.from(thu!.map((x) => x.toJson())),
        "tue":
            tue == null ? [] : List<dynamic>.from(tue!.map((x) => x.toJson())),
        "updatedAt": updatedAt?.toIso8601String(),
        "wed":
            wed == null ? [] : List<dynamic>.from(wed!.map((x) => x.toJson())),
      };
}

class Fri {
  DateTime? startDate;
  DateTime? endDate;
  String? slot;

  Fri({
    this.startDate,
    this.endDate,
    this.slot,
  });

  factory Fri.fromJson(Map<String, dynamic> json) => Fri(
        startDate: json["startDate"] == null
            ? null
            : DateTime.parse(json["startDate"]),
        endDate:
            json["endDate"] == null ? null : DateTime.parse(json["endDate"]),
        slot: json["slot"],
      );

  Map<String, dynamic> toJson() => {
        "startDate": startDate?.toIso8601String(),
        "endDate": endDate?.toIso8601String(),
        "slot": slot,
      };
}
