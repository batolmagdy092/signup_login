import 'package:dio/dio.dart';
import 'package:signup_login/Models/Product_Model.dart';

class Product_Service{
  static Dio dio = Dio();
  static Future<Product_Model> getdata()async
  {
    Response response = await dio.get("https://student.valuxapps.com/api/home");
    if(response.statusCode == 200)
      {
        return Product_Model.fetchdata(response.data);
      }
    else
      {
        throw "Issue in Service";
      }
  }


  static Future<Category_Model> getdataService2()async
  {
    Response response = await dio.get("https://student.valuxapps.com/api/categories");
    if(response.statusCode == 200)
    {
      return Category_Model.fromjson(response.data);
    }
    else
    {
      throw "Issue in Service";
    }
  }
}