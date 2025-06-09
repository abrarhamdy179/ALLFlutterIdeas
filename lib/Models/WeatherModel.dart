class WeatherModel
{
  String name, country, region, tz_id,localtime;
  WeatherModel({required this.name, required this.country, required this.localtime,required this.region,required this.tz_id});
  factory WeatherModel.ConvertFromJson(Map<String,dynamic>jsonData)
  {
    return WeatherModel(
        name: jsonData['location']['name'],
        country: jsonData['location']['country'],
        localtime: jsonData['location']['localtime'],
        region: jsonData['location']['region'],
        tz_id: jsonData['location']['tz_id']
    );
  }
}