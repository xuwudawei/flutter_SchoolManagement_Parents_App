import 'package:skulify_app/src/models/timeCardModel.dart';

List<TimeCardModel> getTuesdayTimeCards() {
  List<TimeCardModel> tuesdayTimeCards = new List<TimeCardModel>();
  TimeCardModel tuesdayTimeCardModel = new TimeCardModel();

  //1
  tuesdayTimeCardModel = new TimeCardModel();
  tuesdayTimeCardModel.lessonTitle = "English";
  tuesdayTimeCardModel.attendancePercentage = "100";
  tuesdayTimeCardModel.timeSlot = "09:30-10:00";
  tuesdayTimeCardModel.imageUrl = "assets/images/english.png";
  tuesdayTimeCardModel.attendanceColor = "#00FF00";
  tuesdayTimeCards.add(tuesdayTimeCardModel);

  //2
  tuesdayTimeCardModel = new TimeCardModel();
  tuesdayTimeCardModel.lessonTitle = "Science";
  tuesdayTimeCardModel.attendancePercentage = "100";
  tuesdayTimeCardModel.timeSlot = "10:00-10:30";
  tuesdayTimeCardModel.imageUrl = "assets/images/computer.png";
  tuesdayTimeCardModel.attendanceColor = "#FF0000";
  tuesdayTimeCards.add(tuesdayTimeCardModel);

  //3
  tuesdayTimeCardModel = new TimeCardModel();
  tuesdayTimeCardModel.lessonTitle = "Hindi";
  tuesdayTimeCardModel.attendancePercentage = "100";
  tuesdayTimeCardModel.timeSlot = "10:30-11:00";
  tuesdayTimeCardModel.imageUrl = "assets/images/hindi.png";
  tuesdayTimeCardModel.attendanceColor = "#00FF00";
  tuesdayTimeCards.add(tuesdayTimeCardModel);

  //4
  tuesdayTimeCardModel = new TimeCardModel();
  tuesdayTimeCardModel.lessonTitle = "Science";
  tuesdayTimeCardModel.attendancePercentage = "100";
  tuesdayTimeCardModel.timeSlot = "11:00-11:30";
  tuesdayTimeCardModel.imageUrl = "assets/images/science.png";
  tuesdayTimeCardModel.attendanceColor = "#FF0000";
  tuesdayTimeCards.add(tuesdayTimeCardModel);

  //5
  tuesdayTimeCardModel = new TimeCardModel();
  tuesdayTimeCardModel.lessonTitle = "Hindi";
  tuesdayTimeCardModel.attendancePercentage = "100";
  tuesdayTimeCardModel.timeSlot = "12:30-13:00";
  tuesdayTimeCardModel.imageUrl = "assets/images/hindi.png";
  tuesdayTimeCardModel.attendanceColor = "#00FF00";
  tuesdayTimeCards.add(tuesdayTimeCardModel);

  //6
  tuesdayTimeCardModel = new TimeCardModel();
  tuesdayTimeCardModel.lessonTitle = "Computer";
  tuesdayTimeCardModel.attendancePercentage = "100";
  tuesdayTimeCardModel.timeSlot = "13:00-13:30";
  tuesdayTimeCardModel.imageUrl = "assets/images/computer.png";
  tuesdayTimeCardModel.attendanceColor = "#00FF00";
  tuesdayTimeCards.add(tuesdayTimeCardModel);

  //7
  tuesdayTimeCardModel = new TimeCardModel();
  tuesdayTimeCardModel.lessonTitle = "Maths";
  tuesdayTimeCardModel.attendancePercentage = "100";
  tuesdayTimeCardModel.timeSlot = "13:30-14:00";
  tuesdayTimeCardModel.imageUrl = "assets/images/hindi.png";
  tuesdayTimeCardModel.attendanceColor = "#00FF00";
  tuesdayTimeCards.add(tuesdayTimeCardModel);

  return tuesdayTimeCards;
}
