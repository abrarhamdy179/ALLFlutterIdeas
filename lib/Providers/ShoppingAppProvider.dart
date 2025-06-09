import 'package:flutter/foundation.dart';
import '../Models/ShoppingAppModel.dart';
import '../Services/ShoppingAppService.dart';

class ShoppingAppProvider with ChangeNotifier
{
  ShoppingAppModel? shoppingAppModel;

  Future<void> GetDataProvider () async
  {
    shoppingAppModel = await ShoppingAppService.GetDataService();
    notifyListeners();
  }
}