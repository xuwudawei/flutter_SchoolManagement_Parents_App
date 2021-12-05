import 'package:skulify_app/src/models/attendanceModel.dart';

List<AttendanceModel> getAllAttendance() {
  List<AttendanceModel> allAttendanceModel = new List<AttendanceModel>();
  AttendanceModel attModel = new AttendanceModel();

  //1

  attModel = new AttendanceModel();
  attModel.lectureTitle = "Computer";
  attModel.groupNo = "1";
  attModel.facultyName = "Anshul Sharma";
  attModel.lastAttended = "11/12/2020";
  attModel.attendedCount = "12";
  attModel.deliveredCount = "12";
  attModel.dutyLeave = "0";

  attModel.className = "12th";
  attModel.rollNo = "11919999";
  allAttendanceModel.add(attModel);

//2
  attModel = new AttendanceModel();
  attModel.lectureTitle = "Hindi";
  attModel.groupNo = "1";
  attModel.facultyName = "Anshul Sharma";
  attModel.lastAttended = "11/12/2020";
  attModel.dutyLeave = "0";

  attModel.className = "12th";
  attModel.rollNo = "11919999";
  attModel.attendedCount = "12";
  attModel.deliveredCount = "12";
  allAttendanceModel.add(attModel);

  //2
  attModel = new AttendanceModel();
  attModel.lectureTitle = "English";
  attModel.groupNo = "1";
  attModel.attendedCount = "10";
  attModel.deliveredCount = "12";
  attModel.facultyName = "Samson Nkrumah Kwaku";
  attModel.lastAttended = "10/12/2020";
  attModel.dutyLeave = "0";

  attModel.className = "12th";
  attModel.rollNo = "11919999";
  allAttendanceModel.add(attModel);

  //3
  attModel = new AttendanceModel();
  attModel.lectureTitle = "Maths";
  attModel.groupNo = "1";
  attModel.facultyName = "David Osei Opoku";
  attModel.lastAttended = "11/12/2020";
  attModel.dutyLeave = "0";
  attModel.attendedCount = "10";
  attModel.deliveredCount = "12";

  attModel.className = "12th";
  attModel.rollNo = "11919999";
  allAttendanceModel.add(attModel);

  //4
  attModel = new AttendanceModel();
  attModel.lectureTitle = "Physics";
  attModel.groupNo = "1";
  attModel.facultyName = "David Osei Opoku";
  attModel.lastAttended = "11/12/2020";
  attModel.dutyLeave = "0";
  attModel.attendedCount = "10";
  attModel.deliveredCount = "12";

  attModel.className = "12th";
  attModel.rollNo = "11919999";
  allAttendanceModel.add(attModel);

  //5
  attModel = new AttendanceModel();
  attModel.lectureTitle = "Science";
  attModel.groupNo = "1";
  attModel.attendedCount = "10";
  attModel.deliveredCount = "12";

  attModel.facultyName = "Anshul Sharma";
  attModel.lastAttended = "11/12/2020";
  attModel.dutyLeave = "0";

  attModel.className = "12th";
  attModel.rollNo = "11919999";
  allAttendanceModel.add(attModel);

  //6
  attModel = new AttendanceModel();
  attModel.lectureTitle = "Physical Education";
  attModel.groupNo = "1";
  attModel.facultyName = "Anshul Sharma";
  attModel.lastAttended = "11/12/2020";
  attModel.dutyLeave = "0";

  attModel.className = "12th";
  attModel.attendedCount = "10";
  attModel.deliveredCount = "12";
  attModel.rollNo = "11919999";
  allAttendanceModel.add(attModel);

  //7
  attModel = new AttendanceModel();
  attModel.lectureTitle = "Geography";
  attModel.groupNo = "1";
  attModel.facultyName = "Anshul Sharma";
  attModel.lastAttended = "11/12/2020";
  attModel.dutyLeave = "0";
  attModel.attendedCount = "10";
  attModel.deliveredCount = "12";

  attModel.className = "12th";
  attModel.rollNo = "11919999";
  allAttendanceModel.add(attModel);

  return allAttendanceModel;
}
