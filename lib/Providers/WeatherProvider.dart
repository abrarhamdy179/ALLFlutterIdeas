import 'package:flutter/cupertino.dart';
import '../Models/WeatherModel.dart';
import '../Services/WeatherService.dart';

class WeatherProvider with ChangeNotifier
{
  WeatherModel? weatherModel;
  Future<void> GetWeatherProvider ({required String city})async
  {
    weatherModel = await WeatherService.GetWeatherService(city: city);
    notifyListeners();
  }
}