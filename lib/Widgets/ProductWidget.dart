import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  String description,name,imageUrl;
  int price;
  ProductWidget({super.key,required this.name,required this.description,required this.price,required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          imageUrl.isNotEmpty ? Container(
            width: 150,
            height: 150,
            child: CircleAvatar(backgroundImage: NetworkImage(imageUrl),)
          ) : Text("Image not found"),
          name.isNotEmpty ? Center(child: Text(name)) : Text("Name not found") ,
          /*description.isNotEmpty ? Padding(
            padding: EdgeInsets.only(left: 20),
            child: Center(child: Text(description)),
          ): Text("description not found"),*/
          Text(price.toString()+"\$",style: TextStyle(color: Colors.green),) ,
        ],
      ),
    );
  }
}
