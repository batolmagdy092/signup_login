import 'package:flutter/cupertino.dart';
import 'package:signup_login/Models/Product_Model.dart';
import 'package:signup_login/Services/Product_Services.dart';

class Product_Provider with ChangeNotifier {
  Product_Model? productmodel;
  Category_Model? categorymodel;

  Future<void> getproduct() async {
    productmodel = await Product_Service.getdata();
    notifyListeners();
  }

  Future<void> getproductProvider2 () async{
    categorymodel = await Product_Service.getdataService2();
    notifyListeners();
  }

}