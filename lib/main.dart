import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'homePage.dart';
import 'welcomeScreen.dart';
import 'createBlog.dart';
import 'loginPage.dart';
import 'registerPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      initialRoute: Welcome.id,
      routes: {
        Welcome.id: (context) => Welcome(),
        Home.id: (context) => Home(),
        CreateBlog.id: (context) => CreateBlog(),
        Login.id: (context) => Login(),
        Register.id: (context) => Register(),
      },
    ),
  );
}
