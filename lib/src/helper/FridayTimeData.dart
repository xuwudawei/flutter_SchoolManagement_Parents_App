import 'package:skulify_app/src/models/timeCardModel.dart';

List<TimeCardModel> getFridayTimeCards() {
  List<TimeCardModel> fridayTimeCards = new List<TimeCardModel>();
  TimeCardModel fridayTimeCardModel = new TimeCardModel();

  //1
  fridayTimeCardModel = new TimeCardModel();
  fridayTimeCardModel.lessonTitle = "English";
  fridayTimeCardModel.attendancePercentage = "100";
  fridayTimeCardModel.timeSlot = "09:30-10:00";
  fridayTimeCardModel.imageUrl = "assets/images/english.png";
  fridayTimeCardModel.attendanceColor = "#00FF00";
  fridayTimeCards.add(fridayTimeCardModel);

  //2
  fridayTimeCardModel = new TimeCardModel();
  fridayTimeCardModel.lessonTitle = "Computer";
  fridayTimeCardModel.attendancePercentage = "100";
  fridayTimeCardModel.timeSlot = "10:00-10:30";
  fridayTimeCardModel.imageUrl = "assets/images/computer.png";
  fridayTimeCardModel.attendanceColor = "#FF0000";
  fridayTimeCards.add(fridayTimeCardModel);

  //3
  fridayTimeCardModel = new TimeCardModel();
  fridayTimeCardModel.lessonTitle = "Hindi";
  fridayTimeCardModel.attendancePercentage = "100";
  fridayTimeCardModel.timeSlot = "10:30-11:00";
  fridayTimeCardModel.imageUrl = "assets/images/hindi.png";
  fridayTimeCardModel.attendanceColor = "#00FF00";
  fridayTimeCards.add(fridayTimeCardModel);

  //4
  fridayTimeCardModel = new TimeCardModel();
  fridayTimeCardModel.lessonTitle = "Science";
  fridayTimeCardModel.attendancePercentage = "100";
  fridayTimeCardModel.timeSlot = "11:00-11:30";
  fridayTimeCardModel.imageUrl = "assets/images/science.png";
  fridayTimeCardModel.attendanceColor = "#FF0000";
  fridayTimeCards.add(fridayTimeCardModel);

  //5
  fridayTimeCardModel = new TimeCardModel();
  fridayTimeCardModel.lessonTitle = "Hindi";
  fridayTimeCardModel.attendancePercentage = "100";
  fridayTimeCardModel.timeSlot = "12:30-13:00";
  fridayTimeCardModel.imageUrl = "assets/images/hindi.png";
  fridayTimeCardModel.attendanceColor = "#00FF00";
  fridayTimeCards.add(fridayTimeCardModel);

  //6
  fridayTimeCardModel = new TimeCardModel();
  fridayTimeCardModel.lessonTitle = "Computer";
  fridayTimeCardModel.attendancePercentage = "100";
  fridayTimeCardModel.timeSlot = "13:00-13:30";
  fridayTimeCardModel.imageUrl = "assets/images/computer.png";
  fridayTimeCardModel.attendanceColor = "#00FF00";
  fridayTimeCards.add(fridayTimeCardModel);

  //7
  fridayTimeCardModel = new TimeCardModel();
  fridayTimeCardModel.lessonTitle = "Maths";
  fridayTimeCardModel.attendancePercentage = "100";
  fridayTimeCardModel.timeSlot = "13:30-14:00";
  fridayTimeCardModel.imageUrl = "assets/images/hindi.png";
  fridayTimeCardModel.attendanceColor = "#00FF00";
  fridayTimeCards.add(fridayTimeCardModel);

  return fridayTimeCards;
}
