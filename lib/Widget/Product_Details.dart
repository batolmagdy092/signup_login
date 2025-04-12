import 'package:flutter/material.dart';
class ProductDetails extends StatelessWidget {
  String image;
  String name;
   ProductDetails({super.key,
   required this.image , required this.name
   });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      child: Column(
        children: [
          Image.network(image,
          width: 100,
          ),
          SizedBox(height: 10,),
          Text(name),
        ],
      ),
    );
  }
}