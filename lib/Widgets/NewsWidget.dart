import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  String author ,title,description,urlToImage;
  NewsWidget({super.key,required this.author,required this.title,required this.description,required this.urlToImage});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20), side: BorderSide(color: Colors.black,width: 3)),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          urlToImage.isNotEmpty ?
          Container(
            width: 160,
              height: 160,
              child: Image.network(urlToImage,errorBuilder: (context, error, stackTrace) => Icon(Icons.error),)
          )
              : Text("Image Not found"),
          title.isNotEmpty ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title),
          ): Text("Title Not found"),
          author.isNotEmpty ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(author),
          ): Text("Author Not found"),
          description.isNotEmpty ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(description),
          ): Text("Description Not found"),
        ],
      ),
    );
  }
}
