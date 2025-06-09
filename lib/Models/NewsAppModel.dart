class NewsAppModel
{
  List<dynamic> articles;
  NewsAppModel({required this.articles});
  factory NewsAppModel.ConvertFromJson (Map<String,dynamic>jsonData)
  {
    return NewsAppModel(articles: jsonData['articles']);
  }
}