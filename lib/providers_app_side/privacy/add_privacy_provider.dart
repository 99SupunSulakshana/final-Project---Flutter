// ignore_for_file: nullable_type_in_catch_clause, avoid_print, non_constant_identifier_names

import 'dart:convert';
import 'dart:io';

import 'package:final_project/constants/url.dart';
import 'package:final_project/provider/Shared_preferences/shared_preferencesProvider.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class AddPrivacyProvider extends ChangeNotifier {
  final url = AppUrl.privacyUrl;

  bool _isLoading = false;
  bool _status = false;

  String _response = '';

  bool get isLoading => _isLoading;

  bool get getStatus => _status;

  String get getResponse => _response;

  void addTask({
    String? privacy_name,
    String? description,
    BuildContext? context,
  }) async {
    //final token = await SharedDataProvider().getToken();
    // final userId = await SharedDataProvider().getUserId();
    _status = true;
    _isLoading = true;
    notifyListeners();

    String _url = "$url/savePrivacy";

    final body = {
      "id": 1,
      "privacy_name": privacy_name,
      "description": description,
      "created_time": "2022-06-04T22:26:56.000+00:00"
    };

    try {
      http.Response result =
          await http.post(Uri.parse(_url), body: json.encode(body));

      print(result.statusCode);

      if (result.statusCode == 200 || result.statusCode == 201) {
        _isLoading = false;

        notifyListeners();
        final res = json.decode(result.body);
        print(res);
        _status = false;

        _response = json.decode(res)['message'];
      } else {
        final res = json.decode(result.body);
        print(res);

        _response = json.decode(res)['message'];

        _status = false;

        notifyListeners();
      }
    } on SocketException catch (_) {
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      notifyListeners();

      print(":::: $e");
    }
  }

  void clear() {
    _response = '';
    notifyListeners();
  }
}
