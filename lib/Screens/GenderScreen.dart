import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/RandomUserProvider.dart';
import '../Widgets/RandomUserWidget.dart';

class GenderScreen extends StatelessWidget {
  String gender;
  GenderScreen({super.key,required this.gender});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<RandomUserProvider>(builder: (context, value, child)
      {
        if(value.randomUserModel == null)
          {
            value.GetGenderProvider(gender: gender);
            return Center(child: CircularProgressIndicator());
          }
        else
          {
            return ListView.builder(
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
            );

      }
      },),
    );
  }
}
