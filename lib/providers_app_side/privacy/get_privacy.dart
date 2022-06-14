// ignore_for_file: avoid_print, unused_local_variable

import 'dart:convert';
import 'package:final_project/constants/url.dart';
import 'package:final_project/model/privacy_model.dart';
import 'package:final_project/model/task_model.dart';
import 'package:final_project/provider/Shared_preferences/shared_preferencesProvider.dart';
import 'package:final_project/screens/drawer_navigation/privacy_policy.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class GetPrivacy {
  final url = AppUrl.privacyUrl;
  //var data = [];

  Future<List<PrivacyModel>> getPrivacy() async {
    final String _url = "$url/getPrivacy";

    Response res = await get(Uri.parse(_url));

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<PrivacyModel> posts = body
          .map(
            (dynamic item) => PrivacyModel.fromJson(item),
          )
          .toList();

      return posts;
    } else {
      throw "Unable to retrieve posts.";
    }
  }
}
