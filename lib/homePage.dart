import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'createBlog.dart';

class Home extends StatefulWidget {
  static String id = 'home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Row(
          children: <Widget>[
            Text(
              "Blog",
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
            Text(
              "App",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
              ),
            ),
          ],
        ),
        gradient:
            LinearGradient(colors: [Color(0xFF6958A6), Color(0xFFB06086)]),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                size: 30.0,
              ),
              onPressed: () {

              }),
        ],
        elevation: 10.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Pikachu"),
              accountEmail: Text("pikachu@mail,com"),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF6958A6), Color(0xFFB06086)]),
              ),
            ),
          ],
        ),
      ),
      body: Container(),
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
              backgroundColor: Color(0xFF6958A6),
            ),
          ],
        ),
      ),
    );
  }
}
