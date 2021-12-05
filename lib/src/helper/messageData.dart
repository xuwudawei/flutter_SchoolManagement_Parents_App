import 'package:skulify_app/src/models/messageModel.dart';

List<MessageModel> getAllMessages() {
  List<MessageModel> allMessages = new List<MessageModel>();
  MessageModel myMessage = new MessageModel();

  //1
  myMessage = new MessageModel();
  myMessage.messagTitle = "Important Home Staying Instruction";
  myMessage.author = "David Osei Opoku";
  myMessage.date = "Feb 04,2020";
  myMessage.messageContent =
      "Dear Student, you are required to stay safe and to make sure that you do not contract any diseases during your movement in and out of home.";
  allMessages.add(myMessage);

  //2
  myMessage = new MessageModel();
  myMessage.messagTitle = "Important Exam Instruction";
  myMessage.author = "Anshul Sharma";
  myMessage.date = "Feb 04,2020";
  myMessage.messageContent =
      "Dear Student, you are required to learn hard for your exams.";
  allMessages.add(myMessage);

  //3
  myMessage = new MessageModel();
  myMessage.messagTitle = "Important Instruction";
  myMessage.author = "Samson Nkrumah Kwaku";
  myMessage.date = "Feb 04,2020";
  myMessage.messageContent =
      "Dear Student, you are required to stay safe and to make sure that you do not contract any diseases during your movement in and out of home.";
  allMessages.add(myMessage);

  //4
  myMessage = new MessageModel();
  myMessage.messagTitle = "Important Instruction";
  myMessage.author = "David Osei Opoku";
  myMessage.date = "Feb 04,2020";
  myMessage.messageContent =
      "Dear Student, you are required to stay safe and to make sure that you do not contract any diseases during your movement in and out of home.";
  allMessages.add(myMessage);

  //5
  myMessage = new MessageModel();
  myMessage.messagTitle = "Important Instruction";
  myMessage.author = "David Osei Opoku";
  myMessage.date = "Feb 04,2020";
  myMessage.messageContent =
      "Dear Student, you are required to stay safe and to make sure that you do not contract any diseases during your movement in and out of home.";
  allMessages.add(myMessage);

  //6
  myMessage = new MessageModel();
  myMessage.messagTitle = "Important Instruction";
  myMessage.author = "David Osei Opoku";
  myMessage.date = "Feb 04,2020";
  myMessage.messageContent =
      "Dear Student, you are required to stay safe and to make sure that you do not contract any diseases during your movement in and out of home.";
  allMessages.add(myMessage);

  return allMessages;
}
