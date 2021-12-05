import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class AllTimeCardsTile extends StatelessWidget {
  final lessonTitle, attendancePercentage, timeSlot, imageUrl, attendanceColor;
  AllTimeCardsTile({
    this.lessonTitle,
    this.attendancePercentage,
    this.timeSlot,
    this.imageUrl,
    this.attendanceColor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 4.0, bottom: 10, top: 4.0),
        child: Card(
          elevation: 5,
          child: Container(
            constraints: BoxConstraints(
              minHeight: 200,
            ),
            color: Colors.white,
            width: 152,
            //height: 120,
            child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        '                09-10 AM               ',
                        textDirection: TextDirection.ltr,
                        style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          backgroundColor: Color.fromRGBO(2, 97, 115, 1),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(
                            image: AssetImage(
                              'assets/images/Notebook.png',
                            ),
                            height: 15,
                            color: Colors.grey),
                        SizedBox(
                          width: 8,
                        ),
                        Text('English',
                            style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                color: Colors.black54,
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Teacher: Anshul',
                      style: GoogleFonts.nunito(
                        textStyle: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Not Marked',
                      style: GoogleFonts.nunito(
                        textStyle: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
