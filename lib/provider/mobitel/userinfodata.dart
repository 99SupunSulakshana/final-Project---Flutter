import 'package:final_project/model/UserInfo.dart';
import 'package:final_project/services/userinfo_service.dart';
import 'package:flutter/foundation.dart';

class UserInfoData extends ChangeNotifier{
  List<UserInfo> users = [];

  void addUserInfo(
      String name,
      String nic,
      String address,
      String code,
      String dob,
      String email,
      String mobile_number,
      String sim_card) async {
    UserInfo userInfo = await UserInfoService.addMobitelUser(
        name,
        nic,
        address,
        code,
        dob,
        email,
        mobile_number,
        sim_card);
    users.add(userInfo);
    notifyListeners();
  }

  void updateUserInfo(
      int id,
      String name,
      String nic,
      String address,
      String code,
      String dob,
      String email,
      String mobile_number,
      String sim_card,
      bool active
      ) {
    UserInfoService.updateMobitelUser(
        id,
        name,
        nic,
        address,
        code,
        dob,
        email,
        mobile_number,
        sim_card,
        active
    );
    notifyListeners();
  }

  void deleteWeeklyPackages(UserInfo userInfo) {
    users.remove(userInfo);
    UserInfoService.deleteMobitelUser(userInfo.id);
    notifyListeners();
  }
}