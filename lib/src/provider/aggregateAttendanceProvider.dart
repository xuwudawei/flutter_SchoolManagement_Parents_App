import 'package:flutter/material.dart';

class AggregateAttendanceProvider extends ChangeNotifier {
  int finalAttendance = 0;
  void setAggregateAttendance(int a) {
    finalAttendance = a;
    notifyListeners();
  }

  int getAggregateAttendance() {
    return finalAttendance;
  }
}
