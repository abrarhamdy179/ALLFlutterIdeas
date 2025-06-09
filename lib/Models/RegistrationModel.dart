class RegistrationModel
{
  bool status ;
  String message ;
  RegistrationModel({required this.status, required this.message});

  factory RegistrationModel.ConvertFromJson (Map<String,dynamic>jsonData)
  {
    return RegistrationModel(status: jsonData['status'],message: jsonData['message']);
  }
}