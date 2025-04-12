import 'package:flutter/cupertino.dart';
import 'package:signup_login/Models/Random_Model.dart';
import 'package:signup_login/Services/Random_Services.dart';

class Random_Provider with ChangeNotifier
{
  Random_Model? model;
  Future <void> getdataprovider() async
  {
    model = await Random_Services.getdata();
    notifyListeners();
  }
}