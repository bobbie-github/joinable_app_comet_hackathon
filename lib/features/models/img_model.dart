


import 'dart:convert';

class ImageModel {
  ImageModel({
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

  factory ImageModel.fromJson(Map<String, dynamic> json) => ImageModel(
    uuid: json["uuid"] == null ? null : json["uuid"],
    collectionName: json["collection_name"] == null ? null : json["collection_name"],
    name: json["name"] == null ? null : json["name"],
    size: json["size"] == null ? null : json["size"],
    url: json["url"] == null ? null : json["url"],
    preview: json["preview"] == null ? null : json["preview"],
  );

  Map<String, dynamic> toJson() => {
    "uuid": uuid == null ? null : uuid,
    "collection_name": collectionName == null ? null : collectionName,
    "name": name == null ? null : name,
    "size": size == null ? null : size,
    "url": url == null ? null : url,
    "preview": preview == null ? null : preview,
  };
}




