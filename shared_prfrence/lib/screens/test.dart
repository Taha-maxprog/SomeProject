import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_prfrence/screens/splash_screen/on_bording_page1.dart';

import '../widget/on_bording_widget.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  PageController pageController = PageController();
  int counter = 0;

  void next() {
    if (counter < data.length - 1) {
      pageController.animateToPage(
        counter + 1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      setState(() {
        counter++;
      });
    }
  }

  void back() {
    if (counter > 0) {
      pageController.animateToPage(
        counter - 1,
        duration: Duration(milliseconds: 300),
        curve: Curves.bounceIn,
      );
      setState(() {
        counter--;
      });
    }
  }

  List<Widget> get data {
    return [
      detils(i: 0),
      detils(i: 1),
      detils(i: 2),
    ];
  }

  List<Widget> get btn {
    return [
      buttons(
        w1: 282,
        txt: "التالي",
        route: next,
      ),
      Row(
        children: [
          buttons(
            w1: 100,
            txt: "رجوع",
            route: back,
          ),
          SizedBox(width: 12.w),
          buttons(
            w1: 172,
            txt: "التالي",
            route: next,
          ),
        ],
      ),
      Row(
        children: [
          buttons(
            w1: 100,
            txt: 'رجوع',
            route: back,
          ),
          SizedBox(width: 12.w),
          buttons(
            w1: 172,
            txt: "التالي",
            route: next,
          ),
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              children: data,
            ),
          ),
          btn[1],
        ],
      ),
    );
  }
}
