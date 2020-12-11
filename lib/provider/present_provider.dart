import 'package:flutter/material.dart';

import 'package:jifunze/model/present.dart';

class PresentProvider extends ChangeNotifier {
  PresentProvider() {
    _availablePresents = firstPresentList;
    notifyListeners();
  }

  //variables...

  List<Present> _availablePresents = [];

  // getters

  List<Present> get availablePresents => _availablePresents;

  ///flip card....
  set flipPresent(int id) {
    Present _flipedBeforePresent = null;

    ///check if any card is fliped..
    _availablePresents.forEach((present) {
      if (present.isFlipped) _flipedBeforePresent = present;
    });
    if (_flipedBeforePresent != null) {
      
    } else {

    }

    ///
    ///
    _availablePresents.forEach((present) {
      present.isFlipped = false;
    });
    _availablePresents.firstWhere((present) => present.id == id).isFlipped =
        true;

    notifyListeners();
  }
}
