import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widget/static.dart';

class Account extends StatelessWidget {
  const Account({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(

backgroundColor: Colors.white,
      appBar: AppBar(actions: [Padding(
        padding: const EdgeInsets.only(right: 22.0),
        child: Text("الاعدادات",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.black,)),
      ),],),
      body: ListView(

        children: [
          const Column(

            children: [
              Image(image: AssetImage("assets/profile_img.png")),
              Center(child: Text("حساب مجهول",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
            ],
          ),
          Container(

            height: 700.h,
            decoration: BoxDecoration(    color: Color(0xffF6F6F7),
                borderRadius: BorderRadius.only(topLeft:Radius.circular(33)
                    ,topRight:Radius.circular(33) )),

            child: Column(
              children: [
                SizedBox(height: 44.h,),
                Container(height: 55.h,width: 330.w,
                    child: TextButton(style: TextButton.styleFrom(backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),),
                        onPressed: (){Get.toNamed("sss" );}, child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("تحميل البيانات",style: TextStyle (color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                         SizedBox(width: 12.w,),
                          Icon(  Icons.download_for_offline_outlined,color: Colors.white)
                          ],
                        ))),
                SizedBox(height: 44.h,),
                detils(icn: Icons.person_2_outlined, title: 'معلومات المستخدم',),
               SizedBox(height: 12.h,),
               detils(icn: Icons.shield_outlined, title: '  السياسات و الخصوصية',),
               SizedBox(height: 12.h,),
               detils(icn: Icons.groups_3_sharp, title: 'كن جزء من الفريق',),
               SizedBox(height: 12.h,),
               detils(icn: Icons.play_circle_outline_outlined, title: 'ابدأ التطبيق من جديد',),
              SizedBox(height: 12.h,),
               detils(icn: FontAwesomeIcons.barChart, title: ' شارك في الاستبيان',),
              SizedBox(height: 12.h,),
               detils(icn: Icons.info_outline, title: 'حول التطبيق',),
              SizedBox(height: 12.h,),
               detils(icn: FontAwesomeIcons.facebookMessenger, title: 'تواصل معنا',),
                SizedBox(height: 12.h,),
               detils(icn: FontAwesomeIcons.questionCircle, title: 'الاسئلة الشائعة',),
                SizedBox(height: 12.h,),
               detils(icn: Icons.star_border_outlined, title: 'تقييم التطبيق',),
               SizedBox(height: 12.h,),
 detils(icn: FontAwesomeIcons.arrowRightFromBracket, title: 'الخروج',),
               SizedBox(height: 12.h,),



              ],
            ),
          )
        ],
      )
    );
  }
}
