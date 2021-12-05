import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:skulify_app/src/helper/classAttendanceData.dart';
import 'package:skulify_app/src/provider/aggregateAttendanceProvider.dart';
import 'package:skulify_app/src/provider/attendanceProvider.dart';

import 'package:skulify_app/src/widgets/user/homePages/subPages/attendanceCardTile.dart';

class Attendance extends StatefulWidget {
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    final myAttendancePercent =
        Provider.of<AggregateAttendanceProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black54),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text(
          'Attendance',
          style: TextStyle(color: Colors.black54),
        ),
        backgroundColor: Color(0xfff6f7f9),
      ),
      backgroundColor: Color.fromRGBO(241, 246, 249, 1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
            child: Card(
              elevation: 1.6,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.white,
                    ),
                    child: Align(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, top: 10.0, bottom: 10.0),
                                child: Text(
                                  'AGGREGATE ATTENDANCE',
                                  style: GoogleFonts.lato(
                                    textStyle:
                                        Theme.of(context).textTheme.display1,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.italic,
                                  ), //  TextStyle(
                                  //     color: Colors.black87, fontSize: 14),
                                ),
                              ),
                              SizedBox(
                                width: 120,
                              ),
                              Container(
                                width: 40,
                                child: Align(
                                    child: Text(
                                  " " +
                                      myAttendancePercent
                                          .getAggregateAttendance()
                                          .toString() +
                                      "% ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      backgroundColor: Colors.orange[700]),
                                )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: displayAttendanceList(context),
          ),
        ],
      ),
    );
  }
}

Widget displayAttendanceList(context) {
  final attendanceList =
      Provider.of<AttendanceProvider>(context, listen: false);
  return Container(
    child: ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: attendanceList.getAttendanceList.length,
      itemBuilder: (BuildContext context, int index) {
        return AttendanceCardTile(
          lectureTitle: attendanceList.getAttendanceList[index].lectureTitle,
          attendedCount: attendanceList.getAttendanceList[index].attendedCount,
          deliveredCount:
              attendanceList.getAttendanceList[index].deliveredCount,
          className: attendanceList.getAttendanceList[index].className,
          dutyLeave: attendanceList.getAttendanceList[index].dutyLeave,
          facultyName: attendanceList.getAttendanceList[index].facultyName,
          groupNo: attendanceList.getAttendanceList[index].groupNo,
          lastAttended: attendanceList.getAttendanceList[index].lastAttended,
          rollNo: attendanceList.getAttendanceList[index].rollNo,
        );
      },
    ),
  );
}
