import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skulify_app/src/widgets/user/login/userLogin.dart';

InputDecoration buildInputDecoration(IconData icons, String hinttext) {
  return InputDecoration(
    hintText: hinttext,
    prefixIcon: Icon(icons),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(color: Colors.green, width: 1.5),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(
        color: Colors.blue,
        width: 1.5,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.0),
      borderSide: BorderSide(
        color: Colors.blue,
        width: 1.5,
      ),
    ),
  );
}

class NewPassword extends StatefulWidget {
  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  //TextController to read text entered in text field
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          'New Password',
          style: GoogleFonts.nunito(
            textStyle: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Color(0xfff6f7f9),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
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
                child: Text(
                    'Your new passowrd must be different from previously used Password',
                    textAlign: TextAlign.center,
                    style:
                        GoogleFonts.nunito(textStyle: TextStyle(fontSize: 14))),
              )),
              SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
                child: TextFormField(
                  obscureText: true,
                  controller: password,
                  keyboardType: TextInputType.text,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please a Enter Password';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(20.0),
                      ),
                    ),
                    labelText: 'New Password',
                    hintText: ' ********',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
                child: TextFormField(
                  controller: confirmpassword,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please re-enter password';
                    }
                    print(password.text);
                    print(confirmpassword.text);
                    if (password.text != confirmpassword.text) {
                      return "Password does not match";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(20.0),
                      ),
                    ),
                    labelText: 'New Password',
                    hintText: ' ********',
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
                      if (_formkey.currentState.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserLogin(),
                            ));
                        return;
                      } else {
                        return null;
                      }
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
