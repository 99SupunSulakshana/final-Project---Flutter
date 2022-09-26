import 'dart:convert';
import 'dart:ffi';

import 'package:final_project/constants/globals.dart';
import 'package:http/http.dart' as http;

import '../../model/productivity.dart';

class ProductivityServices {
  // static Future<Productivity> postPrediction(
  //
  //     String quarter,
  //     String day,
  //     String targeted_productivity,
  //     String standard_minute_value,
  //     String work_in_progress,
  //     String overall_using_times,
  //     String incentive_package_users,
  //     String idle_time,
  //     String idle_men,
  //     String no_of_updated
  //
  //     ) async {
  //   Map data = {
  //     "quarter":quarter,
  //     "day":day,
  //     "targeted_productivity":targeted_productivity,
  //     "standard_minute_value":standard_minute_value,
  //     "work_in_progress":work_in_progress,
  //     "overall_using_times":overall_using_times,
  //     "incentive_package_users":incentive_package_users,
  //     "idle_time":idle_time,
  //     "idle_men":idle_men,
  //     "no_of_updated":no_of_updated
  //   };
  //
  //   var body = json.encode(data);
  //   var url = Uri.parse(pythonUrl + '/productivity');
  //   http.Response response = await http.post(url,headers: headers,body: body);
  //   print(response.body);
  //   Map responseMap = jsonDecode(response.body);
  //   Productivity productivity = Productivity.fromMap(responseMap);
  //   return productivity;
  //
  // }
  
  static dynamic postPrediction(
          String quarter,
          String day,
          String targeted_productivity,
          String standard_minute_value,
          String work_in_progress,
          String overall_using_times,
          String incentive_package_users,
          String idle_time,
          String idle_men,
          String no_of_updated
      ) async {
    final http.Response response = await http.post(
      Uri.parse(pythonUrl + '/productivity'),
      headers: headers,
      body: jsonEncode(<String, String>{
            "quarter":quarter,
            "day":day,
            "targeted_productivity":targeted_productivity,
            "standard_minute_value":standard_minute_value,
            "work_in_progress":work_in_progress,
            "overall_using_times":overall_using_times,
            "incentive_package_users":incentive_package_users,
            "idle_time":idle_time,
            "idle_men":idle_men,
            "no_of_updated":no_of_updated
      })
    );
    print('Response body: ${response.body.toString()}');
    return response;
  }
}