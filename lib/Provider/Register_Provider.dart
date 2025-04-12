import 'package:flutter/foundation.dart';
import 'package:signup_login/Models/Register_model.dart';
import 'package:signup_login/Services/Register_Service.dart';

class User_Provider with ChangeNotifier
{
  User_Model? model;

  Future<void> RegisterProvider({required String name,
    required String password , required String email , required String phone}) async
  {
    model = await User_Service.RegisterService(name: name, password: password, email: email, phone: phone);
    notifyListeners();
  }

  Future<void> LoginProvider({
    required String email , required String password
})async{
    model = await User_Service.LoginService(email: email, password: password);
    notifyListeners();
  }
}