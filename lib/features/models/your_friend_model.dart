

// To parse this JSON data, do
//
//     final friendModel = friendModelFromJson(jsonString);

import 'dart:convert';

import 'package:app_comet_hackathon/features/models/img_model.dart';
import 'package:flutter/cupertino.dart';

import 'activity_career_feed_status_model.dart';

class FriendModel {
  FriendModel({
    this.id,
    this.userId,
    this.name,
    this.gender,
    this.genderDescription,
    this.joinedAt,
    this.introduceMessage,
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
    "work_year": workYear,
    "image_profile": imageProfile,
  };
}
