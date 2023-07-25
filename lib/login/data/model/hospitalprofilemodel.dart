// To parse this JSON data, do
//
//     final hospitalProfileModel = hospitalProfileModelFromJson(jsonString);

import 'dart:convert';

HospitalProfileModel hospitalProfileModelFromJson(Map<String, dynamic> str) =>
    HospitalProfileModel.fromJson(str);

String hospitalProfileModelToJson(HospitalProfileModel data) =>
    json.encode(data.toJson());

class HospitalProfileModel {
  bool? err;
  Hospital? hospital;
  List<Department>? departments;
  int? rating;
  List<Review>? reviews;

  HospitalProfileModel({
    this.err,
    this.hospital,
    this.departments,
    this.rating,
    this.reviews,
  });

  factory HospitalProfileModel.fromJson(Map<String, dynamic> json) =>
      HospitalProfileModel(
        err: json["err"],
        hospital: json["hospital"] == null
            ? null
            : Hospital.fromJson(json["hospital"]),
        departments: json["departments"] == null
            ? []
            : List<Department>.from(
                json["departments"]!.map((x) => Department.fromJson(x))),
        rating: json["rating"],
        reviews: json["reviews"] == null
            ? []
            : List<Review>.from(
                json["reviews"]!.map((x) => Review.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "err": err,
        "hospital": hospital?.toJson(),
        "departments": departments == null
            ? []
            : List<dynamic>.from(departments!.map((x) => x.toJson())),
        "rating": rating,
        "reviews": reviews == null
            ? []
            : List<dynamic>.from(reviews!.map((x) => x.toJson())),
      };
}

class Department {
  String? id;
  String? name;
  int? v;
  List<String>? hospitalId;

  Department({
    this.id,
    this.name,
    this.v,
    this.hospitalId,
  });

  factory Department.fromJson(Map<String, dynamic> json) => Department(
        id: json["_id"],
        name: json["name"],
        v: json["__v"],
        hospitalId: json["hospitalId"] == null
            ? []
            : List<String>.from(json["hospitalId"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "__v": v,
        "hospitalId": hospitalId == null
            ? []
            : List<dynamic>.from(hospitalId!.map((x) => x)),
      };
}

class Hospital {
  bool? rejected;
  String? rejectedMessage;
  String? id;
  String? name;
  String? email;
  String? about;
  String? address;
  String? place;
  Image? image;
  int? mobile;
  bool? active;
  int? v;
  bool? block;
  int? wallet;

  Hospital({
    this.rejected,
    this.rejectedMessage,
    this.id,
    this.name,
    this.email,
    this.about,
    this.address,
    this.place,
    this.image,
    this.mobile,
    this.active,
    this.v,
    this.block,
    this.wallet,
  });

  factory Hospital.fromJson(Map<String, dynamic> json) => Hospital(
        rejected: json["rejected"],
        rejectedMessage: json["rejectedMessage"],
        id: json["_id"],
        name: json["name"],
        email: json["email"],
        about: json["about"],
        address: json["address"],
        place: json["place"],
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
        mobile: json["mobile"],
        active: json["active"],
        v: json["__v"],
        block: json["block"],
        wallet: json["wallet"],
      );

  Map<String, dynamic> toJson() => {
        "rejected": rejected,
        "rejectedMessage": rejectedMessage,
        "_id": id,
        "name": name,
        "email": email,
        "about": about,
        "address": address,
        "place": place,
        "image": image?.toJson(),
        "mobile": mobile,
        "active": active,
        "__v": v,
        "block": block,
        "wallet": wallet,
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

class Review {
  String? id;
  String? hospitalId;
  UserId? userId;
  int? v;
  int? rating;
  String? review;

  Review({
    this.id,
    this.hospitalId,
    this.userId,
    this.v,
    this.rating,
    this.review,
  });

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        id: json["_id"],
        hospitalId: json["hospitalId"],
        userId: json["userId"] == null ? null : UserId.fromJson(json["userId"]),
        v: json["__v"],
        rating: json["rating"],
        review: json["review"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "hospitalId": hospitalId,
        "userId": userId?.toJson(),
        "__v": v,
        "rating": rating,
        "review": review,
      };
}

class UserId {
  String? id;
  String? name;
  String? email;
  String? password;
  int? v;
  bool? block;
  String? picture;

  UserId({
    this.id,
    this.name,
    this.email,
    this.password,
    this.v,
    this.block,
    this.picture,
  });

  factory UserId.fromJson(Map<String, dynamic> json) => UserId(
        id: json["_id"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        v: json["__v"],
        block: json["block"],
        picture: json["picture"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "email": email,
        "password": password,
        "__v": v,
        "block": block,
        "picture": picture,
      };
}
