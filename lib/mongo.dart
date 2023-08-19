import 'dart:convert';
import 'dart:developer';
import 'dart:ffi';
import 'package:flutter/foundation.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'number.dart';

const MONGO_CONN_URL =
    "mongodb+srv://test:test@cluster0.nx3yizo.mongodb.net/?retryWrites=true&w=majority";
const USER_COLLECTION = "data_usage";

MongoDBModel1 mongoDBModelFromJson(String str) =>
    MongoDBModel1.fromJson(json.decode(str));

String mongoDbModelToJson(MongoDBModel1 data) => json.encode(data.toJson());

class MongoDBModel1 {
  MongoDBModel1({
    required this.Facebook_usage,
    required this.Youtube_usage,
    required this.Whatsapp_usage,
    required this.Telegram_usage,
    required this.Tiktok_usage,
    required this.Web_browsing_usage,
    required this.Total_usage,
    required this.phone_number,
  });

  double Facebook_usage;
  double Youtube_usage;
  double Whatsapp_usage;
  double Telegram_usage;
  double Tiktok_usage;
  double Web_browsing_usage;
  double Total_usage;
  int phone_number;

  factory MongoDBModel1.fromJson(Map<String, dynamic> json) => MongoDBModel1(
        Facebook_usage: json['Facebook usage'],
        Youtube_usage: json['Youtube usage'],
        Whatsapp_usage: json['Whatsapp usage'],
        Telegram_usage: json['Telegram usage'],
        Tiktok_usage: json['Tiktok usage'],
        Web_browsing_usage: json['Web browsing usage'],
        Total_usage: json['Total usage'],
        phone_number: json['phone_number'],
      );

  Map<String, dynamic> toJson() => {
        "Facebook usage": Facebook_usage,
        "Youtube usage": Youtube_usage,
        "Whatsapp usage": Whatsapp_usage,
        "Telegram usage": Telegram_usage,
        "Tiktok usage": Tiktok_usage,
        "Web browsing usage": Web_browsing_usage,
        "Total usage": Total_usage,
        "phone_number": phone_number,
      };
}

class MongoDatabase1 {
  static var db, userCollection;
  static connect() async {
    db = await Db.create(MONGO_CONN_URL);
    await db.open();
    inspect(db);
    userCollection = db.collection(USER_COLLECTION);
  }

  static Future<String> insert(MongoDBModel1 data) async {
    await connect();
    try {
      var result = await userCollection.insertOne(data.toJson());
      final datasetCount = await userCollection
          .count(where.eq('phone_number', int.parse(numbersend())));
      putcount(datasetCount);
      print(datasetCount);

      if (result.isSuccess) {
        return "Go back to the Login page !";
      } else {
        return "Something Went Wrong !";
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      return e.toString();
    }
  }
}
