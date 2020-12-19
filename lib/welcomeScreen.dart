import 'package:flutter/material.dart';
import 'loginPage.dart';
import 'registerPage.dart';

class Welcome extends StatefulWidget {
  static String id = 'welcome';
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Blog',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6958A6),
                  ),
                ),
                Text(
                  'App',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFB06086),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.all(25.0),
              child: RaisedButton(
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                  elevation: 10.0,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.all(15.0),
                  color: Color(0xFF6958A6),
                  onPressed: () {
                    Navigator.pushNamed(context, Login.id);
                  }),
            ),
            SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: EdgeInsets.all(25.0),
              child: RaisedButton(
                  child: Text(
                    'Register',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        ),
                  ),
                  elevation: 10.0,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.all(15.0),
                  color: Color(0xFF6958A6),
                  onPressed: () {
                    Navigator.pushNamed(context, Register.id);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
