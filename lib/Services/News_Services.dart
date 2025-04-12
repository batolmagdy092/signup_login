import 'package:dio/dio.dart';
import 'package:signup_login/Models/News_Model.dart';

class News_App_Services
{
  static Dio dio = Dio();
  static Future<New_app_Model> getdata(String category) async{
    Response response = await dio.get("https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=84384f38d5e24f87b6e9959fadfdc7f2");
    if(response.statusCode == 200)
      {
        return New_app_Model.fetchdata(response.data);
      }
    else{
      throw "Issue in category";
    }
  }
}
//newsssss
