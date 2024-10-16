import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../screens/Home_page.dart';



class BotomNav extends StatefulWidget {
  static final title = 'salomon_bottom_bar';

  @override
  _BotomNavState createState() => _BotomNavState();
}

class _BotomNavState extends State<BotomNav> {
  var _currentIndex = 0;
  static List<Widget> _WidgetOption =<Widget>[
    HomePage(),
   HomePage(),
   HomePage(),
   HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return   Scaffold(

        body: _WidgetOption.elementAt(_currentIndex),
        bottomNavigationBar: SalomonBottomBar(
          margin: EdgeInsets.all(20),
          backgroundColor: Colors.red,
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(

              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.white,
              unselectedColor: Colors.white70
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text("Orders"),
              selectedColor: Colors.white,
              unselectedColor: Colors.white70
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.home_repair_service),
              title: Text("Cart"),
              selectedColor: Colors.white,
              unselectedColor: Colors.white70
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.settings),
              title: Text("Settings"),
              selectedColor: Colors.white,
              unselectedColor: Colors.white70

            ),
          ],
        ),
      );

  }
}