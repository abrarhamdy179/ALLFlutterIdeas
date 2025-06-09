import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RandomUserWidget extends StatelessWidget {
  String title,first,last,location,email,picture;
  RandomUserWidget({super.key,required this.title,required this.first,required this.last,required this.email,required this.location,required this.picture});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: picture.isNotEmpty ? Image.network(picture) : Text("Image is Not Found") ,
      title: title.isNotEmpty || first.isNotEmpty || last.isNotEmpty ? Text(title + first + last) : Text("Name is Not Found") ,
      subtitle: location.isNotEmpty ? Text(location,) : Text("Location is not found") ,
      trailing: email.isNotEmpty ? Text(email) : Text("Email is not found") ,
    );
  }
}
