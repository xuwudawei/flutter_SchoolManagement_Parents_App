import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skulify_app/src/widgets/user/homePages/Drawer/drawer.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/cardsCarousel.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/dashBoardCards1.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/messages.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/timeCardTile.dart';
import 'package:skulify_app/src/widgets/user/homePages/subPages/timeCards.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Messages(),
                    ));
                // do something
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Image.asset(
                  'assets/images/email.png',
                  color: Colors.black87,
                  // height: 10.0,
                  width: 30.0,
                  // height: 10,
                ),
              ),
            ),
          ],
          iconTheme: new IconThemeData(color: Colors.black),
          centerTitle: true,
          title: Text(
            'Dashboard',
            style: GoogleFonts.nunito(
              textStyle:
                  TextStyle(color: Colors.black54, fontWeight: FontWeight.w400),
            ),
          ),
          backgroundColor: Color(0xfff6f7f9),
        ),
        backgroundColor: Color.fromRGBO(241, 246, 249, 1),
        drawer: Drawer(child: DrawerApp()),
        body: SingleChildScrollView(
          child: Container(
            // decoration: BoxDecoration(color: Color.fromRGBO(241, 246, 249, 1)),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 0.5))),
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 4),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Today's Timetable",
                                  style: GoogleFonts.nunito(
                                    textStyle: TextStyle(color: Colors.black54),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          TimeCards(),
                        ],
                      ),
                      SizedBox(
                        height: 4.0,
                      )
                    ],
                  ),
                ),

                // Divider(),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 2.0, right: 2.0, bottom: 2.0, top: 8.0),
                  child: CarouselWithIndicatorDemo(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
