class WeatherModel
{
  String name, country, region, tz_id,localtime;
  double temp_c;
  WeatherModel({required this.name, required this.country, required this.localtime,required this.region,required this.tz_id,required this.temp_c});
  factory WeatherModel.ConvertFromJson(Map<String,dynamic>jsonData)
  {
    return WeatherModel(
        name: jsonData['location']['name'],
        country: jsonData['location']['country'],
        localtime: jsonData['location']['localtime'],
        region: jsonData['location']['region'],
        tz_id: jsonData['location']['tz_id'],
      temp_c: jsonData['current']['temp_c'],
    );
  }
}