import 'dart:convert';

import 'package:final_project/constants/globals.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../model/howtoguide.dart';

class GuideServices{


  static Future<HowToGuide> addGuide(String title, description) async {
    Map data = {
      "title": title,
      "description": description
    };
    
    var body = json.encode(data);
    var url = Uri.parse(aboutUsUrl + '/saveGuide');

    http.Response response = await http.post(
      url,
      headers: headers,
      body: body
    );

    print(response.body.toString());

    Map responseMap = jsonDecode(response.body.toString());
    HowToGuide howtoguide = HowToGuide.fromMap(responseMap);

    return howtoguide;
  }

  static Future<List<HowToGuide>> getGuide() async{
    var url = Uri.parse(aboutUsUrl + '/getGuide');
    http.Response response = await http.get(
      url,
      headers: headers,
    );
    if (kDebugMode) {
      print(response.body);
    }
    List responseList = jsonDecode(response.body);
    List<HowToGuide> howtoguides = [];
    for(Map guideMap in responseList){
      HowToGuide howToGuide = HowToGuide.fromMap(guideMap);
      howtoguides.add(howToGuide);
    }
    return howtoguides;
  }

  static Future<http.Response> updateGuide(id,title,description) async{
    Map data = {
      "id":id,
      "title":title,
      "description":description
    };
    var body = json.encode(data);
    var url = Uri.parse(aboutUsUrl + '/editGuide/$id');
    http.Response response = await http.put(
        url,
      headers: headers,
      body: body
    );
    print(response.body);
    return response;
   }

  static Future<http.Response> deleteTask(int id) async {
    var url = Uri.parse(aboutUsUrl + '/deleteGuide/$id');
    http.Response response = await http.delete(
      url,
      headers: headers,
    );
    print(response.body);
    return response;
  }
}