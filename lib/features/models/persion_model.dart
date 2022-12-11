
import 'package:app_comet_hackathon/features/models/img_model.dart';

import 'activity_career_feed_status_model.dart';

class Personal {
  Personal({
    this.id,
    this.userId,
    this.name,
    this.gender,
    this.genderDescription,
    this.joinedAt,
    this.introduceMessage,
    this.deletedAt,
    this.workYear,
    this.sameCareers,
    this.sameActivities,
    this.imageProfile,
    this.careers,
    this.activities,
  });

  int? id;
  int? userId;
  String? name;
  String? gender;
  String? genderDescription;
  DateTime? joinedAt;
  String? introduceMessage;
  dynamic deletedAt;
  int? workYear;
  List<Activity>? sameCareers;
  List<Activity>? sameActivities;
  ImageModel? imageProfile;
  List<Activity>? careers;
  List<Activity>? activities;

  factory Personal.fromJson(Map<String, dynamic> json) => Personal(
    id: json["id"] == null ? null : json["id"],
    userId: json["user_id"] == null ? null : json["user_id"],
    name: json["name"] == null ? null : json["name"],
    gender: json["gender"] == null ? null : json["gender"],
    genderDescription: json["gender_description"] == null ? null : json["gender_description"],
    joinedAt: json["joined_at"] == null ? null : DateTime.parse(json["joined_at"]),
    introduceMessage: json["introduce_message"] == null ? null : json["introduce_message"],
    deletedAt: json["deleted_at"],
    workYear: json["work_year"] == null ? null : json["work_year"],
    sameCareers: json["same_careers"] == null ? null : List<Activity>.from(json["same_careers"].map((x) => Activity.fromJson(x))),
    sameActivities: json["same_activities"] == null ? null : List<Activity>.from(json["same_activities"].map((x) => Activity.fromJson(x))),
    imageProfile:json["image_profile"] == null ? null : ImageModel.fromJson(json["image_profile"]),
    careers: json["careers"] == null ? null : List<Activity>.from(json["careers"].map((x) => Activity.fromJson(x))),
    activities: json["activities"] == null ? null : List<Activity>.from(json["activities"].map((x) => Activity.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "user_id": userId == null ? null : userId,
    "name": name == null ? null : name,
    "gender": gender == null ? null : gender,
    "gender_description": genderDescription == null ? null : genderDescription,
    "joined_at": joinedAt == null ? null : "${joinedAt?.year.toString().padLeft(4, '0')}-${joinedAt?.month.toString().padLeft(2, '0')}-${joinedAt?.day.toString().padLeft(2, '0')}",
    "introduce_message": introduceMessage == null ? null : introduceMessage,
    "deleted_at": deletedAt,
    "work_year": workYear == null ? null : workYear,
    "same_careers": sameCareers == null ? null : List<dynamic>.from(sameCareers!.map((x) => x.toJson())),
    "same_activities": sameActivities == null ? null : List<dynamic>.from(sameActivities!.map((x) => x.toJson())),
    "image_profile": imageProfile == null ? null : imageProfile?.toJson(),
    "careers": careers == null ? null : List<dynamic>.from(careers!.map((x) => x.toJson())),
    "activities": activities == null ? null : List<dynamic>.from(activities!.map((x) => x.toJson())),
  };
}