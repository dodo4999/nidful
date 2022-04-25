// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'dart:convert';

ProfileModel profileModelFromJson(String str) =>
    ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  ProfileModel({
    required this.id,
    required this.userId,
    required this.igUrl,
    required this.fbUrl,
    required this.profileImage,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  int userId;
  String igUrl;
  String fbUrl;
  String profileImage;
  DateTime createdAt;
  DateTime updatedAt;

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        id: json["id"],
        userId: json["user_id"],
        igUrl: json["ig_url"],
        fbUrl: json["fb_url"],
        profileImage: json["profile_image"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "ig_url": igUrl,
        "fb_url": fbUrl,
        "profile_image": profileImage,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
