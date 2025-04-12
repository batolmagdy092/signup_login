import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signup_login/Provider/News_Provider.dart';
import 'package:signup_login/Screens/News_Screen.dart';
class SearchScreen extends StatelessWidget {
   SearchScreen({super.key});
   final FormKey = GlobalKey<FormState>();
   final TextEditingController categorycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      body: Form(
        key: FormKey,
          child: Column(
            children: [
              TextFormField(
                controller: categorycontroller,
                decoration: InputDecoration(
                  label: Text("Category"),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if(value == null || value.isEmpty)
                    {
                      return "please enter in text feild";
                    }
                },
              ),
              SizedBox(height: 20,),

              Consumer<News_App_Provider>(builder: (context, value, child) {
                return ElevatedButton(onPressed: (){
                  if(FormKey.currentState!.validate())
                    {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => NewsScreen(category: categorycontroller.text,),));
                    }

                },
                    child: Text("Search"));

              },)

            ],
          )),
    );
  }
}
