import 'package:flutter/cupertino.dart';
import '../Models/RegistrationModel.dart';
import '../Services/RegistrationService.dart';

class RegistrationProvider with ChangeNotifier
{
  RegistrationModel? registrationModel;

  Future<void> LoginProvider ({required String email,required String password})async
  {
    registrationModel = await RegistrationService.LoginService(email: email, password: password);
    notifyListeners();
  }

  Future<void> SignUpProvider ({required String name, required String phone ,required String email,required String password}) async
  {
    registrationModel = await RegistrationService.SignUpService(name: name, phone: phone, email: email, password: password);
    notifyListeners();
  }

}