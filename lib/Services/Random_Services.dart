import 'package:dio/dio.dart';
import 'package:signup_login/Models/Random_Model.dart';

class Random_Services
{
  static Dio dio = Dio();
  static Future<Random_Model> getdata()async
  {
    Response response = await dio.get("https://randomuser.me/api/?results=5");
    if(response.statusCode == 200)
      {
        return Random_Model.fetchdata(response.data);
      }
    else
      {
        throw "Issue in data";
      }
  }
}