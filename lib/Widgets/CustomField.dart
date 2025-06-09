import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  IconData iconName ;
  TextEditingController controllerName ;
  String FieldName;
  bool isPassword ;
  CustomField({super.key, required this.iconName,required this.controllerName, required this.FieldName, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controllerName,
      obscureText: isPassword,
      decoration: InputDecoration(hintText:FieldName , suffixIcon:Icon(iconName) ),
      validator: (value)
      {
        if(value == null || value.isEmpty)
        {
          return "Please Enter a valid Data";
        }
        return null ;
      },
    );
  }
}
