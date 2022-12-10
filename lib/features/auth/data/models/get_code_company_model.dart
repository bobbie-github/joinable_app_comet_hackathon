
class GetCodeCompanyModel {
  GetCodeCompanyModel({
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
  ImageProfile? imageProfile;


  factory GetCodeCompanyModel.fromJson(Map<String, dynamic> json) => GetCodeCompanyModel(
    id: json["id"],
    joinableCode: json["joinable_code"],
    name: json["name"],
    slogan: json["slogan"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    imageProfile: ImageProfile.fromJson(json["image_profile"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "joinable_code": joinableCode,
    "name": name,
    "slogan": slogan,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "deleted_at": deletedAt,
    "image_profile": imageProfile?.toJson(),
  };
}

class ImageProfile {
  ImageProfile({
    this.uuid,
    this.collectionName,
    this.name,
    this.size,
    this.url,
    this.preview,
  });

  String? uuid;
  String? collectionName;
  String? name;
  int? size;
  String? url;
  String? preview;

  factory ImageProfile.fromJson(Map<String, dynamic> json) => ImageProfile(
    uuid: json["uuid"],
    collectionName: json["collection_name"],
    name: json["name"],
    size: json["size"],
    url: json["url"],
    preview: json["preview"],
  );

  Map<String, dynamic> toJson() => {
    "uuid": uuid,
    "collection_name": collectionName,
    "name": name,
    "size": size,
    "url": url,
    "preview": preview,
  };
}
