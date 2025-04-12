import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signup_login/Provider/Prayer_Provider.dart';
import 'package:signup_login/Widget/Prayer_Widget.dart';
class PrayerTime extends StatelessWidget {
  const PrayerTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prayer Time"),
        centerTitle: true,
      ),
      body: Consumer<Prayer_Provider>(builder: (context, value, child)
    {
      var obj = value.model;
      if (obj == null) {
        value.GetDataProvider();
        return Center(child: CircularProgressIndicator(),);
      }
    else
  {
    return ListView.builder(itemBuilder: (context, index) {
      final Prayername = obj.prayer.keys;
      final prayertime = obj.prayer.values;



      return PrayerWidget(name: Prayername.elementAt(index),
          time: prayertime.elementAt(index));
    },
    itemCount: obj.prayer.length,
    );


  }
      },
      ),
    );
  }
}
