import 'package:skulify_app/src/models/timeCardModel.dart';

List<TimeCardModel> getAllTimeCards() {
  List<TimeCardModel> allTimeCards = new List<TimeCardModel>();
  TimeCardModel timeCardModel = new TimeCardModel();

  //1
  timeCardModel = new TimeCardModel();
  timeCardModel.lessonTitle = "ENGLISH";
  timeCardModel.attendancePercentage = "100";
  timeCardModel.timeSlot = "09:30-10:00";
  timeCardModel.imageUrl = "assets/images/english.png";
  timeCardModel.attendanceColor = "#00FF00";
  allTimeCards.add(timeCardModel);

  //2
  timeCardModel = new TimeCardModel();
  timeCardModel.lessonTitle = "Computer";
  timeCardModel.attendancePercentage = "100";
  timeCardModel.timeSlot = "10:00-10:30";
  timeCardModel.imageUrl = "assets/images/computer.png";
  timeCardModel.attendanceColor = "#FF0000";
  allTimeCards.add(timeCardModel);

  //3
  timeCardModel = new TimeCardModel();
  timeCardModel.lessonTitle = "Hindi";
  timeCardModel.attendancePercentage = "100";
  timeCardModel.timeSlot = "10:30-11:00";
  timeCardModel.imageUrl = "assets/images/hindi.png";
  timeCardModel.attendanceColor = "#00FF00";
  allTimeCards.add(timeCardModel);

  //4
  timeCardModel = new TimeCardModel();
  timeCardModel.lessonTitle = "Science";
  timeCardModel.attendancePercentage = "100";
  timeCardModel.timeSlot = "11:00-11:30";
  timeCardModel.imageUrl = "assets/images/science.png";
  timeCardModel.attendanceColor = "#FF0000";
  allTimeCards.add(timeCardModel);

  //5
  timeCardModel = new TimeCardModel();
  timeCardModel.lessonTitle = "Hindi";
  timeCardModel.attendancePercentage = "100";
  timeCardModel.timeSlot = "12:30-13:00";
  timeCardModel.imageUrl = "assets/images/hindi.png";
  timeCardModel.attendanceColor = "#00FF00";
  allTimeCards.add(timeCardModel);

  //6
  timeCardModel = new TimeCardModel();
  timeCardModel.lessonTitle = "Computer";
  timeCardModel.attendancePercentage = "100";
  timeCardModel.timeSlot = "13:00-13:30";
  timeCardModel.imageUrl = "assets/images/computer.png";
  timeCardModel.attendanceColor = "#00FF00";
  allTimeCards.add(timeCardModel);

  //7
  timeCardModel = new TimeCardModel();
  timeCardModel.lessonTitle = "Maths";
  timeCardModel.attendancePercentage = "100";
  timeCardModel.timeSlot = "13:30-14:00";
  timeCardModel.imageUrl = "assets/images/hindi.png";
  timeCardModel.attendanceColor = "#00FF00";
  allTimeCards.add(timeCardModel);

  return allTimeCards;
}
