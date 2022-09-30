import 'dart:convert';

import 'package:final_project/model/privacy.dart';
import 'package:jiffy/jiffy.dart';
import 'package:http/http.dart' as http;
import '../constants/globals.dart';

class PrivacyService{

  static Future<Privacy> addPrivacy(String name, String description) async {
    Map data = {
      "privacy_name": name,
      "description": description,
      "created_time": Jiffy((new DateTime.now())).format('yyyy-MM-dd hh:mm:ss')
    };
    var body = json.encode(data);
    var url = Uri.parse(aboutUsUrl + '/savePrivacy');

    http.Response response = await http.post(
        url,
        headers: headers,
        body: body
    );
    print(response.body);
    Map responseMap = jsonDecode(response.body);
    Privacy privacy = Privacy.fromMap(responseMap);
    return privacy;
  }

  static Future<List<Privacy>> getPrivacy() async{
    var url = Uri.parse(aboutUsUrl + '/getPrivacy');
    http.Response response = await http.get(
        url,
        headers: headers
    );
    print(response.body);
    List responseList = jsonDecode(response.body);
    List<Privacy> privacys = [];
    for(Map privacyMap in responseList)
    {
      Privacy privacy = Privacy.fromMap(privacyMap);
      privacys.add(privacy);
    }
    return privacys;
  }

  static Future<http.Response> updatePrivacy(id,name,description) async {
    var url = Uri.parse(aboutUsUrl + '/editPrivacy/$id');
    Map data = {
      'id': id,
      "privacy_name": name,
      "description": description,
      "created_time": Jiffy((new DateTime.now())).format('yyyy-MM-dd hh:mm:ss')
    };
    var body = json.encode(data);
    http.Response response = await http.put(
        url,
        headers: headers,
        body: body
    );
    print(response.body);
    return response;
  }

  static Future<http.Response> deletePrivacy(int id) async{
    var url = Uri.parse(aboutUsUrl + '/deletePrivacy/$id');
    http.Response response = await http.delete(
      url,
      headers: headers,
    );
    print(response.body);
    return response;
  }
}