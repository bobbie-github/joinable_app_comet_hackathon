// To parse this JSON data, do
//
//     final infoModel = infoModelFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../models/company_model.dart';
import '../../../models/img_model.dart';
import '../../../models/persion_model.dart';

InfoModel infoModelFromJson(String str) => InfoModel.fromJson(json.decode(str));

String infoModelToJson(InfoModel data) => json.encode(data.toJson());

class InfoModel {
  InfoModel({
    this.id,
    this.companyId,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
    this.imageProfile,
    this.personal,
    this.company,
  });

  int? id;
  int? companyId;
  String? name;
  String? email;
  dynamic emailVerifiedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic imageProfile;
  Personal? personal;
  Company? company;

  factory InfoModel.fromJson(Map<String, dynamic> json) => InfoModel(
    id: json["id"] == null ? null : json["id"],
    companyId: json["company_id"] == null ? null : json["company_id"],
    name: json["name"] == null ? null : json["name"],
    email: json["email"] == null ? null : json["email"],
    emailVerifiedAt: json["email_verified_at"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    imageProfile: json["image_profile"],
    personal: json["personal"] == null ? null : Personal.fromJson(json["personal"]),
    company: json["company"] == null ? null : Company.fromJson(json["company"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "company_id": companyId == null ? null : companyId,
    "name": name == null ? null : name,
    "email": email == null ? null : email,
    "email_verified_at": emailVerifiedAt,
    "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
    "image_profile": imageProfile,
    "personal": personal == null ? null : personal?.toJson(),
    "company": company == null ? null : company?.toJson(),
  };
}







class ActivityPivot {
  ActivityPivot({
    this.personalId,
    this.variableId,
  });

  int? personalId;
  int? variableId;

  factory ActivityPivot.fromJson(Map<String, dynamic> json) => ActivityPivot(
    personalId: json["personal_id"] == null ? null : json["personal_id"],
    variableId: json["variable_id"] == null ? null : json["variable_id"],
  );

  Map<String, dynamic> toJson() => {
    "personal_id": personalId == null ? null : personalId,
    "variable_id": variableId == null ? null : variableId,
  };
}

