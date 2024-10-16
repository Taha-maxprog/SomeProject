import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';


import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_prfrence/screens/nav_bar/states.dart';

import 'account.dart';



const List<TabItem> items = [
  TabItem(
    icon: Icons.person_4_sharp,
    title: 'الحساب',
  ),
  TabItem(
    icon: FontAwesomeIcons.mapLocationDot,
    title: 'الحالات',
  ),
  TabItem(
    icon: FontAwesomeIcons.home,
    title: 'الرئيسية',
  ),

];




class Nav_Bar extends StatefulWidget {
  const Nav_Bar({Key? key }) : super(key: key);



  @override
  _Nav_BarState createState() => _Nav_BarState();
}

class _Nav_BarState extends State<Nav_Bar> {

  int visit = 0;
  final taps=[

    Account(),
    MapState(),

      Text("d1ata"),

  ];
  double height = 30;
  Color colorSelect =const Color(0XFF0686F8);
  Color color = const Color(0XFF7AC0FF);
  Color color2 = const Color(0XFF96B1FD);
  Color bgColor = const  Color(0XFF1752FE);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: taps.elementAt(visit),

      bottomNavigationBar: Container(

        child:
        BottomBarFloating(

          borderRadius: BorderRadius.only(topLeft: Radius.circular(32),topRight: Radius.circular(32)),
          items: items,
          backgroundColor: Colors.white,
          color: Colors.grey,
          colorSelected: Colors.blue,
          indexSelected: visit,
          paddingVertical: 24,
          
          onTap: (int index) => setState(() {
            visit = index;
          }),
        ),
      ),
    );
  }
}