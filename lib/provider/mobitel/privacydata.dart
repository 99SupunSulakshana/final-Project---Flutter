import 'package:final_project/services/privacy_services.dart';
import 'package:flutter/cupertino.dart';

import '../../model/privacy.dart';

class PrivacyData extends ChangeNotifier{
  List<Privacy> privacys = [];

  void addPrivacy(String name, String description) async {
    Privacy privacy = await PrivacyService.addPrivacy(name, description);
    privacys.add(privacy);
    notifyListeners();
  }

  void updatePrivacy(String id, String name, String description) {
    PrivacyService.updatePrivacy(id, name, description);
    notifyListeners();
  }

  void deletePrivacy(Privacy privacy) {
    privacys.remove(privacy);
    PrivacyService.deletePrivacy(privacy.id);
    notifyListeners();
  }

}