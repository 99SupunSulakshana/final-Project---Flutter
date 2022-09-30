import 'dart:convert';
import 'package:final_project/constants/globals.dart';
import 'package:http/http.dart' as http;
import 'package:jiffy/jiffy.dart';
import '../model/advertisements.dart';

class AdvertisementServices {
  static Future<Advertisement> addAdvertisement(String name, String description) async {
    Map data = {
      "name": name,
      "description": description,
      "created_time": Jiffy((new DateTime.now())).format('yyyy-MM-dd hh:mm:ss')
    };
    var body = json.encode(data);
    var url = Uri.parse(aboutUsUrl + '/saveAdvertisement');

    http.Response response = await http.post(
        url,
        headers: headers,
        body: body
    );
    print(response.body);
    Map responseMap = jsonDecode(response.body);
    Advertisement advertisement = Advertisement.fromMap(responseMap);
    return advertisement;
  }
  
  static Future<List<Advertisement>> getAdvertisement() async{
    var url = Uri.parse(aboutUsUrl + '/getAdvertisement');
    http.Response response = await http.get(
      url,
      headers: headers
    );
    print(response.body);
    List responseList = jsonDecode(response.body);
    List<Advertisement> advertisements = [];
    for(Map advertisementMap in responseList)
      {
        Advertisement advertisement = Advertisement.fromMap(advertisementMap);
        advertisements.add(advertisement);
      }
    return advertisements;
  }

  static Future<http.Response> updateAdvertisement(id,name,description) async {
    var url = Uri.parse(aboutUsUrl + '/editAdvertisement/$id');
    Map data = {
      'id': id,
      "name": name,
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
  
  static Future<http.Response> deleteAdvertisement(int id) async{
    var url = Uri.parse(aboutUsUrl + '/deleteAdvertisement/$id');
    http.Response response = await http.delete(
      url,
      headers: headers,
    );
    print(response.body);
    return response;
  }
}