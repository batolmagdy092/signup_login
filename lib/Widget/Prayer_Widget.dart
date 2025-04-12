import 'package:flutter/material.dart';
class PrayerWidget extends StatelessWidget {
  String name;
  String time;
   PrayerWidget({super.key ,
   required this.name, required this.time
   });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      child: Column(
        children: [
          Text(name),
          SizedBox(height: 10,),
          Text(time),
        ],
      ),
    );
  }
}
