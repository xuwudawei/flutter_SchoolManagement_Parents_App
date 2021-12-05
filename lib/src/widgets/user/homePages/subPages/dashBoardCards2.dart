import 'package:flutter/material.dart';
import 'package:skulify_app/src/helper/dashboardData.dart';
import 'package:skulify_app/src/models/dashBoardCardsModel.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/announcements.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/attendance.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/homework.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/timeTablePages/monday.dart';

class DashBoardCards2 extends StatefulWidget {
  @override
  _DashBoardCards2State createState() => _DashBoardCards2State();
}

class _DashBoardCards2State extends State<DashBoardCards2> {
  List<DashBCardModel> mycards = new List<DashBCardModel>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mycards = getAllDBCards();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Announcements(),
                        ));
                  },
                  child: Card(
                    child: Container(
                      color: Color.fromRGBO(2, 97, 115, 1),
                      width: MediaQuery.of(context).size.width / 2.12,
                      height: 120,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  "   " + mycards[6].tag + "   ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                )),
                            Image.asset(
                              mycards[6].imageUrl,
                              height: 40,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                mycards[6].title,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  backgroundColor:
                                      Color.fromRGBO(2, 97, 115, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Card(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MondayTimeTable()));
                    },
                    child: Container(
                      color: Color.fromRGBO(2, 97, 115, 1),
                      width: MediaQuery.of(context).size.width / 2.12,
                      height: 120,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  "   " + mycards[7].tag + "   ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                )),
                            Image.asset(
                              mycards[7].imageUrl,
                              color: Colors.white70,
                              height: 40,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                mycards[7].title,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  backgroundColor:
                                      Color.fromRGBO(2, 97, 115, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Card(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Attendance(),
                        ),
                      );
                    },
                    child: Container(
                      color: Color.fromRGBO(2, 97, 115, 1),
                      width: MediaQuery.of(context).size.width / 2.12,
                      height: 120,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  "   " + mycards[8].tag + "   ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                )),
                            Image.asset(
                              mycards[8].imageUrl,
                              height: 40,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                mycards[8].title,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  backgroundColor:
                                      Color.fromRGBO(2, 97, 115, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: GestureDetector(
                  child: Card(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeWork(),
                            ));
                      },
                      child: Container(
                        color: Color.fromRGBO(2, 97, 115, 1),
                        width: MediaQuery.of(context).size.width / 2.12,
                        height: 120,
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    "   " + mycards[9].tag + "   ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  )),
                              Image.asset(
                                mycards[9].imageUrl,
                                height: 40,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  mycards[9].title,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    backgroundColor:
                                        Color.fromRGBO(2, 97, 115, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Card(
                  child: Container(
                    color: Color.fromRGBO(2, 97, 115, 1),
                    width: MediaQuery.of(context).size.width / 2.12,
                    height: 120,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                "   " + mycards[10].tag + "  ",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              )),
                          Image.asset(
                            mycards[10].imageUrl,
                            height: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              mycards[10].title,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                backgroundColor: Color.fromRGBO(2, 97, 115, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Card(
                  child: Container(
                    color: Color.fromRGBO(2, 97, 115, 1),
                    width: MediaQuery.of(context).size.width / 2.12,
                    height: 120,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                "   " + mycards[11].tag + "   ",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              )),
                          Image.asset(
                            mycards[11].imageUrl,
                            height: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              mycards[11].title,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                backgroundColor: Color.fromRGBO(2, 97, 115, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
