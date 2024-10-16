import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_prfrence/screens/nav_bar/botom_nav_bar.dart';

import '../../widget/on_bording_widget.dart';
import '../test.dart';
import 'on_bording_page1.dart';

class OnBordingPage extends StatefulWidget {
  const OnBordingPage({super.key});


  @override
  State<OnBordingPage> createState() => _OnBordingPageState();

}

class _OnBordingPageState extends State<OnBordingPage> {

  int  counter =0;

  PageController  pageController = PageController();

  void next(){
    if(counter<2){
      pageController.animateToPage(
          counter+1 ,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut);

    }
  }
  void _back(){
    if(counter>=1){
      pageController.animateToPage(
          counter-1,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut);

    }
  }



  List<Widget>get data{
    return[  detils(i: 0),
      detils(i: 1),
      detils(i: 2),
    ];
  }






  List<Widget> get btn{
    return   [

    buttons(w1: 282, txt: "التالي" ,route:next,    ),
    Row(
    children: [
    buttons(w1: 100, txt: "رجوع", route:_back),
    SizedBox(width:12.w,),
    buttons(w1: 172, txt: "التالي", route: next ),
    ],
    ),
    Row(
    children: [
    buttons(w1: 100, txt: 'رجوع', route: _back ),
    SizedBox(width: 12.w,),
    buttons(w1: 172, txt: "التالي", route: next    ),
    ],
    ),

    ];
  }



  @override
  Widget build(BuildContext context) {

    int numbertitle=counter+1;


    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(33.r),
        child: Column(
          children: [

            Container(
              height:55.h,width: 60.w,

              decoration: BoxDecoration(
                  color: Color(0xffFF8744),
                  borderRadius: BorderRadius.circular(44.r)
              ),
              child: Center(
                  child: Text("${ numbertitle}",style: TextStyle(color: Colors.white,fontSize: 22.r,fontWeight: FontWeight.bold),)),

            ),
            Expanded(

              child: PageView(

                controller: pageController,
                onPageChanged: (int i){
                  setState(() {
                    counter=i;
                  });
                },
                children: [

                data[counter],
                data[counter],
                data[counter],











                ],

              ),
            ),

            btn[counter],

          ],
        ),
      )
    );
  }
}
