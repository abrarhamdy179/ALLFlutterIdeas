import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CategoriesOfNews.dart';
import 'E_CommerceScreen.dart';
import 'RandomUserScreen.dart';
import 'WeatherSearch.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Welcome To Home ")),),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width*0.90,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan
                      ),
                        onPressed: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder:  (context) => WeatherSearch(),));
                        },
                        child: Center(child: Text("Weather App",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)))),
                  ),

                  Container(
                    width: 150,
                    height: 150,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amberAccent
                        ),
                        onPressed: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RandomUserScreen(),));
                        },
                        child: Center(child: Text("Random User",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)))),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amberAccent
                        ),
                        onPressed: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => E_CommerceScreen(),));
                        },
                        child: Center(child: Text("E-commerce",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)))),
                  ),

                  Container(
                    width: 150,
                    height: 150,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyan
                        ),
                        onPressed: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CategoriesOfNews(),));
                        },
                        child: Center(child: Text("News App",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)))),
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
