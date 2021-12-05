import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class TestMarks extends StatefulWidget {
  @override
  _TestMarksState createState() => _TestMarksState();
}

class _TestMarksState extends State<TestMarks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          'Test Marks',
          style: GoogleFonts.nunito(
            textStyle: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Color(0xfff6f7f9),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 14.0, left: 6.0, right: 6.0),
                  child: Container(
                    child: DatePicker(
                      DateTime.now(),
                      initialSelectedDate: DateTime.now(),
                      selectionColor: Colors.black87,
                      selectedTextColor: Colors.white,
                      onDateChange: (date) {
                        // New date selected
                        setState(() {
                          // _selectedValue = date;
                        });
                      },
                      monthTextStyle: GoogleFonts.nunito(
                          textStyle: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w700)),
                      dateTextStyle: GoogleFonts.nunito(
                          textStyle: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600)),
                      dayTextStyle: GoogleFonts.nunito(
                          textStyle: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w700)),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: GestureDetector(
                        // onTap: () {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => Announcements(),
                        //       ));
                        // },
                        child: Container(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(243, 241, 236, 1),
                            ),
                            width: MediaQuery.of(context).size.width / 2.4,
                            height: 160,
                            child: Center(
                              child: Column(
                                children: <Widget>[
                                  // SizedBox(
                                  //   height: 10,
                                  // ),

                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 16.0,
                                      top: 16.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Image(
                                              image: AssetImage(
                                                'assets/images/computer.png',
                                              ),
                                              color: Color.fromRGBO(
                                                  165, 160, 143, 1),
                                              height: 28),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(right: 16.0),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 2.8,
                                                right: 2.8,
                                                top: 2.8,
                                                bottom: 2.8),
                                            child: new CircularPercentIndicator(
                                              radius: 50.0,
                                              lineWidth: 2,
                                              animation: true,
                                              animationDuration: 1000,
                                              percent: double.parse(
                                                    '10',
                                                  ) /
                                                  100,
                                              center: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                    text: '0/',
                                                    style: GoogleFonts.nunito(
                                                      textStyle: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          color: Colors.black
                                                              .withOpacity(
                                                                  0.6)),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Transform.translate(
                                                      offset:
                                                          const Offset(0, 4),
                                                      child: Text(
                                                        '10',
                                                        //superscript is usually smaller in size
                                                        textScaleFactor: 1,
                                                        style:
                                                            GoogleFonts.nunito(
                                                          textStyle: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              color: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                      0.6)),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ]),
                                              ),
                                              progressColor: Colors.orange,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 16.0,
                                    ),
                                    child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Computer',
                                        style: GoogleFonts.nunito(
                                            textStyle: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color:
                                              Color.fromRGBO(165, 160, 143, 1),
                                        )),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 18.0,
                                            right: 18.0,
                                            top: 4.0,
                                            bottom: 4.0),
                                        child: Text(
                                          'Excellent',
                                          style: GoogleFonts.nunito(
                                            textStyle: TextStyle(
                                              fontSize: 14,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
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
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: GestureDetector(
                        // onTap: () {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => Announcements(),
                        //       ));
                        // },
                        child: Container(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(243, 241, 236, 1),
                            ),
                            width: MediaQuery.of(context).size.width / 2.4,
                            height: 160,
                            child: Center(
                              child: Column(
                                children: <Widget>[
                                  // SizedBox(
                                  //   height: 10,
                                  // ),

                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 16.0,
                                      top: 16.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Image(
                                              image: AssetImage(
                                                'assets/images/computer.png',
                                              ),
                                              color: Color.fromRGBO(
                                                  165, 160, 143, 1),
                                              height: 28),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(right: 16.0),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 2.8,
                                                right: 2.8,
                                                top: 2.8,
                                                bottom: 2.8),
                                            child: new CircularPercentIndicator(
                                              radius: 50.0,
                                              lineWidth: 2,
                                              animation: true,
                                              animationDuration: 1000,
                                              percent: double.parse(
                                                    '10',
                                                  ) /
                                                  100,
                                              center: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                    text: '0/',
                                                    style: GoogleFonts.nunito(
                                                      textStyle: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          color: Colors.black
                                                              .withOpacity(
                                                                  0.6)),
                                                    ),
                                                  ),
                                                  WidgetSpan(
                                                    child: Transform.translate(
                                                      offset:
                                                          const Offset(0, 4),
                                                      child: Text(
                                                        '90',
                                                        //superscript is usually smaller in size
                                                        textScaleFactor: 1,
                                                        style:
                                                            GoogleFonts.nunito(
                                                          textStyle: TextStyle(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              color: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                      0.6)),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ]),
                                              ),
                                              progressColor: Colors.orange,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 16.0,
                                    ),
                                    child: Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Computer',
                                        style: GoogleFonts.nunito(
                                            textStyle: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color:
                                              Color.fromRGBO(165, 160, 143, 1),
                                        )),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 18.0,
                                            right: 18.0,
                                            top: 4.0,
                                            bottom: 4.0),
                                        child: Text(
                                          'Excellent',
                                          style: GoogleFonts.nunito(
                                            textStyle: TextStyle(
                                              fontSize: 14,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
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
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
