import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signup_login/Provider/Random_Provider.dart';
import 'package:signup_login/Widget/Random_Widget.dart';
class RandomUser extends StatelessWidget {
  const RandomUser({super.key});

  @override
  Widget build(BuildContext context) {
    Random_Provider providerobj = Provider.of<Random_Provider>(context , listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Rabdom User",
        style: TextStyle(color: Colors.green),),
        centerTitle: true,
      ),
      body: Consumer<Random_Provider>(builder: (context, value, child) {
        var obj = value.model;
        if(obj == null)
          {
            value.getdataprovider();
            return Center(child: CircularProgressIndicator(),);
          }
        else
          {
          return ListView.builder(itemBuilder: (context, index) => RandomWidget(
                name: obj.data[index]["name"]["first"] + obj.data[index]["name"]["last"],
                image: obj.data[index]["picture"]["thumbnail"],
                email: obj.data[index]["email"]
          ),
            itemCount: obj.data.length,
            );
          }
      },
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
      providerobj.getdataprovider();
      },
        child: Icon(Icons.refresh),
      ),
    );

  }
}