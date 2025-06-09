import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/NewsAppProvider.dart';
import '../Widgets/NewsWidget.dart';

class NewsDetailsScreen extends StatelessWidget {
  String category;
   NewsDetailsScreen({super.key,required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Welcome to $category Screen")),),
      body: Consumer<NewsAppProvider>(builder: (context, value, child) {
        value.GetNewsProvider(category: category );
        if(value.newsAppModel == null)
          {
            return Center(child: CircularProgressIndicator());
          }
        else
          {
            return ListView.builder(itemBuilder: (context, index) =>
                NewsWidget
                  (
                  title: value.newsAppModel!.articles[index]['title']??"",
                  author: value.newsAppModel!.articles[index]['author']??"",
                  description: value.newsAppModel!.articles[index]['description']??"",
                  urlToImage: value.newsAppModel!.articles[index]['urlToImage']??"",
                ),
              itemCount: value.newsAppModel!.articles.length,
            );
          }
      },),
    );
  }
}
