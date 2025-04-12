import 'package:flutter/foundation.dart';
class Product_Model
{
  List<dynamic> product;
 Product_Model({required this.product});
 factory Product_Model.fetchdata(Map<String , dynamic> json)
  {
    return Product_Model(product: json["data"]["products"]);
  }
}


class Category_Model
{
  List<dynamic> data;
  Category_Model({required this.data});
  factory Category_Model.fromjson(Map<String , dynamic> json)
  {
    return Category_Model(data: json["data"]["data"]);
  }
}