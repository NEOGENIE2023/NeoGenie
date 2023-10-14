import 'package:flutter/material.dart';
//import 'package:mongo_dart/mongo_dart.dart';

var phonenum = "NeoGenie";
var username = "NeoGenie";
var email = "NeoGenie@gmail.com";
int count = 0;

void numbersave(int num) {
  phonenum = num.toString();
}

String numbersend() {
  return phonenum;
}

void usernamesave(String user) {
  username = user.toString();
  //print(phonenum);
}

String usernamesend() {
  return username;
}

void emailsave(String user) {
  email = user.toString();
  //print(phonenum);
}

String emailsend() {
  return email;
}

void putcount(int user) {
  count = user;
  //print(phonenum);
}

int getcount() {
  return count;
}
