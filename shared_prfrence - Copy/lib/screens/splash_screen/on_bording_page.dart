import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/on_bording_widget.dart';
import 'on_bording_page1.dart';

class OnBordingPage extends StatefulWidget {
  const OnBordingPage({super.key});

  @override
  State<OnBordingPage> createState() => _OnBordingPageState();
}

class _OnBordingPageState extends State<OnBordingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          OnBordingWidget1(),
           OnBordingWidget(img: "assets/map.png", title: "اضغط على الحالات، ثم قم بتسجيل حالة المخالفة.", btn1: "التالي", num: '2', btn2: 'رجوع',),
           OnBordingWidget(img: "assets/map2.png", title: "املاء الحقول بحسب الحاله التي تشهد عليها", btn1: "التالي", num: '3', btn2: 'رجوع',),



        ],

      )
    );
  }
}
