import 'package:dio/dio.dart';
import '../Models/WeatherModel.dart';

class WeatherService
{
  static Dio dio =Dio();
  static Future<WeatherModel> GetWeatherService ({required String city})async
  {
    try
        {
          Response response = await dio.get('http://api.weatherapi.com/v1/current.json?key=9c5233b5f7774f30b03144924250704&q=$city&aqi=yes');
          if(response.statusCode == 200)
            {
              return WeatherModel.ConvertFromJson(response.data);
            }
          else
            {
              throw Exception("Code not success");
            }
        }
        catch(error)
    {
      throw Exception("You have an error $error");
    }
  }
}
