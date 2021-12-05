import 'package:flutter/material.dart';
import 'package:skulify_app/src/widgets/user/homePages/main.dart';
import 'package:skulify_app/src/widgets/user/login/forgotPassword.dart';
import 'package:skulify_app/src/widgets/user/login/palette.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:google_fonts/google_fonts.dart';

var color = Color.fromRGBO(255, 64, 129, 1);

class UserLogin extends StatefulWidget {
  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  bool isSignupScreen = false;
  bool isMale = true;
  bool isRememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                      // image: DecorationImage(
                      //     image: AssetImage("images/friends.png"),
                      //     fit: BoxFit.fill)
                      ),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(
                      top: 30,
                    ),
                    color: Color(0xFF3b5999).withOpacity(.85),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(
                            image: AssetImage(
                              'assets/images/friends.png',
                            ),
                            height: 200)
                        // RichText(
                        //   text: TextSpan(
                        //       text: "Welcome to",
                        //       style:GoogleFonts.nunito(),

                        //       children: [
                        //         TextSpan(
                        //           text: isSignupScreen ? " Rizona," : " Back,",
                        //           style: TextStyle(
                        //             fontSize: 25,
                        //             fontWeight: FontWeight.bold,
                        //             color: Colors.yellow[700],
                        //           ),
                        //         )
                        //       ]),
                        // ),

                        // Text(
                        //   isSignupScreen
                        //       ? "Signup to Continue"
                        //       : "Signin to Continue",
                        //   style: TextStyle(
                        //     letterSpacing: 1,
                        //     color: Colors.white,
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 340.0),
                  child: Align(
                      alignment: Alignment.bottomCenter, child: textSlider()),
                ),
              ],
            ),
          ),
          // Trick to add the shadow for the submit button
          //Main Contianer for Login and Signup
          AnimatedPositioned(
            duration: Duration(milliseconds: 700),
            curve: Curves.bounceInOut,
            top: isSignupScreen ? 200 : 230,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 700),
              curve: Curves.bounceInOut,
              height: 340,
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 5),
                  ]),
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSignupScreen = false;
                              });
                            },
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Welcome!",
                                      style: GoogleFonts.nunito(
                                        textStyle: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700,
                                            color: !isSignupScreen
                                                ? Palette.activeColor
                                                : Palette.textColor1),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text("On",
                                            style: GoogleFonts.nunito(
                                              textStyle: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: !isSignupScreen
                                                      ? Palette.activeColor
                                                      : Palette.textColor1),
                                            )),
                                        Text(" schoolx",
                                            style: GoogleFonts.nunito(
                                              textStyle: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.blue),
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSignupScreen = true;
                              });
                            },
                            child: Column(
                              children: [
                                // Text(
                                //   "SIGNUP",
                                //   style: TextStyle(
                                //       fontSize: 16,
                                //       fontWeight: FontWeight.bold,
                                //       color: isSignupScreen
                                //           ? Palette.activeColor
                                //           : Palette.textColor1),
                                // ),
                              ],
                            ),
                          )
                        ],
                      ),
                      // if (isSignupScreen) buildSignupSection(),
                      if (!isSignupScreen) buildSigninSection(),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Trick to add the submit button
          // buildBottomHalfContainer(false),
          // Bottom buttons
        ],
      ),
    );
  }

  Container buildSigninSection() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.emoji_emotions_outlined),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(20.0),
                ),
              ),
              labelText: 'User Name',
              hintText: ' username',
            ),
          ),
          SizedBox(height: 14),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock_open_rounded),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(20.0),
                ),
              ),
              labelText: 'Password',
              hintText: ' ******',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotPassword(),
                      ));
                },
                child: Text("Forgot Password?",
                    style: GoogleFonts.nunito(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.8)))),
              )
            ],
          ),
          Container(
            width: 120,
            height: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xFF3b5999).withOpacity(.85),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => HomePage()),
                    ModalRoute.withName('/login/home'));
              },
              child: Text(
                "Login",
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container textSlider() {
    return Container(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 100,
              aspectRatio: 16 / 9,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 4),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.decelerate,
              // enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            items: [
              [
                'Try not to become a man of sucess but a man of value.',
                'Albert Einstein'
              ],
              [
                'If friendship is your weakest point then you are the strongest person in the world',
                'Abraham Lincoln'
              ],
              [
                'Sucess Is when You don\'t have to Introduce yourself ',
                'Anshul Sharma'
              ],
              [
                'Winners Never do the Different Things, They Do the Things Differently',
                'Shiv Khera'
              ],
            ].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Center(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 60.0, right: 60.0),
                          child: Column(
                            children: [
                              Text(i[0],
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.nunito(
                                    textStyle: TextStyle(
                                      color: Colors.black.withOpacity(0.8),
                                      fontSize: 12.0,
                                    ),
                                  )),
                              // Padding(
                              //   padding: const EdgeInsets.only(
                              //     top: 4.0,
                              //     bottom: 4.0,
                              //   ),
                              //   child: Divider(height: 2, color: Colors.grey),
                              // ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text('~ ' + i[1],
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.nunito(
                                      textStyle: TextStyle(
                                        color: Colors.orange.withOpacity(0.8),
                                        fontSize: 12.0,
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ));
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  // TextButton buildTextButton(
  //     IconData icon, String title, Color backgroundColor) {
  //   return TextButton(
  //     onPressed: () {},
  //     style: TextButton.styleFrom(
  //         side: BorderSide(width: 1, color: Colors.grey),
  //         minimumSize: Size(145, 40),
  //         shape:
  //             RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  //         primary: Colors.white,
  //         backgroundColor: backgroundColor),
  //     child: Row(
  //       children: [
  //         Icon(
  //           icon,
  //         ),
  //         SizedBox(
  //           width: 5,
  //         ),
  //         Text(
  //           title,
  //         )
  //       ],
  //     ),
  //   );
  // }
}
