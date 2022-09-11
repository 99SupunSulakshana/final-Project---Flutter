import 'package:final_project/services/guide_services.dart';
import 'package:flutter/material.dart';

import '../model/howtoguide.dart';
import '../services/database_services.dart';

class HowtoGuideData extends ChangeNotifier {
  List<HowToGuide> howToGuides = [];

  void addGuide(String taskTitle,String description) async {
    HowToGuide howtoguide = await GuideServices.addGuide(taskTitle,description);
    howToGuides.add(howtoguide);
    notifyListeners();
  }
}