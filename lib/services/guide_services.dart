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
    if (kDebugMode) {
      print(response.body);
    }
    Map responseMap = jsonDecode(response.body);
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
}