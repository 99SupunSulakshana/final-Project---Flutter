import 'package:final_project/services/advertisement_services.dart';
import 'package:flutter/cupertino.dart';
import '../../model/advertisements.dart';

class AdvertisementData extends ChangeNotifier{
  List<Advertisement> advertisements = [];

  void addAdvertisement(String name, String description) async {
    Advertisement advertisement = await AdvertisementServices.addAdvertisement(name, description);
    advertisements.add(advertisement);
    notifyListeners();
  }

  void updateAdvertisement(String id, String name, String description) {
    AdvertisementServices.updateAdvertisement(id, name, description);
    notifyListeners();
  }

  void deleteAdvertisement(Advertisement advertisement) {
    advertisements.remove(advertisement);
    AdvertisementServices.deleteAdvertisement(advertisement.id);
    notifyListeners();
  }

}