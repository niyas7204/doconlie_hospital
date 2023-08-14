// To parse this JSON data, do
//
//     final bookingModel = bookingModelFromJson(jsonString);

import 'dart:convert';

BookingModel bookingModelFromJson(Map<String, dynamic> str) =>
    BookingModel.fromJson(str);

String bookingModelToJson(BookingModel data) => json.encode(data.toJson());

class BookingModel {
  bool? err;
  List<Booking>? bookings;

  BookingModel({
    this.err,
    this.bookings,
  });

  factory BookingModel.fromJson(Map<String, dynamic> json) => BookingModel(
        err: json["err"],
        bookings: json["bookings"] == null
            ? []
            : List<Booking>.from(
                json["bookings"]!.map((x) => Booking.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "err": err,
        "bookings": bookings == null
            ? []
            : List<dynamic>.from(bookings!.map((x) => x.toJson())),
      };
}

class Booking {
  String? id;
  DoctorId? doctorId;
  String? userId;
  String? hospitalId;
  Payment? payment;
  DateTime? date;
  String? timeSlot;
  DateTime? time;
  int? fees;
  String? patientName;
  int? age;
  String? token;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  Booking({
    this.id,
    this.doctorId,
    this.userId,
    this.hospitalId,
    this.payment,
    this.date,
    this.timeSlot,
    this.time,
    this.fees,
    this.patientName,
    this.age,
    this.token,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory Booking.fromJson(Map<String, dynamic> json) => Booking(
        id: json["_id"],
        doctorId: json["doctorId"] == null
            ? null
            : DoctorId.fromJson(json["doctorId"]),
        userId: json["userId"],
        hospitalId: json["hospitalId"],
        payment:
            json["payment"] == null ? null : Payment.fromJson(json["payment"]),
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        timeSlot: json["timeSlot"],
        time: json["time"] == null ? null : DateTime.parse(json["time"]),
        fees: json["fees"],
        patientName: json["patientName"],
        age: json["age"],
        token: json["token"],
        status: json["status"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "doctorId": doctorId?.toJson(),
        "userId": userId,
        "hospitalId": hospitalId,
        "payment": payment?.toJson(),
        "date": date?.toIso8601String(),
        "timeSlot": timeSlot,
        "time": time?.toIso8601String(),
        "fees": fees,
        "patientName": patientName,
        "age": age,
        "token": token,
        "status": status,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
      };
}

class DoctorId {
  String? tags;
  String? id;
  String? name;
  String? hospitalId;
  String? email;
  String? password;
  String? department;
  String? qualification;
  String? specialization;
  String? about;
  Image? image;
  bool? block;
  int? fees;
  int? v;

  DoctorId({
    this.tags,
    this.id,
    this.name,
    this.hospitalId,
    this.email,
    this.password,
    this.department,
    this.qualification,
    this.specialization,
    this.about,
    this.image,
    this.block,
    this.fees,
    this.v,
  });

  factory DoctorId.fromJson(Map<String, dynamic> json) => DoctorId(
        tags: json["tags"],
        id: json["_id"],
        name: json["name"],
        hospitalId: json["hospitalId"],
        email: json["email"],
        password: json["password"],
        department: json["department"],
        qualification: json["qualification"],
        specialization: json["specialization"],
        about: json["about"],
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
        block: json["block"],
        fees: json["fees"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "tags": tags,
        "_id": id,
        "name": name,
        "hospitalId": hospitalId,
        "email": email,
        "password": password,
        "department": department,
        "qualification": qualification,
        "specialization": specialization,
        "about": about,
        "image": image?.toJson(),
        "block": block,
        "fees": fees,
        "__v": v,
      };
}

class Image {
  String? assetId;
  String? publicId;
  int? version;
  String? versionId;
  String? signature;
  int? width;
  int? height;
  String? format;
  String? resourceType;
  DateTime? createdAt;
  List<dynamic>? tags;
  int? bytes;
  String? type;
  String? etag;
  bool? placeholder;
  String? url;
  String? secureUrl;
  String? folder;
  String? apiKey;

  Image({
    this.assetId,
    this.publicId,
    this.version,
    this.versionId,
    this.signature,
    this.width,
    this.height,
    this.format,
    this.resourceType,
    this.createdAt,
    this.tags,
    this.bytes,
    this.type,
    this.etag,
    this.placeholder,
    this.url,
    this.secureUrl,
    this.folder,
    this.apiKey,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        assetId: json["asset_id"],
        publicId: json["public_id"],
        version: json["version"],
        versionId: json["version_id"],
        signature: json["signature"],
        width: json["width"],
        height: json["height"],
        format: json["format"],
        resourceType: json["resource_type"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        tags: json["tags"] == null
            ? []
            : List<dynamic>.from(json["tags"]!.map((x) => x)),
        bytes: json["bytes"],
        type: json["type"],
        etag: json["etag"],
        placeholder: json["placeholder"],
        url: json["url"],
        secureUrl: json["secure_url"],
        folder: json["folder"],
        apiKey: json["api_key"],
      );

  Map<String, dynamic> toJson() => {
        "asset_id": assetId,
        "public_id": publicId,
        "version": version,
        "version_id": versionId,
        "signature": signature,
        "width": width,
        "height": height,
        "format": format,
        "resource_type": resourceType,
        "created_at": createdAt?.toIso8601String(),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "bytes": bytes,
        "type": type,
        "etag": etag,
        "placeholder": placeholder,
        "url": url,
        "secure_url": secureUrl,
        "folder": folder,
        "api_key": apiKey,
      };
}

class Payment {
  String? razorpayPaymentId;
  String? razorpayOrderId;
  String? razorpaySignature;

  Payment({
    this.razorpayPaymentId,
    this.razorpayOrderId,
    this.razorpaySignature,
  });

  factory Payment.fromJson(Map<String, dynamic> json) => Payment(
        razorpayPaymentId: json["razorpay_payment_id"],
        razorpayOrderId: json["razorpay_order_id"],
        razorpaySignature: json["razorpay_signature"],
      );

  Map<String, dynamic> toJson() => {
        "razorpay_payment_id": razorpayPaymentId,
        "razorpay_order_id": razorpayOrderId,
        "razorpay_signature": razorpaySignature,
      };
}
