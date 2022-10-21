import 'package:final_project/model/weeklyPackges.dart';
import 'package:final_project/services/WeeklyPackageService.dart';
import 'package:flutter/material.dart';

class WeeklyPackageData extends ChangeNotifier{
  List<WeeklyPackages> weeklys = [];

  void addWeeklyPackages(String name, String description, String cost) async {
    WeeklyPackages weeklyPackages = await WeeklyPackageService.addWeeklyPackages(name, description, cost);
    weeklys.add(weeklyPackages);
    notifyListeners();
  }

  void updateWeeklyPackages(String id, String name, String description, String cost) {
    WeeklyPackageService.updateWeeklyPackages(id, name, description, cost);
    notifyListeners();
  }

  void deleteWeeklyPackages(WeeklyPackages weeklyPackages) {
    weeklys.remove(weeklyPackages);
    WeeklyPackageService.deleteWeeklyPackage(weeklyPackages.id);
    notifyListeners();
  }
}