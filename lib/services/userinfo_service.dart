import 'dart:convert';

import 'package:final_project/model/UserInfo.dart';
import 'package:jiffy/jiffy.dart';
import 'package:http/http.dart' as http;
import '../constants/globals.dart';

class UserInfoService{
  static Future<UserInfo> addMobitelUser(
      String name,
      String nic,
      String address,
      String code,
      String dob,
      String email,
      String mobile_number,
      String sim_card) async {
    Map data = {
      "name": name,
      "nic": nic,
      "address": address,
      "code": code,
      "dob": dob,
      "email": email,
      "mobile_number": mobile_number,
      "sim_card": sim_card,
      "created_time": Jiffy((new DateTime.now())).format('yyyy-MM-dd hh:mm:ss')
    };
    var body = json.encode(data);
    var url = Uri.parse(aboutUsUrl + '/api/v1/mobitel/saveUserInfo');

    http.Response response = await http.post(
        url,
        headers: headers,
        body: body
    );
    print(response.body);
    Map responseMap = jsonDecode(response.body);
    UserInfo userInfo = UserInfo.fromMap(responseMap);
    return userInfo;
  }

  static Future<List<UserInfo>> getMobitelUser() async{
    var url = Uri.parse(aboutUsUrl + '/api/v1/mobitel/getUserInfo');
    http.Response response = await http.get(
        url,
        headers: headers
    );
    print(response.body);
    List responseList = jsonDecode(response.body);
    List<UserInfo> users = [];
    for(Map codeMap in responseList)
    {
      UserInfo userInfo = UserInfo.fromMap(codeMap);
      users.add(userInfo);
    }
    return users;
  }

  static Future<http.Response> updateMobitelUser(
      id,
      name,
      nic,
      address,
      code,
      dob,
      email,
      mobile_number,
      sim_card,
      active,) async {
    var url = Uri.parse(aboutUsUrl + '/api/v1/mobitel/editUserInfo/$id');
    Map data = {
      "id": id,
      "name": name,
      "nic": nic,
      "address": address,
      "code": code,
      "dob": dob,
      "email": email,
      "mobile_number": mobile_number,
      "sim_card": sim_card,
      "active": active,
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

  static Future<http.Response> deleteMobitelUser(int id) async{
    var url = Uri.parse(aboutUsUrl + '/api/v1/mobitel/deleteUserInfo/$id');
    http.Response response = await http.delete(
      url,
      headers: headers,
    );
    print(response.body);
    return response;
  }
}