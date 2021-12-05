import 'package:skulify_app/src/models/timeCardModel.dart';

List<TimeCardModel> getMondayTimeCards() {
  List<TimeCardModel> mondayTimeCards = new List<TimeCardModel>();
  TimeCardModel mondayTimeCardModel = new TimeCardModel();

  //1
  mondayTimeCardModel = new TimeCardModel();
  mondayTimeCardModel.lessonTitle = "English";
  mondayTimeCardModel.attendancePercentage = "100";
  mondayTimeCardModel.timeSlot = "09:30-10:00";
  mondayTimeCardModel.imageUrl = "assets/images/english.png";
  mondayTimeCardModel.attendanceColor = "#00FF00";
  mondayTimeCards.add(mondayTimeCardModel);

  //2
  mondayTimeCardModel = new TimeCardModel();
  mondayTimeCardModel.lessonTitle = "Computer";
  mondayTimeCardModel.attendancePercentage = "100";
  mondayTimeCardModel.timeSlot = "10:00-10:30";
  mondayTimeCardModel.imageUrl = "assets/images/computer.png";
  mondayTimeCardModel.attendanceColor = "#FF0000";
  mondayTimeCards.add(mondayTimeCardModel);

  //3
  mondayTimeCardModel = new TimeCardModel();
  mondayTimeCardModel.lessonTitle = "Hindi";
  mondayTimeCardModel.attendancePercentage = "100";
  mondayTimeCardModel.timeSlot = "10:30-11:00";
  mondayTimeCardModel.imageUrl = "assets/images/hindi.png";
  mondayTimeCardModel.attendanceColor = "#00FF00";
  mondayTimeCards.add(mondayTimeCardModel);

  //4
  mondayTimeCardModel = new TimeCardModel();
  mondayTimeCardModel.lessonTitle = "Science";
  mondayTimeCardModel.attendancePercentage = "100";
  mondayTimeCardModel.timeSlot = "11:00-11:30";
  mondayTimeCardModel.imageUrl = "assets/images/science.png";
  mondayTimeCardModel.attendanceColor = "#FF0000";
  mondayTimeCards.add(mondayTimeCardModel);

  //5
  mondayTimeCardModel = new TimeCardModel();
  mondayTimeCardModel.lessonTitle = "Hindi";
  mondayTimeCardModel.attendancePercentage = "100";
  mondayTimeCardModel.timeSlot = "12:30-13:00";
  mondayTimeCardModel.imageUrl = "assets/images/hindi.png";
  mondayTimeCardModel.attendanceColor = "#00FF00";
  mondayTimeCards.add(mondayTimeCardModel);

  //6
  mondayTimeCardModel = new TimeCardModel();
  mondayTimeCardModel.lessonTitle = "Computer";
  mondayTimeCardModel.attendancePercentage = "100";
  mondayTimeCardModel.timeSlot = "13:00-13:30";
  mondayTimeCardModel.imageUrl = "assets/images/computer.png";
  mondayTimeCardModel.attendanceColor = "#00FF00";
  mondayTimeCards.add(mondayTimeCardModel);

  //7
  mondayTimeCardModel = new TimeCardModel();
  mondayTimeCardModel.lessonTitle = "Maths";
  mondayTimeCardModel.attendancePercentage = "100";
  mondayTimeCardModel.timeSlot = "13:30-14:00";
  mondayTimeCardModel.imageUrl = "assets/images/hindi.png";
  mondayTimeCardModel.attendanceColor = "#00FF00";
  mondayTimeCards.add(mondayTimeCardModel);

  return mondayTimeCards;
}
