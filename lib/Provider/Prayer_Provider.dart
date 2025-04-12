import 'package:flutter/cupertino.dart';
import 'package:signup_login/Models/Prayer_Model.dart';
import 'package:signup_login/Services/Prayer_Service.dart';

class Prayer_Provider with ChangeNotifier
{
  Prayer_Model? model;
  Future<void> GetDataProvider() async
  {
    model = await Prayer_Service.getdata();
    notifyListeners();
  }
}