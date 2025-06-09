import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'NewsDetailsScreen.dart';

class CategoriesOfNews extends StatelessWidget {
  const CategoriesOfNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width*0.95,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Container(
                     width: 150,
                     height: 150,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color: Colors.cyan),
                     child: GestureDetector(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => NewsDetailsScreen(category: "sport",),));
                       },
                       child: Center(child: Text("Sport",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                     ),
                   ),

                   Container(
                     width: 150,
                     height: 150,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color: Colors.greenAccent),
                     child: GestureDetector(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => NewsDetailsScreen(category: "science",),));
                       },
                       child: Center(child: Text("Science",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                     ),
                   ),
                 ],
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Container(
                     width: 150,
                     height: 150,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color: Colors.greenAccent),
                     child: GestureDetector(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => NewsDetailsScreen(category: "business",),));
                       },
                       child: Center(child: Text("Business",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                     ),
                   ),

                   Container(
                     width: 150,
                     height: 150,
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color: Colors.cyan),
                     child: GestureDetector(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => NewsDetailsScreen(category: "politics",),));
                       },
                       child: Center(child: Text("Politics",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                     ),
                   ),
                 ],
               ),
             ],
          ),
        ),
      ),
    );
  }
}
