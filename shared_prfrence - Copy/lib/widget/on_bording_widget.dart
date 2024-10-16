import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../screens/connection/pre_signup.dart';

class OnBordingWidget extends StatelessWidget {


  const OnBordingWidget({super.key, required this.img, required this.title, required this.btn1,   required this.num,   required this.btn2 });
  final String img ;
   final String title ;

   final String btn1 ;
    final String btn2 ;

   final String   num ;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(33.r),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 33.h,),
                Container(
                  height:55.h,width: 60.w,

                  decoration: BoxDecoration(
                      color: Color(0xffFF8744),
                      borderRadius: BorderRadius.circular(44.r)
                  ),
                  child: Center(child: Text("$num",style: TextStyle(color: Colors.white,fontSize: 22.r,fontWeight: FontWeight.bold),)),

                ),
                SizedBox(height: 4.h,),

                Container(height: 66.h,child: Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),textDirection: TextDirection.rtl,)),
               // SizedBox(height: 22.h,),
                Container(height: 400.h,child: Image.asset(img)),
                SizedBox(height: 22.h,),
                Row(
                  children: [



                    Container(width: 100.w,height: 44.h,child: TextButton(style: TextButton.styleFrom(backgroundColor: Colors.green),onPressed: (){}, child: Text(btn2,style: TextStyle(color: Colors.white),)  )),

                    SizedBox(width: 22.w,),
                 Container(width: 160.w,height: 44.h,child: TextButton(style: TextButton.styleFrom(backgroundColor: Colors.green),onPressed: (){Get.to(preSign());}, child: Text(btn1,style: TextStyle(color: Colors.white),)  )),


                  ],
                ),


              ],

            ),
          ),
        )
    );
  }
}
