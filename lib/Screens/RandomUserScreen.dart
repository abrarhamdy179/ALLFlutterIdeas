import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/RandomUserProvider.dart';
import '../Widgets/RandomUserWidget.dart';
import 'GenderScreen.dart';

class RandomUserScreen extends StatelessWidget {
  const RandomUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Welcome To Random User App")),),
      body: Consumer<RandomUserProvider>(builder: (context, value, child)
      {
        if(value.randomUserModel == null)
          {
            value.GetRandomUserProvider();
            return Center(child: CircularProgressIndicator());
          }
        else
          {

            return Column(
              children: [
                Container(
                  height: 150,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 10),
                    itemCount: value.randomUserModel!.results.length,
                    itemBuilder: (context, index) =>
                    Container(
                      width: 90,
                      height: 90,
                      child: Container(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(value.randomUserModel!.results[index]['picture']['medium']),
                        ),
                      ),
                    ),
                    scrollDirection: Axis.horizontal,),
                ),

                Expanded(
                  child: ListView.builder(
                    itemCount: value.randomUserModel!.results.length,
                    itemBuilder: (context, index) =>
                      RandomUserWidget(
                        title: value.randomUserModel!.results[index]['name']['title'],
                        first: value.randomUserModel!.results[index]['name']['first'],
                        last: value.randomUserModel!.results[index]['name']['last'],
                        location: value.randomUserModel!.results[index]['location']['street']['name'],
                        email: value.randomUserModel!.results[index]['email'],
                        picture: value.randomUserModel!.results[index]['picture']['medium'] ,
                      ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => GenderScreen(gender: "female",),));
                          },
                          child: Icon(Icons.female,color: Colors.pinkAccent,size: 35,)),
                    ),
                    Container(
                      width: 100,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => GenderScreen(gender: "male",),));
                          },
                          child: Icon(Icons.male,color: Colors.lightBlueAccent,size: 35,)),
                    ),

                  ],
                ),

              ],
            );

          }
      },) ,
    );
  }
}
