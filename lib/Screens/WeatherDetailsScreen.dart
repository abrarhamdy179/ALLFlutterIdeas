import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/WeatherProvider.dart';

class WeatherDetailsScreen extends StatelessWidget {
  String city ;
  WeatherDetailsScreen({super.key,required this.city});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<WeatherProvider>(builder: (context, value, child)
      {
        value.GetWeatherProvider(city: city);
        if(value.weatherModel == null || value.weatherModel?.name == null)
          {
            return Center(child: CircularProgressIndicator());
          }
        else
          {
            return Center(
              child: Container(
                width: MediaQuery.of(context).size.width*0.90,
                height: MediaQuery.of(context).size.height*0.50,

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.greenAccent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(value.weatherModel!.name),
                    Text(value.weatherModel!.country),
                    Text(value.weatherModel!.region),
                    Text(value.weatherModel!.localtime),
                    Text(value.weatherModel!.tz_id),
                    Text(value.weatherModel!.temp_c.toString()+" C"),
                  ],
                ),
              ),
            );
          }
      },),
    );
  }
}
