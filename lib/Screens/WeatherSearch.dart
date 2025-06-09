import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'WeatherDetailsScreen.dart';

class WeatherSearch extends StatelessWidget {

  TextEditingController searchTxt =TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  WeatherSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
       body: Center(
         child: Container(
           width: MediaQuery.of(context).size.width*0.90,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Form(
                 key: formkey,
                 child: TextFormField(
                   decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
                   controller: searchTxt,
                   validator: (value)
                   {
                     if(value == null || value.isEmpty)
                       {
                         return "Enter valid Input";
                       }
                     return null;
                   },
                 ),
               ),
               SizedBox(height: 15,),
               ElevatedButton(
                   onPressed: ()
                   {
                     if(formkey.currentState!.validate())
                       {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => WeatherDetailsScreen(city: searchTxt.text,),));
                       }
                   },
                   child: Text("Search"),
               ),
             ],
           ),
         ),
       ),
    );
  }
}
