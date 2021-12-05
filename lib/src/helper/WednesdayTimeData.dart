import 'package:skulify_app/src/models/timeCardModel.dart';

List<TimeCardModel> getWednesdayTimeCards() {
  List<TimeCardModel> wednesdayTimeCards = new List<TimeCardModel>();
  TimeCardModel wednesdayTimeCardModel = new TimeCardModel();

  //1
  wednesdayTimeCardModel = new TimeCardModel();
  wednesdayTimeCardModel.lessonTitle = "Maths";
  wednesdayTimeCardModel.attendancePercentage = "100";
  wednesdayTimeCardModel.timeSlot = "09:30-10:00";
  wednesdayTimeCardModel.imageUrl = "assets/images/english.png";
  wednesdayTimeCardModel.attendanceColor = "#00FF00";
  wednesdayTimeCards.add(wednesdayTimeCardModel);

  //2
  wednesdayTimeCardModel = new TimeCardModel();
  wednesdayTimeCardModel.lessonTitle = "Computer";
  wednesdayTimeCardModel.attendancePercentage = "100";
  wednesdayTimeCardModel.timeSlot = "10:00-10:30";
  wednesdayTimeCardModel.imageUrl = "assets/images/computer.png";
  wednesdayTimeCardModel.attendanceColor = "#FF0000";
  wednesdayTimeCards.add(wednesdayTimeCardModel);

  //3
  wednesdayTimeCardModel = new TimeCardModel();
  wednesdayTimeCardModel.lessonTitle = "Hindi";
  wednesdayTimeCardModel.attendancePercentage = "100";
  wednesdayTimeCardModel.timeSlot = "10:30-11:00";
  wednesdayTimeCardModel.imageUrl = "assets/images/hindi.png";
  wednesdayTimeCardModel.attendanceColor = "#00FF00";
  wednesdayTimeCards.add(wednesdayTimeCardModel);

  //4
  wednesdayTimeCardModel = new TimeCardModel();
  wednesdayTimeCardModel.lessonTitle = "Science";
  wednesdayTimeCardModel.attendancePercentage = "100";
  wednesdayTimeCardModel.timeSlot = "11:00-11:30";
  wednesdayTimeCardModel.imageUrl = "assets/images/science.png";
  wednesdayTimeCardModel.attendanceColor = "#FF0000";
  wednesdayTimeCards.add(wednesdayTimeCardModel);

  //5
  wednesdayTimeCardModel = new TimeCardModel();
  wednesdayTimeCardModel.lessonTitle = "Hindi";
  wednesdayTimeCardModel.attendancePercentage = "100";
  wednesdayTimeCardModel.timeSlot = "12:30-13:00";
  wednesdayTimeCardModel.imageUrl = "assets/images/hindi.png";
  wednesdayTimeCardModel.attendanceColor = "#00FF00";
  wednesdayTimeCards.add(wednesdayTimeCardModel);

  //6
  wednesdayTimeCardModel = new TimeCardModel();
  wednesdayTimeCardModel.lessonTitle = "Computer";
  wednesdayTimeCardModel.attendancePercentage = "100";
  wednesdayTimeCardModel.timeSlot = "13:00-13:30";
  wednesdayTimeCardModel.imageUrl = "assets/images/computer.png";
  wednesdayTimeCardModel.attendanceColor = "#00FF00";
  wednesdayTimeCards.add(wednesdayTimeCardModel);

  //7
  wednesdayTimeCardModel = new TimeCardModel();
  wednesdayTimeCardModel.lessonTitle = "Maths";
  wednesdayTimeCardModel.attendancePercentage = "100";
  wednesdayTimeCardModel.timeSlot = "13:30-14:00";
  wednesdayTimeCardModel.imageUrl = "assets/images/hindi.png";
  wednesdayTimeCardModel.attendanceColor = "#00FF00";
  wednesdayTimeCards.add(wednesdayTimeCardModel);

  return wednesdayTimeCards;
}
