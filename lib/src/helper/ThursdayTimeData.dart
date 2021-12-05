import 'package:skulify_app/src/models/timeCardModel.dart';

List<TimeCardModel> getThursdayTimeCards() {
  List<TimeCardModel> thursdayTimeCards = new List<TimeCardModel>();
  TimeCardModel thursdayTimeCardModel = new TimeCardModel();

  //1
  thursdayTimeCardModel = new TimeCardModel();
  thursdayTimeCardModel.lessonTitle = "Physics";
  thursdayTimeCardModel.attendancePercentage = "100";
  thursdayTimeCardModel.timeSlot = "09:30-10:00";
  thursdayTimeCardModel.imageUrl = "assets/images/english.png";
  thursdayTimeCardModel.attendanceColor = "#00FF00";
  thursdayTimeCards.add(thursdayTimeCardModel);

  //2
  thursdayTimeCardModel = new TimeCardModel();
  thursdayTimeCardModel.lessonTitle = "Maths";
  thursdayTimeCardModel.attendancePercentage = "100";
  thursdayTimeCardModel.timeSlot = "10:00-10:30";
  thursdayTimeCardModel.imageUrl = "assets/images/computer.png";
  thursdayTimeCardModel.attendanceColor = "#FF0000";
  thursdayTimeCards.add(thursdayTimeCardModel);

  //3
  thursdayTimeCardModel = new TimeCardModel();
  thursdayTimeCardModel.lessonTitle = "Hindi";
  thursdayTimeCardModel.attendancePercentage = "100";
  thursdayTimeCardModel.timeSlot = "10:30-11:00";
  thursdayTimeCardModel.imageUrl = "assets/images/hindi.png";
  thursdayTimeCardModel.attendanceColor = "#00FF00";
  thursdayTimeCards.add(thursdayTimeCardModel);

  //4
  thursdayTimeCardModel = new TimeCardModel();
  thursdayTimeCardModel.lessonTitle = "Science";
  thursdayTimeCardModel.attendancePercentage = "100";
  thursdayTimeCardModel.timeSlot = "11:00-11:30";
  thursdayTimeCardModel.imageUrl = "assets/images/science.png";
  thursdayTimeCardModel.attendanceColor = "#FF0000";
  thursdayTimeCards.add(thursdayTimeCardModel);

  //5
  thursdayTimeCardModel = new TimeCardModel();
  thursdayTimeCardModel.lessonTitle = "Hindi";
  thursdayTimeCardModel.attendancePercentage = "100";
  thursdayTimeCardModel.timeSlot = "12:30-13:00";
  thursdayTimeCardModel.imageUrl = "assets/images/hindi.png";
  thursdayTimeCardModel.attendanceColor = "#00FF00";
  thursdayTimeCards.add(thursdayTimeCardModel);

  //6
  thursdayTimeCardModel = new TimeCardModel();
  thursdayTimeCardModel.lessonTitle = "Computer";
  thursdayTimeCardModel.attendancePercentage = "100";
  thursdayTimeCardModel.timeSlot = "13:00-13:30";
  thursdayTimeCardModel.imageUrl = "assets/images/computer.png";
  thursdayTimeCardModel.attendanceColor = "#00FF00";
  thursdayTimeCards.add(thursdayTimeCardModel);

  //7
  thursdayTimeCardModel = new TimeCardModel();
  thursdayTimeCardModel.lessonTitle = "Maths";
  thursdayTimeCardModel.attendancePercentage = "100";
  thursdayTimeCardModel.timeSlot = "13:30-14:00";
  thursdayTimeCardModel.imageUrl = "assets/images/hindi.png";
  thursdayTimeCardModel.attendanceColor = "#00FF00";
  thursdayTimeCards.add(thursdayTimeCardModel);

  return thursdayTimeCards;
}
