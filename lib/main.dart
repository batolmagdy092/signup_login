import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signup_login/Provider/News_Provider.dart';
import 'package:signup_login/Provider/Prayer_Provider.dart';
import 'package:signup_login/Provider/Random_Provider.dart';
import 'package:signup_login/Screens/Login.dart';
import 'package:signup_login/Screens/Signup.dart';

import 'Provider/Product_Provider.dart';
import 'Provider/Register_Provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=>  User_Provider()),
     ChangeNotifierProvider(create: (context)=> News_App_Provider()),
     ChangeNotifierProvider(create: (context) => Product_Provider(),),
     ChangeNotifierProvider(create: (context) => Prayer_Provider(),),
     ChangeNotifierProvider(create: (context) => Random_Provider(),)
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login(),
      ),
    );
  }
}