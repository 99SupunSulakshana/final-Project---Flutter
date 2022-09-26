import 'package:final_project/services/database_services.dart';
import 'package:flutter/cupertino.dart';

import '../../model/AboutUs.dart';

class AboutUsData extends ChangeNotifier {
  List<AboutUs> aboutUss = [];

  void addAboutUs(String provider,description,description2) async{
    AboutUs aboutUs = (await DatabaseServices.addAboutUs(provider, description, description2)) as AboutUs;
    aboutUss.add(aboutUs);
    notifyListeners();
   }


}
