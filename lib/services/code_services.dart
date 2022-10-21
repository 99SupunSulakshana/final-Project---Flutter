import 'dart:convert';

import 'package:final_project/model/Code.dart';
import 'package:jiffy/jiffy.dart';
import 'package:http/http.dart' as http;
import '../constants/globals.dart';

class CodeService{

  static Future<Code> addCode(String name, String description, String hotCode) async {
    Map data = {
      "code_title": name,
      "description": description,
      "code": hotCode,
      "created_time": Jiffy((new DateTime.now())).format('yyyy-MM-dd hh:mm:ss')
    };
    var body = json.encode(data);
    var url = Uri.parse(aboutUsUrl + '/saveHotline');

    http.Response response = await http.post(
        url,
        headers: headers,
        body: body
    );
    print(response.body);
    Map responseMap = jsonDecode(response.body);
    Code code = Code.fromMap(responseMap);
    return code;
  }

  static Future<List<Code>> getCode() async{
    var url = Uri.parse(aboutUsUrl + '/getHotline');
    http.Response response = await http.get(
        url,
        headers: headers
    );
    print(response.body);
    List responseList = jsonDecode(response.body);
    List<Code> codes = [];
    for(Map codeMap in responseList)
    {
      Code code = Code.fromMap(codeMap);
      codes.add(code);
    }
    return codes;
  }

  static Future<http.Response> updateCode(id,name,description,hotCodes) async {
    var url = Uri.parse(aboutUsUrl + '/editHotline/$id');
    Map data = {
      'id': id,
      "code_title": name,
      "description": description,
      "code": hotCodes,
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

  static Future<http.Response> deleteCode(int id) async{
    var url = Uri.parse(aboutUsUrl + '/deleteHotline/$id');
    http.Response response = await http.delete(
      url,
      headers: headers,
    );
    print(response.body);
    return response;
  }
}