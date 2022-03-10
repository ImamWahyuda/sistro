// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';
import 'package:sistro_app/screen/login.dart';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String username;
  String password;

  //DateTime createdAt;

  UserModel({
    required this.username,
    required this.password,
    // this.createdAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        username: json["username"],
        password: json["password"],

        //createdAt: DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,

        //"createdAt": createdAt.toIso8601String(),
      };
}
