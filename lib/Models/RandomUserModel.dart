class RandomUserModel
{
  List<dynamic>results;
  RandomUserModel({required this.results});
  factory RandomUserModel.ConverFronJson(Map<String, dynamic>jsonData)
  {
    return RandomUserModel(results: jsonData['results']);
  }
}