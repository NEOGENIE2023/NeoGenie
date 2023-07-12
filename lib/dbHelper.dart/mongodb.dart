import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/dbHelper.dart/constant.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'MongoDBModel.dart';

class MongoDatabase {
  static var db, userCollection;
  static connect() async {
    db = await Db.create(MONGO_CONN_URL);
    await db.open();
    inspect(db);
    userCollection = db.collection(USER_COLLECTION);
  }

  static Future<String> insert(MongoDBModel data) async {
    try {
      var result = await userCollection.insertOne(data.toJson());
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
