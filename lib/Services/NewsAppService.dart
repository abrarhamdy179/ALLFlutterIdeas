import 'package:dio/dio.dart';
import '../Models/NewsAppModel.dart';

class NewsAppService
{
  static Dio dio = Dio();

  static Future<NewsAppModel> GetNewsService ({required String category}) async
  {
    try
        {
          Response response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=c16ba5ee73244f9e825b17e774fe5b2a');
          if(response.statusCode == 200)
            {
              return NewsAppModel.ConvertFromJson(response.data);
            }
          else
            {
              throw Exception("Code Not success");
            }
        }
        catch(error)
    {
      throw Exception("You have an error $error");
    }
  }

}