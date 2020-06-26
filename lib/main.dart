import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import './page1.dart';
import './page2.dart';
import './page3.dart';
import './page4.dart';
import './page5.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Animated Curved Navigation Bar",
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _page = 0;

  final pages = [Page1(), Page2(), Page3(), Page4(), Page5()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Curved Bottom Navbar",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: pages[_page],
        bottomNavigationBar: CurvedNavigationBar(
            onTap: (index) {
              setState(() {
                _page = index;
              });
            },
            height: 70,
            color: Colors.white,
            buttonBackgroundColor: Colors.white,
            backgroundColor: Colors.blueAccent,
            animationCurve: Curves.easeInOutQuad,
            animationDuration: Duration(milliseconds: 500),
            index: 0,
            items: <Widget>[
              Icon(
                Icons.call,
                size: 30,
              ),
              Icon(
                Icons.person_add,
                size: 30,
              ),
              Icon(
                Icons.message,
                size: 30,
              ),
              Icon(
                Icons.add_location,
                size: 30,
              ),
              Icon(
                Icons.shopping_cart,
                size: 30,
              ),
            ]),
      ),
    );
  }
}
