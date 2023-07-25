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
  UserId? userId;
  HospitalId? hospitalId;
  Payment? payment;
  DateTime? date;
  String? timeSlot;
  String? time;
  int? fees;
  String? patientName;
  int? age;
  String? token;
  Status? status;
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
        userId: userIdValues.map[json["userId"]]!,
        hospitalId: hospitalIdValues.map[json["hospitalId"]]!,
        payment:
            json["payment"] == null ? null : Payment.fromJson(json["payment"]),
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        timeSlot: json["timeSlot"],
        time: json["time"],
        fees: json["fees"],
        patientName: json["patientName"],
        age: json["age"],
        token: json["token"],
        status: statusValues.map[json["status"]]!,
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
        "userId": userIdValues.reverse[userId],
        "hospitalId": hospitalIdValues.reverse[hospitalId],
        "payment": payment?.toJson(),
        "date": date?.toIso8601String(),
        "timeSlot": timeSlot,
        "time": time,
        "fees": fees,
        "patientName": patientName,
        "age": age,
        "token": token,
        "status": statusValues.reverse[status],
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
      };
}

class DoctorId {
  Tags? tags;
  Id? id;
  Name? name;
  HospitalId? hospitalId;
  Email? email;
  Password? password;
  Department? department;
  Qualification? qualification;
  Specialization? specialization;
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
        tags: tagsValues.map[json["tags"]]!,
        id: idValues.map[json["_id"]]!,
        name: nameValues.map[json["name"]]!,
        hospitalId: hospitalIdValues.map[json["hospitalId"]]!,
        email: emailValues.map[json["email"]]!,
        password: passwordValues.map[json["password"]]!,
        department: departmentValues.map[json["department"]]!,
        qualification: qualificationValues.map[json["qualification"]]!,
        specialization: specializationValues.map[json["specialization"]]!,
        about: json["about"],
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
        block: json["block"],
        fees: json["fees"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "tags": tagsValues.reverse[tags],
        "_id": idValues.reverse[id],
        "name": nameValues.reverse[name],
        "hospitalId": hospitalIdValues.reverse[hospitalId],
        "email": emailValues.reverse[email],
        "password": passwordValues.reverse[password],
        "department": departmentValues.reverse[department],
        "qualification": qualificationValues.reverse[qualification],
        "specialization": specializationValues.reverse[specialization],
        "about": about,
        "image": image?.toJson(),
        "block": block,
        "fees": fees,
        "__v": v,
      };
}

enum Department {
  THE_64327_F9_EAC95_FFDC914_C415_D,
  THE_64327_FA9_AC95_FFDC914_C4168
}

final departmentValues = EnumValues({
  "64327f9eac95ffdc914c415d": Department.THE_64327_F9_EAC95_FFDC914_C415_D,
  "64327fa9ac95ffdc914c4168": Department.THE_64327_FA9_AC95_FFDC914_C4168
});

enum Email { FASILKP314_GMAIL_COM, JEAGER_GMAIL_COM, SWABAH_A_AVD121_GMAIL_COM }

final emailValues = EnumValues({
  "fasilkp314@gmail.com": Email.FASILKP314_GMAIL_COM,
  "jeager@gmail.com": Email.JEAGER_GMAIL_COM,
  "swabah.a.avd121@gmail.com": Email.SWABAH_A_AVD121_GMAIL_COM
});

enum HospitalId { THE_64327_E18_A31_F8915_FE966_CCD }

final hospitalIdValues = EnumValues(
    {"64327e18a31f8915fe966ccd": HospitalId.THE_64327_E18_A31_F8915_FE966_CCD});

enum Id {
  THE_643280_A0161918_B6_CDE6_EE15,
  THE_643280_C3161918_B6_CDE6_EE1_E,
  THE_6474_C00_EEACE6_FBD3_A10155_F
}

final idValues = EnumValues({
  "643280a0161918b6cde6ee15": Id.THE_643280_A0161918_B6_CDE6_EE15,
  "643280c3161918b6cde6ee1e": Id.THE_643280_C3161918_B6_CDE6_EE1_E,
  "6474c00eeace6fbd3a10155f": Id.THE_6474_C00_EEACE6_FBD3_A10155_F
});

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

enum Name { DR_FASIL, DR_JEAGER, SWABAH }

final nameValues = EnumValues({
  "Dr fasil": Name.DR_FASIL,
  "Dr Jeager": Name.DR_JEAGER,
  "Swabah": Name.SWABAH
});

enum Password {
  THE_2_A_10_BG4_GQ_KYJ_PSS_B_DS_Q6_T_WYNO_WHUV_IZ9_KG_EE_QLOST11_UO4_KXA_X_AT_OI_GM,
  THE_2_A_10_E3_B3_KF_PSNE0_L4_MT_HI_J6_XORL9_R_Z_KW1_MT_JP_NH_D_WIZD_QQQ9_X_ZU_I74_W,
  THE_2_A_10_R_BKV_XT_BS_MAB_HE_L_XH_F9_QGU_ZC_NM2_MY_BA_YNU3_JA_NIFS_LN8_Y_X_NMR_IKJ
}

final passwordValues = EnumValues({
  "\u00242a\u002410\u0024BG4gqKyj/PssBDsQ6tWYNOWhuvIz9kgEeQlost11Uo4KxaXAtOIGm":
      Password
          .THE_2_A_10_BG4_GQ_KYJ_PSS_B_DS_Q6_T_WYNO_WHUV_IZ9_KG_EE_QLOST11_UO4_KXA_X_AT_OI_GM,
  "\u00242a\u002410\u0024e3B3.kfPsne0L4mtHiJ6XORL9rZKw1MtJPNh/DWizdQQQ9XZuI74W":
      Password
          .THE_2_A_10_E3_B3_KF_PSNE0_L4_MT_HI_J6_XORL9_R_Z_KW1_MT_JP_NH_D_WIZD_QQQ9_X_ZU_I74_W,
  "\u00242a\u002410\u0024RBkvXTBsMabHE/lXhF9qguZcNM2myBaYNU3JaNifsLn8yXNmrIKJ.":
      Password
          .THE_2_A_10_R_BKV_XT_BS_MAB_HE_L_XH_F9_QGU_ZC_NM2_MY_BA_YNU3_JA_NIFS_LN8_Y_X_NMR_IKJ
});

enum Qualification { MBBS_MD }

final qualificationValues = EnumValues({"MBBS, MD": Qualification.MBBS_MD});

enum Specialization { LOREM_IPSUM, SURGEON }

final specializationValues = EnumValues({
  "Lorem Ipsum": Specialization.LOREM_IPSUM,
  "Surgeon": Specialization.SURGEON
});

enum Tags { EMPTY, OPERATION }

final tagsValues = EnumValues({"": Tags.EMPTY, "operation": Tags.OPERATION});

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

enum Status { UPCOMING, COMPLETED, CANCELLED }

final statusValues = EnumValues({
  "cancelled": Status.CANCELLED,
  "completed": Status.COMPLETED,
  "upcoming": Status.UPCOMING
});

enum UserId {
  THE_6427_F24032_CA3_E22806_F6_C54,
  THE_64787_C92_FA61414227_CFF5_AA
}

final userIdValues = EnumValues({
  "6427f24032ca3e22806f6c54": UserId.THE_6427_F24032_CA3_E22806_F6_C54,
  "64787c92fa61414227cff5aa": UserId.THE_64787_C92_FA61414227_CFF5_AA
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
