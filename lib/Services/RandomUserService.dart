import 'package:dio/dio.dart';
import '../Models/RandomUserModel.dart';

class Randomuserservice
{
  static Dio dio = Dio();
  static Future<RandomUserModel> GetRandomUserService ()async
  {
    try
        {
          Response response = await dio.get("https://randomuser.me/api/?results=20");
          if(response.statusCode == 200)
            {
              return RandomUserModel.ConverFronJson(response.data);
            }
          else
            {
              throw Exception("Code Not Success");
            }
        }
        catch(error)
    {
      throw Exception("You Have An Error $error");
    }
  }

  static Future<RandomUserModel> GetGenderService ({required String gender})async
  {
    try
        {
          Response response = await dio.get("https://randomuser.me/api/?gender=$gender&results=50");
          if(response.statusCode == 200)
            {
              return RandomUserModel.ConverFronJson(response.data);
            }
          else
            {
              throw Exception("Code not success");
            }
        }
        catch(error)
    {
      throw Exception("You have an error");
    }
  }
}

