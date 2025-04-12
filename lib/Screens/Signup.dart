import 'package:flutter/material.dart';
import 'package:signup_login/Provider/Register_Provider.dart';
import 'package:provider/provider.dart';
import 'package:signup_login/Screens/Login.dart';
class Signup extends StatelessWidget {

  final TextEditingController email = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final FormKey = GlobalKey<FormState>();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup",
        style: TextStyle(fontSize: 20,),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Form(
      key: FormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: name,
            decoration: InputDecoration(label: Text("Name"),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
              prefixIcon: Icon(Icons.person),
            ),
            validator: (value) {
              if(value == null || value.isEmpty)
                {
                  return "name is invalid";
                }
              return null;
            },
          ),
          SizedBox(height: 20,),

          TextFormField(
            controller: email,
            decoration: InputDecoration(label: Text("Email"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              prefixIcon: Icon(Icons.email),
            ),
            validator: (value) {
              if(value == null || value.isEmpty)
                {
                  return "email is invalid";
                }
              return null;
            },
          ),
          SizedBox(height: 20,),

          TextFormField(
            controller: password,
            decoration: InputDecoration(label: Text("Password"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              prefixIcon: Icon(Icons.password),
            ),
            validator: (value)
            {
              if(value == null || value.isEmpty)
                {
                  return "password is invalid";
                }
              return null;
            },
            obscureText: true,
          ),
          SizedBox(height: 20,),

          TextFormField(
            controller: phone,
            decoration: InputDecoration(label: Text("Phone"),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              prefixIcon: Icon(Icons.phone),
            ),
            validator: (value) {
              if(value == null || value.isEmpty)
                {
                  return "phone is invalid";
                }
              return null;
            },
          ),
          SizedBox(height: 20,),
          
          SizedBox(height: 30,),
          
          Consumer<User_Provider>(
            builder:(context , value , child)
              {
                return ElevatedButton(onPressed: ()async{
                  if(FormKey.currentState!.validate())
                    {
                        await value.RegisterProvider(name: name.text, password: password.text, email: email.text, phone: phone.text);
                    }
                  if(value.model?.status==true)
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                    }

                },
                    child: Text("Sign Up"));
              }
          ),
          TextButton(onPressed: (){
            Navigator.pop(context);
          },
              child: Text("Are You Have Account"))
        ],
      ),
        
      ),
    );
  }
}