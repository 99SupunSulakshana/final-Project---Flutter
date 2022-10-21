import 'package:final_project/services/code_services.dart';
import 'package:flutter/material.dart';

import '../../model/Code.dart';

class HotCodesData extends ChangeNotifier{
  List<Code> codes = [];

  void addCodes(String name, String description, String hotCode) async {
    Code code = await CodeService.addCode(name, description, hotCode);
    codes.add(code);
    notifyListeners();
  }

  void updateCode(String id, String name, String description, String hotCode) {
    CodeService.updateCode(id, name, description, hotCode);
    notifyListeners();
  }

  void deleteCode(Code code) {
    codes.remove(code);
    CodeService.deleteCode(code.id);
    notifyListeners();
  }

}