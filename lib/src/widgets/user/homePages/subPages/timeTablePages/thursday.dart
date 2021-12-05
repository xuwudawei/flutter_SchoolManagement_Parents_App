import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:skulify_app/src/provider/BotomNav.dart';
import 'package:skulify_app/src/provider/MondayTTableProvider.dart';
import 'package:skulify_app/src/provider/ThursdayTTableProvider.dart';
import 'package:skulify_app/src/provider/TuesdayTTableProvider.dart';
import 'package:skulify_app/src/provider/WednesdayTTableProvider.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/dashboard.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/messages.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/quickQuiz.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/rms.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/switchUser.dart';

var color = Color.fromRGBO(255, 64, 129, 1);

class ThursdayTimeTable extends StatefulWidget {
  @override
  _ThursdayTimeTableState createState() => _ThursdayTimeTableState();
}

class _ThursdayTimeTableState extends State<ThursdayTimeTable> {
  @override
  var selectedNav = 0;

  List<Widget> _widgetOptions = <Widget>[
    DashBoard(),
    RMS(),
    SwitchUser(),
    QuickQuiz(),
  ];

  void _onItemTapped(int index) {
    BotomNav bot = Provider.of<BotomNav>(context, listen: false);
    Navigator.of(context).pop();
    bot.setSave(index);
    // setState(() {
    //   selectedNav = index;
    // });
  }

  @override
  Widget build(BuildContext context) {
    final myThursdayTTable =
        Provider.of<ThursdayTTableProvider>(context, listen: false);
    BotomNav botom = Provider.of<BotomNav>(context);
    return Scaffold(
      backgroundColor: Color(0xfff6f7f9),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 1.0,
                        bottom: 1.0,
                        top: 0.0,
                        right: 1.0,
                      ),
                      child: Card(
                        elevation: 6,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color.fromRGBO(98, 110, 212, 1),
                          ),
                          height: MediaQuery.of(context).size.height / 6.5,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, top: 10.0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      children: <Widget>[
                                        Card(
                                          // leading: Icon(Icons.album),
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        121, 132, 218, 1),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                4.0))),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Image.asset(
                                                    myThursdayTTable
                                                        .getCardList[0]
                                                        .imageUrl,
                                                    height: 24,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          // subtitle: Text(‘Music by Julie Gable. Lyrics by Sidney Stein.’),
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Container(
                                                  child: SizedBox(
                                                    width: 75,
                                                    height: 20,
                                                    child: Text(
                                                      myThursdayTTable
                                                          .getCardList[0]
                                                          .lessonTitle,
                                                      style: TextStyle(
                                                          fontSize: 14.0,
                                                          color: Colors.white
                                                              .withOpacity(0.8),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      49,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                              ],
                                            ),
                                            // SizedBox(
                                            //   height: MediaQuery.of(context).size.height / 32,
                                            // ),
                                            Text(
                                              myThursdayTTable
                                                  .getCardList[0].timeSlot,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          "Attendence",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color:
                                                Colors.white.withOpacity(0.8),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 8.0,
                                          right: 8.0,
                                          bottom: 9,
                                        ),
                                        child: FaIcon(
                                          FontAwesomeIcons.chevronCircleUp,
                                          color: HexColor(myThursdayTTable
                                              .getCardList[0].attendanceColor),
                                          size: 14,
                                        ),
                                      ),
                                    ],
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
                Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 1.0,
                        bottom: 1.0,
                        top: 0.0,
                        right: 1.0,
                      ),
                      child: Card(
                        elevation: 6,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color.fromRGBO(98, 110, 212, 1),
                          ),
                          height: MediaQuery.of(context).size.height / 6.5,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, top: 10.0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      children: <Widget>[
                                        Card(
                                          // leading: Icon(Icons.album),
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        121, 132, 218, 1),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                4.0))),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Image.asset(
                                                    myThursdayTTable
                                                        .getCardList[1]
                                                        .imageUrl,
                                                    height: 24,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          // subtitle: Text(‘Music by Julie Gable. Lyrics by Sidney Stein.’),
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Container(
                                                  child: SizedBox(
                                                    width: 75,
                                                    height: 20,
                                                    child: Text(
                                                      myThursdayTTable
                                                          .getCardList[1]
                                                          .lessonTitle,
                                                      style: TextStyle(
                                                          fontSize: 14.0,
                                                          color: Colors.white
                                                              .withOpacity(0.8),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      49,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                              ],
                                            ),
                                            // SizedBox(
                                            //   height: MediaQuery.of(context).size.height / 32,
                                            // ),
                                            Text(
                                              myThursdayTTable
                                                  .getCardList[1].timeSlot,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          "Attendence",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color:
                                                Colors.white.withOpacity(0.8),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 8.0,
                                          right: 8.0,
                                          bottom: 9,
                                        ),
                                        child: FaIcon(
                                          FontAwesomeIcons.chevronCircleUp,
                                          color: HexColor(myThursdayTTable
                                              .getCardList[1].attendanceColor),
                                          size: 14,
                                        ),
                                      ),
                                    ],
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
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 1.0,
                        bottom: 1.0,
                        top: 0.0,
                        right: 1.0,
                      ),
                      child: Card(
                        elevation: 6,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color.fromRGBO(98, 110, 212, 1),
                          ),
                          height: MediaQuery.of(context).size.height / 6.5,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, top: 10.0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      children: <Widget>[
                                        Card(
                                          // leading: Icon(Icons.album),
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        121, 132, 218, 1),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                4.0))),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Image.asset(
                                                    myThursdayTTable
                                                        .getCardList[2]
                                                        .imageUrl,
                                                    height: 24,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          // subtitle: Text(‘Music by Julie Gable. Lyrics by Sidney Stein.’),
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Container(
                                                  child: SizedBox(
                                                    width: 75,
                                                    height: 20,
                                                    child: Text(
                                                      myThursdayTTable
                                                          .getCardList[2]
                                                          .lessonTitle,
                                                      style: TextStyle(
                                                          fontSize: 14.0,
                                                          color: Colors.white
                                                              .withOpacity(0.8),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      49,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                              ],
                                            ),
                                            // SizedBox(
                                            //   height: MediaQuery.of(context).size.height / 32,
                                            // ),
                                            Text(
                                              myThursdayTTable
                                                  .getCardList[2].timeSlot,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          "Attendence",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color:
                                                Colors.white.withOpacity(0.8),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 8.0,
                                          right: 8.0,
                                          bottom: 9,
                                        ),
                                        child: FaIcon(
                                          FontAwesomeIcons.chevronCircleUp,
                                          color: HexColor(myThursdayTTable
                                              .getCardList[2].attendanceColor),
                                          size: 14,
                                        ),
                                      ),
                                    ],
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
                Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 1.0,
                        bottom: 1.0,
                        top: 0.0,
                        right: 1.0,
                      ),
                      child: Card(
                        elevation: 6,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color.fromRGBO(98, 110, 212, 1),
                          ),
                          height: MediaQuery.of(context).size.height / 6.5,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, top: 10.0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      children: <Widget>[
                                        Card(
                                          // leading: Icon(Icons.album),
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        121, 132, 218, 1),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                4.0))),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Image.asset(
                                                    myThursdayTTable
                                                        .getCardList[3]
                                                        .imageUrl,
                                                    height: 24,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          // subtitle: Text(‘Music by Julie Gable. Lyrics by Sidney Stein.’),
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Container(
                                                  child: SizedBox(
                                                    width: 75,
                                                    height: 20,
                                                    child: Text(
                                                      myThursdayTTable
                                                          .getCardList[3]
                                                          .lessonTitle,
                                                      style: TextStyle(
                                                          fontSize: 14.0,
                                                          color: Colors.white
                                                              .withOpacity(0.8),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      49,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                              ],
                                            ),
                                            // SizedBox(
                                            //   height: MediaQuery.of(context).size.height / 32,
                                            // ),
                                            Text(
                                              myThursdayTTable
                                                  .getCardList[3].timeSlot,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          "Attendence",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color:
                                                Colors.white.withOpacity(0.8),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 8.0,
                                          right: 8.0,
                                          bottom: 9,
                                        ),
                                        child: FaIcon(
                                          FontAwesomeIcons.chevronCircleUp,
                                          color: HexColor(myThursdayTTable
                                              .getCardList[3].attendanceColor),
                                          size: 14,
                                        ),
                                      ),
                                    ],
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
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 1.0,
                        bottom: 1.0,
                        top: 0.0,
                        right: 1.0,
                      ),
                      child: Card(
                        elevation: 4,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color.fromRGBO(98, 110, 212, 1),
                          ),
                          height: MediaQuery.of(context).size.height / 6.5,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, top: 10.0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      children: <Widget>[
                                        Card(
                                          // leading: Icon(Icons.album),
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        121, 132, 218, 1),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                4.0))),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Image.asset(
                                                    myThursdayTTable
                                                        .getCardList[4]
                                                        .imageUrl,
                                                    height: 24,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          // subtitle: Text(‘Music by Julie Gable. Lyrics by Sidney Stein.’),
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Container(
                                                  child: SizedBox(
                                                    width: 75,
                                                    height: 20,
                                                    child: Text(
                                                      myThursdayTTable
                                                          .getCardList[4]
                                                          .lessonTitle,
                                                      style: TextStyle(
                                                          fontSize: 14.0,
                                                          color: Colors.white
                                                              .withOpacity(0.8),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      49,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                              ],
                                            ),
                                            // SizedBox(
                                            //   height: MediaQuery.of(context).size.height / 32,
                                            // ),
                                            Text(
                                              myThursdayTTable
                                                  .getCardList[4].timeSlot,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          "Attendence",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color:
                                                Colors.white.withOpacity(0.8),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 8.0,
                                          right: 8.0,
                                          bottom: 9,
                                        ),
                                        child: FaIcon(
                                          FontAwesomeIcons.chevronCircleUp,
                                          color: HexColor(myThursdayTTable
                                              .getCardList[4].attendanceColor),
                                          size: 14,
                                        ),
                                      ),
                                    ],
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
                Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 1.0,
                        bottom: 1.0,
                        top: 0.0,
                        right: 1.0,
                      ),
                      child: Card(
                        elevation: 4,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color.fromRGBO(98, 110, 212, 1),
                          ),
                          height: MediaQuery.of(context).size.height / 6.5,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, top: 10.0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      children: <Widget>[
                                        Card(
                                          // leading: Icon(Icons.album),
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        121, 132, 218, 1),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                4.0))),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Image.asset(
                                                    myThursdayTTable
                                                        .getCardList[5]
                                                        .imageUrl,
                                                    height: 24,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          // subtitle: Text(‘Music by Julie Gable. Lyrics by Sidney Stein.’),
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Container(
                                                  child: SizedBox(
                                                    width: 75,
                                                    height: 20,
                                                    child: Text(
                                                      myThursdayTTable
                                                          .getCardList[5]
                                                          .lessonTitle,
                                                      style: TextStyle(
                                                          fontSize: 14.0,
                                                          color: Colors.white
                                                              .withOpacity(0.8),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      49,
                                                ),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                              ],
                                            ),
                                            // SizedBox(
                                            //   height: MediaQuery.of(context).size.height / 32,
                                            // ),
                                            Text(
                                              myThursdayTTable
                                                  .getCardList[5].timeSlot,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          "Attendence",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color:
                                                Colors.white.withOpacity(0.8),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 8.0,
                                          right: 8.0,
                                          bottom: 9,
                                        ),
                                        child: FaIcon(
                                          FontAwesomeIcons.chevronCircleUp,
                                          color: HexColor(myThursdayTTable
                                              .getCardList[5].attendanceColor),
                                          size: 14,
                                        ),
                                      ),
                                    ],
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
          ],
        ),
      ),
      // bottomNavigationBar: Theme(
      //   data: Theme.of(context).copyWith(
      //     primaryColor: color,
      //   ),
      //   child: BottomNavigationBar(
      //     type: BottomNavigationBarType.fixed,
      //     items: [
      //       BottomNavigationBarItem(
      //         title: Text("Dashboard"),
      //         icon: Icon(Icons.dashboard),
      //       ),
      //       BottomNavigationBarItem(
      //         title: Text("RMS"),
      //         icon: Icon(Icons.note),
      //       ),
      //       BottomNavigationBarItem(
      //         title: Text("Switch User"),
      //         icon: Icon(
      //           Icons.group,
      //           size: 26,
      //         ),
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.school),
      //         title: Text('Quick Quiz'),
      //       ),
      //     ],
      //     onTap: _onItemTapped,
      //     selectedItemColor: Colors.amber[800],
      //     currentIndex: botom.getDefault(),
      //   ),
      // ),
    );
  }
}
