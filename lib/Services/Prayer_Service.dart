import 'package:dio/dio.dart';
import 'package:signup_login/Models/Prayer_Model.dart';

class Prayer_Service
{
  static Dio dio = Dio();
  static Future<Prayer_Model> getdata()async
  {
    Response response = await dio.get("http://api.aladhan.com/v1/timingsByCity?city=Giza&country=Egypt&method=2");
    if(response.statusCode == 200)
      {
        return Prayer_Model.fetchdata(response.data);
      }
    else
      {
        throw "Issue in api";
      }
  }
}