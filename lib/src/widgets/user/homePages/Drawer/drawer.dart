import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'package:verdant/screens/announcements.dart';
// import 'package:verdant/screens/attendance.dart';
// import 'package:verdant/screens/homeWork.dart';
// import 'package:verdant/screens/messages.dart';
// import 'package:verdant/screens/profile.dart';
// import 'package:verdant/screens/timetable.dart';

class DrawerApp extends StatefulWidget {
  @override
  _DrawerAppState createState() => _DrawerAppState();
}

class _DrawerAppState extends State<DrawerApp> {
  get val => true;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.green),
            // child: Column(
            //   children: <Widget>[
            //     DrawerHeader(
            //       decoration: BoxDecoration(color: Colors.blue,
            //       ),
            //       child: CircleAvatar(
            //         backgroundColor: Colors.lightGreen,
            //       ),
            //     )
            //   ],
            // ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  color: Color.fromRGBO(2, 97, 115, 1),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 50.0,
                          left: 20.0,
                        ),
                        child: CircleAvatar(
                          radius: 36,
                          backgroundColor: Colors.blue,
                          backgroundImage:
                              AssetImage('assets/images/computer.png'),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 10.0, top: 94.0, bottom: 50.0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Anshul Sharma',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '11908042',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Class: 12th',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 4,
                      )
                    ],
                  ),
                ),
                // _createHeader(),
                GestureDetector(
                  // onTap: () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => Profile()));
                  // },
                  child: _createDrawerItem(
                    image: Image.asset(
                      'assets/images/user.png',
                      color: Colors.black.withOpacity(0.6),
                    ),
                    text: 'View Profile',
                  ),
                ),
                Divider(
                  height: 0,
                ),
                GestureDetector(
                    child: _createDrawerItem(
                        image: Image.asset(
                          'assets/images/time.png',
                          color: Colors.black.withOpacity(0.6),
                        ),
                        text: 'Time Table')),
                Divider(
                  height: 0,
                ),

                Divider(
                  height: 0,
                ),

                GestureDetector(
                  // },
                  child: _createDrawerItem(
                    image: Image.asset('assets/images/homework.png'),
                    text: 'Home Work',
                  ),
                ),
                Divider(
                  height: 0,
                ),

                _createDrawerItem(
                  image: Image.asset('assets/images/test.png'),
                  text: 'Test Marks',
                ),
                Divider(
                  height: 0,
                ),
                GestureDetector(
                  // onTap: () {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => Attendance(),
                  //       ));
                  // },
                  child: _createDrawerItem(
                      image: Image.asset(
                        'assets/images/user2.png',
                        width: 64,
                        color: Colors.black,
                      ),
                      text: 'Attendance '),
                ),
                Divider(
                  height: 0,
                ),
                _createDrawerItem(
                    image: Image.asset('assets/images/test.png'),
                    text: 'Fee Payment'),
              ],
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.star_border),
                  title: Text('Rate Us'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.exit_to_app),
                  title: Text('Logout'),
                ),
              ],
              // currentIndex: _selectedIndex,
              // selectedItemColor: Colors.amber[800],
              // onTap: _onItemTapped,
            ),
          ),
        ],
      ),
    );
  }

  Widget _createDrawerItem(
      {Image image, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceB,

        children: <Widget>[
          // Icon(icon, color: Colors.black54),
          Container(width: 20, child: image),
          Padding(
            padding: EdgeInsets.only(left: 28.0),
            child: Text(
              text,
              style: TextStyle(color: Colors.black54),
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }

  // Widget _createDrawerItem2(
  //     {IconData icon, String text, GestureTapCallback onTap}) {
  //   return ListTile(
  //     title: Flexible(
  //       child: Row(
  //         children: <Widget>[
  //           Icon(icon, color: Colors.black54),
  //           Padding(
  //             padding: EdgeInsets.only(left: 8.0),
  //             child: Text(
  //               text,
  //               style: TextStyle(color: Colors.black54),
  //             ),
  //           ),
  //           SizedBox(
  //             width: 100,
  //           ),
  //           Switch(
  //             value: val,
  //             onChanged: null,
  //             activeColor: Colors.orange,
  //           ),
  //         ],
  //       ),
  //     ),
  //     onTap: onTap,
  //   );
  // }
}
