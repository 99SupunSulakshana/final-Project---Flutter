// ignore_for_file: unused_import

import 'dart:convert';

import 'package:final_project/constants/globals.dart';
import 'package:final_project/model/aboutUs.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class DatabaseServices {
  static Future<AboutUs> addAboutUs(
      String provider, String description, String description2) async {
    Map data = {
      "provider": provider,
      "description": description,
      "description2": description2
    };

    var body = json.encode(data);
    var url = Uri.parse(aboutUsUrl + '/addAboutUs');

    http.Response response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    if (kDebugMode) {
      print(response.body);
    }
    Map responseMap = jsonDecode(response.body);

    AboutUs aboutUs = AboutUs.fromMap(responseMap);

    return aboutUs;
  }

  static Future<List<AboutUs>> getAboutUs() async {
    var url = Uri.parse(aboutUsUrl + '/AboutUs');
    http.Response response = await http.get(
      url,
      headers: headers,
    );
    if (kDebugMode) {
      print(response.body);
    }
    List responseList = jsonDecode(response.body);
    List<AboutUs> aboutUss = [];
    for (Map aboutUsMap in responseList) {
      AboutUs aboutUs = AboutUs.fromMap(aboutUsMap);
      aboutUss.add(aboutUs);
    }
    return aboutUss;
  }
}
