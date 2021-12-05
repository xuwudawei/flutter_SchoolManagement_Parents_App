import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skulify_app/src/models/messageModel.dart';

class MessagesProvider extends ChangeNotifier {
  List<MessageModel> s = [];
  List<MessageModel> get getAllMessages => s;
  void setAllMessages(List a) {
    s = a;
    notifyListeners();
  }
}
