import 'package:final_project/services/terms_services.dart';
import 'package:flutter/cupertino.dart';

import '../../model/terms.dart';

class TermsData extends ChangeNotifier{
  List<Terms> termss = [];

  void addTerms(String name, String description) async {
    Terms terms = await TermsService.addTerms(name, description);
    termss.add(terms);
    notifyListeners();
  }

  void updateTerms(String id, String name, String description) {
    TermsService.updateTerms(id, name, description);
    notifyListeners();
  }

  void deleteTerms(Terms terms) {
    termss.remove(terms);
    TermsService.deleteTerms(terms.id);
    notifyListeners();
  }
}