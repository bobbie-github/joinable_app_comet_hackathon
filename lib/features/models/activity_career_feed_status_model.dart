

import 'package:app_comet_hackathon/features/models/img_model.dart';

import '../home/data/models/info_model.dart';

class Activity {
  Activity({
    this.id,
    this.type,
    this.name,
    this.description,
    this.companyId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.pivot,
    this.imageLogo,
  });

  int? id;
  Type? type;
  String? name;
  String? description;
  dynamic companyId;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  ActivityPivot? pivot;
  ImageModel? imageLogo;

  factory Activity.fromJson(Map<String, dynamic> json) => Activity(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    description: json["description"] == null ? null : json["description"],
    companyId: json["company_id"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    pivot: json["pivot"] == null ? null : ActivityPivot.fromJson(json["pivot"]),
    imageLogo: json["image_logo"] == null ? null : ImageModel.fromJson(json["image_logo"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "description": description == null ? null : description,
    "company_id": companyId,
    "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
    "deleted_at": deletedAt,
    "pivot": pivot == null ? null : pivot?.toJson(),
    "image_logo": imageLogo == null ? null : imageLogo?.toJson(),
  };
}
