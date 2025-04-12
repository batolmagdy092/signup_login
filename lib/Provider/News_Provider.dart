import 'package:flutter/material.dart';
import 'package:signup_login/Models/News_Model.dart';
import 'package:signup_login/Services/News_Services.dart';

class News_App_Provider with ChangeNotifier
{
  New_app_Model? newsmodel;

  Future<void> Fetchnewsdata (String category) async{
    newsmodel = await News_App_Services.getdata(category);
    notifyListeners();
  }
}