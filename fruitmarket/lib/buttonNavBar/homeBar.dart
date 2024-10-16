import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../pages/homePage.dart';

class bottonNavBar extends StatefulWidget {
  static final title = 'salomon_bottom_bar';

  @override
  _bottonNavBarState createState() => _bottonNavBarState();
}

class _bottonNavBarState extends State<bottonNavBar> {
  var _currentIndex = 0;
  static   List<Widget> _widgetOptions = <Widget>[
    homePage(),
  homePage(),
  homePage(),

  ];
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
            body: _widgetOptions.elementAt(_currentIndex),

      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Color( 0xff68A13A),
          ),


          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
            selectedColor: Color( 0xff68A13A),
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Color( 0xff68A13A),
          ),
        ],
      ),
    );

  }
}

