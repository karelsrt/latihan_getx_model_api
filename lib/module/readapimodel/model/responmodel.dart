// To parse this JSON data, do
//
//     final responModel = responModelFromJson(jsonString);

import 'dart:convert';

ResponModel responModelFromJson(String str) =>
    ResponModel.fromJson(json.decode(str));

String responModelToJson(ResponModel data) => json.encode(data.toJson());

class ResponModel {
  final List<Datum>? data;

  ResponModel({
    this.data,
  });

  factory ResponModel.fromJson(Map<String, dynamic> json) => ResponModel(
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  final int? id;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? avatar;

  Datum({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}
