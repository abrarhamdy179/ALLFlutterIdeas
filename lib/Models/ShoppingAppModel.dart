class ShoppingAppModel
{
  List<dynamic> response;
  ShoppingAppModel({required this.response});
  factory ShoppingAppModel.CongvertFromJson(Map<String,dynamic>jsonData)
  {
    return ShoppingAppModel(response: jsonData['response']);
  }
}