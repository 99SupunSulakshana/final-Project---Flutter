// ignore_for_file: avoid_print, avoid_web_libraries_in_flutter, prefer_final_fields

import 'dart:convert';
import 'dart:io';
import 'package:final_project/constants/url.dart';
import 'package:final_project/utils/routers.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../screens/TaskPages/home_page.dart';
import '../Shared_preferences/shared_preferencesProvider.dart';

class AddTaskProvider extends ChangeNotifier {
  final url = AppUrl.baseUrl;

  bool _isLoading = false;
  bool _status = false;

  String _response = '';

  bool get isLoading => _isLoading;

  bool get getStatus => _status;

  String get getResponse => _response;

  ///To get graphql client
  ///Add task method
  void addTask({
    String? title,
    BuildContext? context,
  }) async {
    final token = await SharedDataProvider().getToken();
    final userId = await SharedDataProvider().getUserId();
    _status = true;
    _isLoading = true;
    notifyListeners();

    String _url = "$url/tasks/";

    final body = {
      "title": title,
      "startTime": "2022-08-18T11:01:00.000+00:00",
      "endTime": "2022-09-18T12:00:00.000+00:00",
      "userId": userId,
      "reminderPeriod": "2022-07-19T12:00:00.000+00:00"
    };

    try {
      http.Response result = await http.post(Uri.parse(_url),
          body: json.encode(body), headers: {'Authorization': 'Bearer $token'});

      print(result.statusCode);

      if (result.statusCode == 200 || result.statusCode == 201) {
        _isLoading = false;

        notifyListeners();
        PageNavigator(ctx: context).nextPageOnly(page: const HomePage());
        final res = json.decode(result.body);
        print(res);
        _status = false;

        _response = json.decode(res)['message'];

        PageNavigator(ctx: context).nextPageOnly(page: const HomePage());
      } else {
        final res = json.decode(result.body);
        print(res);

        _response = json.decode(res)['message'];

        _status = false;

        notifyListeners();
      }
    } on SocketException catch (_) {
      _isLoading = false;
      // _resMessage = "Internet connection is not available";
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      //  _resMessage = "Please try Again";
      notifyListeners();

      print(":::: $e");
    }
  }

  void clear() {
    _response = '';
    notifyListeners();
  }
}
