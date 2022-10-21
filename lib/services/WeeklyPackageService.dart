import 'dart:convert';

import 'package:final_project/model/weeklyPackges.dart';
import 'package:jiffy/jiffy.dart';
import 'package:http/http.dart' as http;
import '../constants/globals.dart';

class WeeklyPackageService {

  static Future<WeeklyPackages> addWeeklyPackages(String name, String description, String cost) async {
    Map data = {
      "package_title": name,
      "description": description,
      "cost": cost,
      "created_time": Jiffy((new DateTime.now())).format('yyyy-MM-dd hh:mm:ss')
    };
    var body = json.encode(data);
    var url = Uri.parse(aboutUsUrl + '/saveWeeklyPackage');

    http.Response response = await http.post(
        url,
        headers: headers,
        body: body
    );
    print(response.body);
    Map responseMap = jsonDecode(response.body);
    WeeklyPackages weeklyPackages = WeeklyPackages.fromMap(responseMap);
    return weeklyPackages;
  }

  static Future<List<WeeklyPackages>> getWeeklyPackages() async{
    var url = Uri.parse(aboutUsUrl + '/getWeeklyPackage');
    http.Response response = await http.get(
        url,
        headers: headers
    );
    print(response.body);
    List responseList = jsonDecode(response.body);
    List<WeeklyPackages> weekly = [];
    for(Map codeMap in responseList)
    {
      WeeklyPackages weeklyPackages = WeeklyPackages.fromMap(codeMap);
      weekly.add(weeklyPackages);
    }
    return weekly;
  }

  static Future<http.Response> updateWeeklyPackages(id,name,description,cost) async {
    var url = Uri.parse(aboutUsUrl + '/editWPackage/$id');
    Map data = {
      'id': id,
      "package_title": name,
      "description": description,
      "code": cost,
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

  static Future<http.Response> deleteWeeklyPackage(int id) async{
    var url = Uri.parse(aboutUsUrl + '/deleteWPackage/$id');
    http.Response response = await http.delete(
      url,
      headers: headers,
    );
    print(response.body);
    return response;
  }
}