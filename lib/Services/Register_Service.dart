import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:signup_login/Models/Register_model.dart';

class User_Service{
  static Dio dio = Dio();
  static Future<User_Model> RegisterService({required String name,
  required String password , required String email , required String phone
  }) async{
    Response response = await dio.post("https://elsewedyteam.runasp.net/api/Register/AddUser", data: {
      "Name":name,
      "Password" :password,
      "Email":email,
      "Phone":phone
    });
    if(response.statusCode == 200)
      {
        return User_Model.fetchuser(response.data);
      }
    else{
      throw "Issue in register service";
    }
  }
  static Future<User_Model> LoginService({required String email , required String password})async{
    Response response = await dio.post("https://elsewedyteam.runasp.net/api/Login/CheckUser",data: {
      "Email":email,
      "Password" :password,
    });
    if(response.statusCode == 200)
      {
        return User_Model.fetchuser(response.data);
      }
    else {
      throw "Issue in register service";
    }
  }
}
//ghmfhmfhm