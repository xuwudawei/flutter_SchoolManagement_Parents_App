import 'package:flutter/material.dart';
import 'package:skulify_app/src/models/announcementsModel.dart';

class AnnouncementsProvider extends ChangeNotifier {
  List<AnnouncementsModel> s = [];

  List<AnnouncementsModel> get getAllAnnouncements => s;

  void setAnnouncementsList(List a) {
    s = a;
    notifyListeners();
  }
}
