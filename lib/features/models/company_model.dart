

import 'package:app_comet_hackathon/features/models/img_model.dart';
import 'package:flutter/material.dart';

class Company {
  Company({
    this.id,
    this.joinableCode,
    this.name,
    this.slogan,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.imageProfile,
  });

  int? id;
  String? joinableCode;
  String? name;
  String? slogan;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  ImageModel? imageProfile;

  factory Company.fromJson(Map<String, dynamic> json) => Company(
    id: json["id"] == null ? null : json["id"],
    joinableCode: json["joinable_code"] == null ? null : json["joinable_code"],
    name: json["name"] == null ? null : json["name"],
    slogan: json["slogan"] == null ? null : json["slogan"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    imageProfile: json["image_profile"] == null ? null : ImageModel.fromJson(json["image_profile"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "joinable_code": joinableCode == null ? null : joinableCode,
    "name": name == null ? null : name,
    "slogan": slogan == null ? null : slogan,
    "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
    "updated?.at": updatedAt == null ? null : updatedAt?.toIso8601String(),
    "deleted_at": deletedAt,
    "image_profile": imageProfile == null ? null : imageProfile?.toJson(),
  };
}