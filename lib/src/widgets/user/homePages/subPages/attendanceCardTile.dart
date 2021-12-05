import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class AttendanceCardTile extends StatefulWidget {
  final lectureTitle,
      groupNo,
      facultyName,
      lastAttended,
      attendedCount,
      deliveredCount,
      dutyLeave,
      className,
      rollNo;
  AttendanceCardTile({
    this.attendedCount,
    this.deliveredCount,
    this.lectureTitle,
    this.groupNo,
    this.facultyName,
    this.lastAttended,
    this.dutyLeave,
    this.className,
    this.rollNo,
  });
  @override
  _AttendanceCardTileState createState() => _AttendanceCardTileState();
}

class _AttendanceCardTileState extends State<AttendanceCardTile> {
  @override
  Widget build(BuildContext context) {
    final attendancePercentage = ((double.parse(widget.attendedCount) /
                double.parse(widget.deliveredCount)) *
            100)
        .round();
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 6.0, right: 6.0, bottom: 4.0),
            child: Card(
              elevation: 3,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.lectureTitle,
                            style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black.withOpacity(0.8)),
                            ),
                          ),
                          Stack(
                              alignment: Alignment.centerRight,
                              children: <Widget>[
                                Container(
                                    height: 43,
                                    child: Image.asset(
                                        'assets/images/bookmark.png')),
                                Padding(
                                  padding: const EdgeInsets.only(right: 4.0),
                                  child: Text(
                                    "Group:" + " " + widget.groupNo,
                                    style: GoogleFonts.nunito(
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10.5,
                                      ),
                                    ),
                                  ),
                                ),
                              ])
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Faculty:' + " ",
                                          style: GoogleFonts.nunito(
                                            textStyle: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black
                                                    .withOpacity(0.55)),
                                          ),
                                        ),
                                        Text(
                                          widget.facultyName,
                                          style: GoogleFonts.nunito(
                                            textStyle: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black
                                                    .withOpacity(0.7)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 3.6,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Last Attended:' + " ",
                                          style: GoogleFonts.nunito(
                                            textStyle: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black
                                                    .withOpacity(0.55)),
                                          ),
                                        ),
                                        Text(
                                          widget.lastAttended,
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black
                                                  .withOpacity(0.7)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 3.6,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Attended/Delivered:' + " ",
                                          style: GoogleFonts.nunito(
                                            textStyle: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black
                                                    .withOpacity(0.55)),
                                          ),
                                        ),
                                        Text(
                                          widget.attendedCount +
                                              " / " +
                                              widget.deliveredCount,
                                          style: GoogleFonts.nunito(
                                            textStyle: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black
                                                    .withOpacity(0.7)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 3.6,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Duty Leave:' + " ",
                                          style: GoogleFonts.nunito(
                                            textStyle: TextStyle(
                                                fontSize: 13.6,
                                                color: Colors.black
                                                    .withOpacity(0.55)),
                                          ),
                                        ),
                                        Text(
                                          widget.dutyLeave,
                                          style: GoogleFonts.nunito(
                                            textStyle: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black
                                                    .withOpacity(0.7)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: new CircularPercentIndicator(
                            radius: 70.0,
                            lineWidth: 3.0,
                            animation: true,
                            animationDuration: 1000,
                            percent: double.parse(
                                  '10',
                                ) /
                                100,
                            center: new Text(
                              attendancePercentage.toString() + "%",
                              style: GoogleFonts.nunito(
                                textStyle: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                            progressColor: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, bottom: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Class:' + ' ' + widget.className,
                              style: GoogleFonts.nunito(
                                textStyle: TextStyle(
                                    color: Colors.orange, fontSize: 15.5),
                              ),
                            ),
                            Text(
                              "Roll No: " + widget.rollNo,
                              style: GoogleFonts.nunito(
                                textStyle: TextStyle(
                                    color: Colors.orange, fontSize: 15.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
