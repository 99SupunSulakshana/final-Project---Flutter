// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

PrivacyModel privacyModelFromJson(String str) =>
    PrivacyModel.fromJson(json.decode(str));

String privacyModelToJson(PrivacyModel data) => json.encode(data.toJson());

class PrivacyModel {
  PrivacyModel({
    this.id,
    this.privacy_name,
    this.description,
    this.created_time,
  });

  String? id;
  String? privacy_name;
  DateTime? description;
  DateTime? created_time;

  factory PrivacyModel.fromJson(Map<String, dynamic> json) => PrivacyModel(
        id: json["id"],
        privacy_name: json["privacy_name"],
        description: json["description"],
        created_time: DateTime.parse(json["created_time"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "privacy_name": privacy_name,
        "description": description,
        "created_time": created_time!.toIso8601String(),
      };
}
