import 'dart:convert';

class Prayer_Model
{
 Map<String , dynamic> prayer;
 Prayer_Model({required this.prayer});
 factory Prayer_Model.fetchdata (Map <String , dynamic> json )
 {
   return Prayer_Model(prayer: json["data"]["timings"]);
 }
}