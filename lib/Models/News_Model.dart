class New_app_Model
{
  List<dynamic> news;
  New_app_Model({
    required this.news
});
  factory New_app_Model.fetchdata (Map<String , dynamic> json)
  {
    return New_app_Model(news: json["articles"]);
  }
}