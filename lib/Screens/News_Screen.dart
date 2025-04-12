import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signup_login/Provider/News_Provider.dart';
import 'package:signup_login/Widget/News_Widget.dart';
class NewsScreen extends StatelessWidget {
  String category;
   NewsScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News App"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Consumer<News_App_Provider>(builder: (context, value, child) {
        var obj = value.newsmodel;
        if(obj == null)
          {
            value.Fetchnewsdata(category);
            return Center(child: CircularProgressIndicator());
          }
        else{
          return ListView.builder(
              itemBuilder: (context, index) =>  NewsWidget(
                  image: obj.news[index]["urlToImage"]?? "no image",
                  title: obj.news[index]["title"]?? "null",
                  descreption: obj.news[index]["description"]?? "null"),
            itemCount: obj.news.length,
          );
        }
      },),
    );
  }
}