import 'package:flutter/material.dart';
class RandomWidget extends StatelessWidget {
  String name;
  String image ;
  String email;
   RandomWidget({super.key,
   required this.name, required this.image , required this.email
   });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          CircleAvatar(
            child:  Image.network(image),
          ),
          Column(
          children: [
         Text(name),
            SizedBox(height: 10,),
            Text(email),
          ],
          )
        ],
      ),
    );
  }
}
