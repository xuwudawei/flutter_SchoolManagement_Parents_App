import 'package:flutter/material.dart';

class TimeTableTabIndexProvider extends ChangeNotifier {
  int defaut = 0;
  void setTTableTabIndex(int a) {
    defaut = a;
    notifyListeners();
  }

  int getTTableTabIndex() {
    return defaut;
  }
}
