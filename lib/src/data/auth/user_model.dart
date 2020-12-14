// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.id,
    this.uid,
    this.username,
    this.password,
    this.name,
    this.email,
    this.picture,
  });

  String id;
  String uid;
  String username;
  String password;
  String name;
  String email;
  String picture;

  UserModel copyWith({
    String id,
    String uid,
    String username,
    String password,
    String name,
    String email,
    String picture,
  }) =>
      UserModel(
        id: id ?? this.id,
        uid: uid ?? this.uid,
        username: username ?? this.username,
        password: password ?? this.password,
        name: name ?? this.name,
        email: email ?? this.email,
        picture: picture ?? this.picture,
      );

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"] == null ? null : json["id"],
        uid: json["uid"] == null ? null : json["uid"],
        username: json["username"] == null ? null : json["username"],
        password: json["password"] == null ? null : json["password"],
        name: json["name"] == null ? null : json["name"],
        email: json["email"] == null ? null : json["email"],
        picture: json["picture"] == null ? null : json["picture"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "uid": uid == null ? null : uid,
        "username": username == null ? null : username,
        "password": password == null ? null : password,
        "name": name == null ? null : name,
        "email": email == null ? null : email,
        "picture": picture == null ? null : picture,
      };
}
