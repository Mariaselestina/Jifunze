import 'package:flutter/material.dart';

import 'package:jifunze/model/level.dart';

class LevelProvider extends ChangeNotifier {
  LevelProvider() {
    _availableLevels = mainLevelList;
    notifyListeners();
  }

  //variables...

  List<Level> _availableLevels = [];

  // getters

  List<Level> get availableLevels => _availableLevels;

  set toogleLevel(int id) {
    _availableLevels.firstWhere((level) => level.id == id).isOpened = true;
    notifyListeners();
  }
}
