import 'package:flutter/material.dart';
class NewsWidget extends StatelessWidget {
  String image ;
  String title;
  String descreption;
   NewsWidget({super.key,
   required this.image , required this.title , required this.descreption
   });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      child: Column(
        children: [
          Image.network(image),
          SizedBox(height: 10,),

          Text(title),
          SizedBox(height: 10,),

          Text(descreption),
        ],
      ),
    );
  }
}
