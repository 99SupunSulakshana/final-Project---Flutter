import 'dart:convert';
import 'package:jiffy/jiffy.dart';
import 'package:http/http.dart' as http;
import '../constants/globals.dart';
import '../model/terms.dart';

class TermsService{
  static Future<Terms> addTerms(String name, String description) async {
    Map data = {
      "term_name": name,
      "description": description,
      "created_time": Jiffy((new DateTime.now())).format('yyyy-MM-dd hh:mm:ss')
    };
    var body = json.encode(data);
    var url = Uri.parse(aboutUsUrl + '/saveTerms');

    http.Response response = await http.post(
        url,
        headers: headers,
        body: body
    );
    print(response.body);
    Map responseMap = jsonDecode(response.body);
    Terms terms = Terms.fromMap(responseMap);
    return terms;
  }

  static Future<List<Terms>> getTerms() async{
    var url = Uri.parse(aboutUsUrl + '/getTerms');
    http.Response response = await http.get(
        url,
        headers: headers
    );
    print(response.body);
    List responseList = jsonDecode(response.body);
    List<Terms> termss = [];
    for(Map termsMap in responseList)
    {
      Terms terms = Terms.fromMap(termsMap);
      termss.add(terms);
    }
    return termss;
  }

  static Future<http.Response> updateTerms(id,name,description) async {
    var url = Uri.parse(aboutUsUrl + '/editTerm/$id');
    Map data = {
      'id': id,
      "term_name": name,
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

  static Future<http.Response> deleteTerms(int id) async{
    var url = Uri.parse(aboutUsUrl + '/deleteTerm/$id');
    http.Response response = await http.delete(
      url,
      headers: headers,
    );
    print(response.body);
    return response;
  }
}