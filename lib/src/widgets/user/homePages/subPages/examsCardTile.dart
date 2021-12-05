import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skulify_app/src/provider/examsDataProvider.dart';
import 'package:skulify_app/src/widgets/user/settings/changeUsername.dart';

class ExamsCardTile extends StatelessWidget {
  final subjectName,
      examCategory,
      roomNo,
      examsLink,
      date,
      examTime,
      reportingTime;
  ExamsCardTile({
    this.date,
    this.examCategory,
    this.examTime,
    this.examsLink,
    this.reportingTime,
    this.roomNo,
    this.subjectName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 10, left: 7, right: 7),
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 12.0, left: 10, right: 10, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    subjectName,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    examCategory,
                    style: TextStyle(
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    roomNo,
                    style: TextStyle(
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    examsLink,
                    style: TextStyle(
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    color: Color.fromRGBO(232, 244, 248, 1),
                    child: Text(
                      "Exam Date: " + date,
                      style: TextStyle(
                        color: Colors.grey,
                        height: 1.5,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3),
                    child: Divider(),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        child: Image.asset(
                          'assets/images/clock.jpeg',
                          height: 25,
                        ),
                      ),
                      Text(
                        "Exam Time " + examTime,
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                      Text(
                        "  Reporting Time " + reportingTime,
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
