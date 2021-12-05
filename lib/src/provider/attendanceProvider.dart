import 'package:flutter/material.dart';
import 'package:skulify_app/src/models/attendanceModel.dart';

class AttendanceProvider extends ChangeNotifier {
  List<AttendanceModel> s = [];
  List<AttendanceModel> get getAttendanceList => s;
  void setAttendanceList(List a) {
    s = a;
    notifyListeners();
  }
}
