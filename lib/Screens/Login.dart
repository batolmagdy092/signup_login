import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signup_login/Provider/Register_Provider.dart';
import 'package:signup_login/Screens/Choose_category.dart';
import 'package:signup_login/Screens/News_Screen.dart';
import 'package:signup_login/Screens/News_Search.dart';
import 'package:signup_login/Screens/Signup.dart';
class Login extends StatelessWidget {
   Login({super.key});
  final TextEditingController email = TextEditingController();
   final TextEditingController password = TextEditingController();
   final Formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login",
        style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),

      body: Form(
        key: Formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: email,
              decoration: InputDecoration(
              label: Text("Email"),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 20,),

            TextFormField(
              controller: password,
              decoration: InputDecoration(
                label: Text("Password"),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                prefixIcon: Icon(Icons.password),
              ),
            ),
            SizedBox(height: 20,),

            Consumer<User_Provider>
              (builder: (context, value, child) {
              return ElevatedButton(onPressed: ()async{
                if(Formkey.currentState!.validate())
                  {
                    await value.LoginProvider(email: email.text, password: password.text);
                  }
                if(value.model?.status==true)
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseCategory(),));
                  }
                else{
               ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.model?.message ?? "Something went wrong"),
               backgroundColor: Colors.red,
               ));
                }
              },
                child: Text("Login"),
              );
            },
            ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),));
            },
                child: Text("Don't Have Account")),
          ],
          )),
    );
  }
}
