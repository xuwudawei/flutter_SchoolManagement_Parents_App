import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BackUpTimeCard extends StatefulWidget {
  @override
  _BackUpTimeCardState createState() => _BackUpTimeCardState();
}

class _BackUpTimeCardState extends State<BackUpTimeCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 4.0, bottom: 10, top: 4.0),
              child: Card(
                elevation: 5,
                child: Container(
                  color: Color(0xfff6f7f9),
                  width: 152,
                  height: 120,
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 200,
                            color: Color.fromRGBO(2, 97, 115, 1),
                            child: Text(
                              '09-10 AM',
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                backgroundColor: Color.fromRGBO(2, 97, 115, 1),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FaIcon(
                                FontAwesomeIcons.book,
                                color: Colors.black45,
                                size: 15,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'English',
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Teacher: Anshul ',
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Not Marked',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
