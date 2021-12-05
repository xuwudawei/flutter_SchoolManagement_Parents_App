import 'package:flutter/material.dart';
import 'package:skulify_app/src/models/examsCardsModel.dart';

class ExamsDataProvider extends ChangeNotifier {
  List<ExamsCardsModel> s = [];
  List<ExamsCardsModel> get getAllExamsData => s;
  void setExamsDataList(List a) {
    s = a;
    notifyListeners();
  }
}
