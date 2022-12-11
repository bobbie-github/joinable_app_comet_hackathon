

// To parse this JSON data, do
//
//     final friendModel = friendModelFromJson(jsonString);

import 'dart:convert';

import 'package:app_comet_hackathon/features/models/img_model.dart';
import 'package:flutter/cupertino.dart';

import 'activity_career_feed_status_model.dart';

FriendModel friendModelFromJson(String str) => FriendModel.fromJson(json.decode(str));

String friendModelToJson(FriendModel data) => json.encode(data.toJson());

class FriendModel {
  FriendModel({
    this.id,
    this.userId,
    this.name,
    this.gender,
    this.genderDescription,
    this.joinedAt,
    this.introduceMessage,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.workYear,
    this.sameCareers,
    this.sameActivities,
    this.imageProfile,
  });

  int? id;
  int? userId;
  String? name;
  dynamic gender;
  dynamic genderDescription;
  dynamic joinedAt;
  dynamic introduceMessage;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  dynamic workYear;
  List<Activity>? sameCareers;
  List<Activity>?sameActivities;
  ImageModel? imageProfile;

  factory FriendModel.fromJson(Map<String, dynamic> json) => FriendModel(
    id: json["id"] == null ? null : json["id"],
    userId: json["user_id"] == null ? null : json["user_id"],
    name: json["name"] == null ? null : json["name"],
    gender: json["gender"],
    genderDescription: json["gender_description"],
    joinedAt: json["joined_at"],
    introduceMessage: json["introduce_message"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    workYear: json["work_year"],
    sameCareers: json["same_careers"] == null ? null : List<Activity>.from(json["same_careers"].map((x) => Activity.fromJson(x))),
    sameActivities: json["same_activities"] == null ? null : List<Activity>.from(json["same_activities"].map((x) => Activity.fromJson(x))),
    imageProfile: json["image_profile"] == null ? null : ImageModel.fromJson(json["image_profile"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "user_id": userId == null ? null : userId,
    "name": name == null ? null : name,
    "gender": gender,
    "gender_description": genderDescription,
    "joined_at": joinedAt,
    "introduce_message": introduceMessage,
    "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
    "deleted_at": deletedAt,
    "work_year": workYear,
    "image_profile": imageProfile,
  };
}
