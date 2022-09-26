import 'dart:ffi';

import 'package:final_project/model/productivity.dart';
import 'package:final_project/services/machine_learning/productivity_service.dart';
import 'package:flutter/foundation.dart';

class ProductivityData extends ChangeNotifier {

  void postProductivity(
      String quarter,
      String day,
      String targeted_productivity,
      String standard_minute_value,
      String work_in_progress,
      String overall_using_times,
      String incentive_package_users,
      String idle_time,
      String idle_men,
      String no_of_updated
      ) async {
    ProductivityServices.postPrediction(
        quarter,
        day,
        targeted_productivity,
        standard_minute_value,
        work_in_progress,
        overall_using_times,
        incentive_package_users,
        idle_time,
        idle_men,
        no_of_updated);
    notifyListeners();

  }
}