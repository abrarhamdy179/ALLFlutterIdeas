import 'package:flutter/cupertino.dart';
import '../Models/RandomUserModel.dart';
import '../Services/RandomUserService.dart';

class RandomUserProvider with ChangeNotifier
{
  RandomUserModel? randomUserModel;
  Future<void> GetRandomUserProvider () async
  {
    randomUserModel = await Randomuserservice.GetRandomUserService();
    notifyListeners();
  }

  Future<void> GetGenderProvider ({required String gender}) async
  {
    randomUserModel = await Randomuserservice.GetGenderService(gender: gender);
    notifyListeners();
  }
}
