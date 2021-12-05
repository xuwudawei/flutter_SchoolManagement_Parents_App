import 'package:skulify_app/src/models/dashBoardCardsModel.dart';

List<DashBCardModel> getAllDBCards() {
  List<DashBCardModel> allDBCards = new List<DashBCardModel>();
  DashBCardModel dBCardModel = new DashBCardModel();

  //1
  dBCardModel = new DashBCardModel();
  dBCardModel.title = "Announcements";
  dBCardModel.tag = "24";
  dBCardModel.imageUrl = "assets/images/announcements.png";
  allDBCards.add(dBCardModel);

  //2
  dBCardModel = new DashBCardModel();
  dBCardModel.title = "Lectures Today";
  dBCardModel.tag = "8";
  dBCardModel.imageUrl = 'assets/images/Bag.png';
  allDBCards.add(dBCardModel);

  //3
  dBCardModel = new DashBCardModel();
  dBCardModel.title = "Attendance";
  dBCardModel.tag = "100";
  dBCardModel.imageUrl = 'assets/images/Deskchair.png';
  allDBCards.add(dBCardModel);

  //4
  dBCardModel = new DashBCardModel();
  dBCardModel.title = "Home Work";
  dBCardModel.tag = "99";
  dBCardModel.imageUrl = 'assets/images/assignments.png';
  allDBCards.add(dBCardModel);

  //5
  dBCardModel = new DashBCardModel();
  dBCardModel.title = "Test Marks";
  dBCardModel.tag = "10";
  dBCardModel.imageUrl = 'assets/images/suitcase.png';
  allDBCards.add(dBCardModel);

  //6
  dBCardModel = new DashBCardModel();
  dBCardModel.title = "Exams Available";
  dBCardModel.tag = "2";
  dBCardModel.imageUrl = 'assets/images/exams.png';
  allDBCards.add(dBCardModel);

  //7
  dBCardModel = new DashBCardModel();
  dBCardModel.title = "Events";
  dBCardModel.tag = "";
  dBCardModel.imageUrl = 'assets/images/exams.png';
  allDBCards.add(dBCardModel);

  //8
  dBCardModel = new DashBCardModel();
  dBCardModel.title = "Announcements";
  dBCardModel.tag = "";
  dBCardModel.imageUrl = 'assets/images/exams.png';
  allDBCards.add(dBCardModel);

  //9
  dBCardModel = new DashBCardModel();
  dBCardModel.title = "Assignment Marks";
  dBCardModel.tag = "";
  dBCardModel.imageUrl = 'assets/images/exams.png';
  allDBCards.add(dBCardModel);

  //10
  dBCardModel = new DashBCardModel();
  dBCardModel.title = "Result";
  dBCardModel.tag = "";
  dBCardModel.imageUrl = 'assets/images/exams.png';
  allDBCards.add(dBCardModel);

  //11
  dBCardModel = new DashBCardModel();
  dBCardModel.title = "View Marks";
  dBCardModel.tag = "";
  dBCardModel.imageUrl = 'assets/images/exams.png';
  allDBCards.add(dBCardModel);

  //12
  dBCardModel = new DashBCardModel();
  dBCardModel.title = "Quick Quiz";
  dBCardModel.tag = "";
  dBCardModel.imageUrl = 'assets/images/exams.png';
  allDBCards.add(dBCardModel);

  return allDBCards;
}
