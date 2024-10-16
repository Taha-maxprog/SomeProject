import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:electronioc_store/pages/faverite_page.dart';

import 'package:flutter/material.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';

import '../pages/home_page.dart';
import '../pages/search.dart';

const List<TabItem> items = [
  TabItem(
    icon: Icons.home,
      title: 'Home',
  ),
  TabItem(
    icon: Icons.search_sharp,
    title: 'Search',
  ),
  TabItem(
    icon: Icons.favorite_border,
    title: 'Wishlist',
  ),
  TabItem(
    icon: Icons.shopping_cart_outlined,
    title: 'Cart',
  ),
  TabItem(
    icon: Icons.account_circle_outlined,
    title: 'profile',
  ),
];




class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key }) : super(key: key);



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int visit = 0;
  final taps=[

    HomePage(),
    Search(),
    FaveritePage(),
    Text("data"),
    Text("data"),

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
          items: items,
          backgroundColor: Colors.white,
          color: Colors.grey,
          colorSelected: Colors.green,
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