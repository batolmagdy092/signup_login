class Random_Model
{
  List<dynamic> data;
  Random_Model({required this.data});

  factory Random_Model.fetchdata(Map<String , dynamic> json)
  {
    return Random_Model(data: json["results"]);
  }
}