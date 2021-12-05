import 'package:flutter/material.dart';
import 'package:skulify_app/src/models/timeCardModel.dart';

class TodayTTableProvider extends ChangeNotifier {
  List<TimeCardModel> s = [];

  List<TimeCardModel> get getCardList => s;
  void setCardList(List a) {
    s = a;
    notifyListeners();
  }
}
