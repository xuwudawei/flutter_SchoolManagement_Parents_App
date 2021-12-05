import 'package:skulify_app/src/models/timeCardModel.dart';

List<TimeCardModel> getSaturdayTimeCards() {
  List<TimeCardModel> saturdayTimeCards = new List<TimeCardModel>();
  TimeCardModel saturdayTimeCardModel = new TimeCardModel();

  //1
  saturdayTimeCardModel = new TimeCardModel();
  saturdayTimeCardModel.lessonTitle = "English";
  saturdayTimeCardModel.attendancePercentage = "100";
  saturdayTimeCardModel.timeSlot = "09:30-10:00";
  saturdayTimeCardModel.imageUrl = "assets/images/english.png";
  saturdayTimeCardModel.attendanceColor = "#00FF00";
  saturdayTimeCards.add(saturdayTimeCardModel);

  //2
  saturdayTimeCardModel = new TimeCardModel();
  saturdayTimeCardModel.lessonTitle = "Computer";
  saturdayTimeCardModel.attendancePercentage = "100";
  saturdayTimeCardModel.timeSlot = "10:00-10:30";
  saturdayTimeCardModel.imageUrl = "assets/images/computer.png";
  saturdayTimeCardModel.attendanceColor = "#FF0000";
  saturdayTimeCards.add(saturdayTimeCardModel);

  //3
  saturdayTimeCardModel = new TimeCardModel();
  saturdayTimeCardModel.lessonTitle = "Hindi";
  saturdayTimeCardModel.attendancePercentage = "100";
  saturdayTimeCardModel.timeSlot = "10:30-11:00";
  saturdayTimeCardModel.imageUrl = "assets/images/hindi.png";
  saturdayTimeCardModel.attendanceColor = "#00FF00";
  saturdayTimeCards.add(saturdayTimeCardModel);

  //4
  saturdayTimeCardModel = new TimeCardModel();
  saturdayTimeCardModel.lessonTitle = "Science";
  saturdayTimeCardModel.attendancePercentage = "100";
  saturdayTimeCardModel.timeSlot = "11:00-11:30";
  saturdayTimeCardModel.imageUrl = "assets/images/science.png";
  saturdayTimeCardModel.attendanceColor = "#FF0000";
  saturdayTimeCards.add(saturdayTimeCardModel);

  //5
  saturdayTimeCardModel = new TimeCardModel();
  saturdayTimeCardModel.lessonTitle = "Hindi";
  saturdayTimeCardModel.attendancePercentage = "100";
  saturdayTimeCardModel.timeSlot = "12:30-13:00";
  saturdayTimeCardModel.imageUrl = "assets/images/hindi.png";
  saturdayTimeCardModel.attendanceColor = "#00FF00";
  saturdayTimeCards.add(saturdayTimeCardModel);

  //6
  saturdayTimeCardModel = new TimeCardModel();
  saturdayTimeCardModel.lessonTitle = "Computer";
  saturdayTimeCardModel.attendancePercentage = "100";
  saturdayTimeCardModel.timeSlot = "13:00-13:30";
  saturdayTimeCardModel.imageUrl = "assets/images/computer.png";
  saturdayTimeCardModel.attendanceColor = "#00FF00";
  saturdayTimeCards.add(saturdayTimeCardModel);

  //7
  saturdayTimeCardModel = new TimeCardModel();
  saturdayTimeCardModel.lessonTitle = "Maths";
  saturdayTimeCardModel.attendancePercentage = "100";
  saturdayTimeCardModel.timeSlot = "13:30-14:00";
  saturdayTimeCardModel.imageUrl = "assets/images/hindi.png";
  saturdayTimeCardModel.attendanceColor = "#00FF00";
  saturdayTimeCards.add(saturdayTimeCardModel);

  return saturdayTimeCards;
}
