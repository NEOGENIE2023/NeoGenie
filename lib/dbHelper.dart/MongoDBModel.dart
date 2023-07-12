import 'dart:convert';
import 'package:mongo_dart/mongo_dart.dart';

MongoDBModel mongoDBModelFromJson(String str) =>
    MongoDBModel.fromJson(json.decode(str));

String mongoDbModelToJson(MongoDBModel data) => json.encode(data.toJson());

class MongoDBModel {
  MongoDBModel({
    required this.id,
    required this.email,
    required this.username,
    required this.password,
    required this.phonenum,
  });

  ObjectId id;
  String email;
  String username;
  String password;
  String phonenum;

  factory MongoDBModel.fromJson(Map<String, dynamic> json) => MongoDBModel(
        id: json['id'],
        email: json['email'],
        username: json['username'],
        password: json['password'],
        phonenum: json['phonenum'],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "username": username,
        "password": password,
        "phonenum": phonenum,
      };
}
