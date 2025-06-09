import 'package:flutter/cupertino.dart';
import '../Models/NewsAppModel.dart';
import '../Services/NewsAppService.dart';

class NewsAppProvider with ChangeNotifier
{
  NewsAppModel? newsAppModel;
  Future<void> GetNewsProvider ({required String category})async
  {
    newsAppModel = await NewsAppService.GetNewsService(category: category);
    notifyListeners();
  }
}