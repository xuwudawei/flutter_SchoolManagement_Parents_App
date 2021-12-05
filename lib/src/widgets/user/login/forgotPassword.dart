import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skulify_app/src/widgets/user/login/verifyPhone.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({Key key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _autoValidate = false;
  bool validatorSuffix = false;
  String _mobile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          'Forgot Password',
          style: GoogleFonts.nunito(
            textStyle: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Color(0xfff6f7f9),
      ),
      body: SingleChildScrollView(
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
                top: 32.0,
                left: 40.0,
                right: 40.0,
              ),
              child: Text('Need help with your password?',
                  textAlign: TextAlign.center,
                  style:
                      GoogleFonts.nunito(textStyle: TextStyle(fontSize: 26))),
            )),
            Container(
                child: Padding(
              padding: const EdgeInsets.only(
                top: 18.0,
                left: 40.0,
                right: 40.0,
              ),
              child: Text(
                  'Enter registered phone number, and we\'ll help you create a new password  ',
                  textAlign: TextAlign.center,
                  style:
                      GoogleFonts.nunito(textStyle: TextStyle(fontSize: 14))),
            )),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 32.0,
                  left: 40.0,
                  right: 40.0,
                ),
                child: Form(
                  key: _formKey,
                  autovalidate: _autoValidate,
                  child: TextFormField(
                    // key: _formKey,
                    onChanged: (String val) {
                      _mobile = val;
                    },

                    keyboardType: TextInputType.number,

                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(
                            top: 14.0, bottom: 10.0, left: 8.0, right: 8.0),
                        child: Text(
                          '+91 |',
                          style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                  fontSize: 14, color: Colors.grey[800])),
                        ),
                      ),
                      suffixIcon: 1 != 10
                          ? Icon(Icons.verified, size: 16, color: Colors.grey)
                          : Icon(Icons.verified, size: 16),
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        ),
                      ),
                      labelText: 'Phone Number',
                      labelStyle: GoogleFonts.nunito(
                          textStyle: TextStyle(fontSize: 14)),
                      hintText: ' 8626808149',
                      hintStyle: GoogleFonts.nunito(
                          textStyle: TextStyle(fontSize: 14)),
                    ),
                    validator: validateMobile,
                    onSaved: (String val) {
                      _mobile = val;
                    },
                  ),
                ),
              ),
            ),
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
                    _validateInputs();
                  },
                  child: Text(
                    "Next",
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
          color: Colors.grey[200]),
    );
  }

  String validateMobile(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length != 10)
      return 'Mobile Number must be of 10 digit';
    else
      return null;
  }

  void _validateInputs() {
    if (_formKey.currentState.validate()) {
//    If all data are correct then save data to out variables
      _formKey.currentState.save();
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VerifyPhone(),
          ));
    } else {
//    If all data are not valid then start auto validation.
      setState(() {
        _autoValidate = true;
      });
    }
  }
}
