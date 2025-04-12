import 'package:flutter/material.dart';
import 'package:signup_login/Screens/News_Search.dart';
import 'package:signup_login/Screens/Prayer_Time.dart';
import 'package:signup_login/Screens/Products.dart';
import 'package:signup_login/Screens/Random_User.dart';

class ChooseCategory extends StatelessWidget {
  const ChooseCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Choose From this List",
          style: TextStyle(fontSize: 30, color: Colors.green),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // يخليهم في نص الشاشة
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SearchScreen()),
                      );
                    },
                    child: Text("News App"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Products()),
                      );
                    },
                    child: Text("Products App"),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PrayerTime()),
                  );
                },
                child: Text("Prayer Time"),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RandomUser()),
                  );
                },
                child: Text("Random User"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
