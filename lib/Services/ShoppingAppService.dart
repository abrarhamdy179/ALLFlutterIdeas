import 'package:dio/dio.dart';
import '../Models/ShoppingAppModel.dart';

class ShoppingAppService
{
  static Dio dio = Dio();
  static Future<ShoppingAppModel> GetDataService () async
  {
    try
        {
          Response response = await dio.get("https://elsewedyteam.runasp.net/api/Product/GetProducts");
          if(response.statusCode == 200)
            {
              return ShoppingAppModel.CongvertFromJson(response.data);
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