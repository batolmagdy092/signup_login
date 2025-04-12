import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class ProductDetail extends StatelessWidget {
String image;
String name;
String des;

   ProductDetail({super.key,
   required this.image, required this.name , required this.des
   });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Consumer(builder: (context, value, child) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Image.network(image),
              SizedBox(height: 10,),
            ListTile(
              title: Text(name),
              subtitle: Text(des),
            ),
            ],
          ),
        );
      },),
    );
  }
}
