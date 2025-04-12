import 'package:flutter/foundation.dart';

class User_Model{
  String message;
  bool status;

  User_Model({required this.message ,
  required this.status,
  });
  factory User_Model.fetchuser (Map<String , dynamic> json)
  {
    return User_Model(message: json["message"], status: json["status"]);
  }
}