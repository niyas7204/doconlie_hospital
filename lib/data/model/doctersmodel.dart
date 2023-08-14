// To parse this JSON data, do
//
//     final doctorsModel = doctorsModelFromJson(jsonString);

import 'dart:convert';

DoctorsModel doctorsModelFromJson(Map<String, dynamic> str) =>
    DoctorsModel.fromJson(str);

String doctorsModelToJson(DoctorsModel data) => json.encode(data.toJson());

class DoctorsModel {
  bool? err;
  List<Doctor>? doctors;

  DoctorsModel({
    this.err,
    this.doctors,
  });

  factory DoctorsModel.fromJson(Map<String, dynamic> json) => DoctorsModel(
        err: json["err"],
        doctors: json["doctors"] == null
            ? []
            : List<Doctor>.from(
                json["doctors"]!.map((x) => Doctor.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "err": err,
        "doctors": doctors == null
            ? []
            : List<dynamic>.from(doctors!.map((x) => x.toJson())),
      };
}

class Doctor {
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
  String? tags;

  Doctor({
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
    this.tags,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
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
        tags: json["tags"],
      );

  Map<String, dynamic> toJson() => {
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
        "tags": tags,
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
