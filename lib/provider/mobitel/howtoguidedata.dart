import 'dart:ffi';

import 'package:final_project/services/guide_services.dart';
import 'package:flutter/material.dart';

import '../../model/howtoguide.dart';
import '../../services/database_services.dart';

class HowtoGuideData extends ChangeNotifier {
  List<HowToGuide> howToGuides = [];

  void addGuide(String taskTitle,String description) async {
    HowToGuide howtoguide = await GuideServices.addGuide(taskTitle,description);
    howToGuides.add(howtoguide);
    notifyListeners();
  }

  void updateGuides(String id, String taskTitle,String description) async {
    GuideServices.updateGuide(id,taskTitle,description);
    notifyListeners();
  }

  void deleteGuides(HowToGuide howToGuide){
      howToGuides.remove(howToGuide);
      GuideServices.deleteTask(howToGuide.id);
      notifyListeners();
  }
}