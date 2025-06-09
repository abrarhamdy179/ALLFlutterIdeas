import 'package:dio/dio.dart';
import '../Models/RegistrationModel.dart';

class RegistrationService
{
  static Dio dio = Dio();

  static Future<RegistrationModel> LoginService ({required String email,required String password}) async
  {
    try
        {
          Response response = await dio.post("https://elsewedyteam.runasp.net/api/Login/CheckUser",data:
          {
            "Email" : email ,
            "Password" : password,
          });

          if(response.statusCode == 200)
            {
              return RegistrationModel.ConvertFromJson(response.data);
            }
          else
            {
              throw Exception("Code not Success! ");
            }
        }
        catch(error)
    {
      throw Exception("You have an Error $error");
    }
  }

  static Future<RegistrationModel> SignUpService ({required String name, required String phone ,required String email,required String password}) async
  {
    try
    {
      Response response = await dio.post("https://elsewedyteam.runasp.net/api/Register/AddUser",data:
      {
        "Name" : name,
        "Email" : email ,
        "Password" : password,
        "Phone" : phone,
      });

      if(response.statusCode == 200)
      {
        return RegistrationModel.ConvertFromJson(response.data);
      }
      else
      {
        throw Exception("Code not Success! ");
      }
    }
    catch(error)
    {
      throw Exception("You have an Error $error");
    }
  }
}