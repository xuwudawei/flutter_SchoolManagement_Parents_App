import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:skulify_app/src/widgets/user/login/newPassword.dart';

class VerifyPhone extends StatefulWidget {
  @override
  _VerifyPhoneState createState() => _VerifyPhoneState();
}

class _VerifyPhoneState extends State<VerifyPhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          'Verification',
          style: GoogleFonts.nunito(
            textStyle: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Color(0xfff6f7f9),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Center(
                  child: Image(
                      image: AssetImage(
                        'assets/images/forgot.png',
                      ),
                      height: 64),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 22.0,
                  left: 40.0,
                  right: 40.0,
                ),
                // child: Text('Need help with your password?',
                //     textAlign: TextAlign.center,
                //     style:
                //         GoogleFonts.nunito(textStyle: TextStyle(fontSize: 26))),
              ),
            ),
            Container(
                child: Padding(
              padding: const EdgeInsets.only(
                top: 18.0,
                left: 40.0,
                right: 40.0,
              ),
              child: Text(
                  'Please enter the verification code we send to your Phone Number',
                  textAlign: TextAlign.center,
                  style:
                      GoogleFonts.nunito(textStyle: TextStyle(fontSize: 14))),
            )),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Center(
                child: OTPTextField(
                  length: 4,
                  width: MediaQuery.of(context).size.width,
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldWidth: 50,
                  fieldStyle: FieldStyle.underline,
                  style: TextStyle(fontSize: 17),
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                  },
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
                child: RichText(
              text: TextSpan(
                text: 'Didn\'t received the code',
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Send Again',
                    style: GoogleFonts.nunito(
                        textStyle: TextStyle(fontWeight: FontWeight.bold)),
                  )
                  // TextSpan(text: ' world!'),
                ],
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(top: 22.0),
              child: Container(
                width: 250,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFF3b5999).withOpacity(.85),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewPassword(),
                        ));
                  },
                  child: Text(
                    "Verify",
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 10.0, bottom: 10.0, left: 8.0, right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Contact Us',
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Privacy',
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'About',
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
        color: Colors.grey[200],
      ),
    );
  }
}
