import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_prfrence/screens/connection/sign_up.dart';
import 'package:shared_prfrence/widget/static.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
      body:  Padding(
        padding: const EdgeInsets.all(33.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 122.h,),
            Text("نسيت كلمة المرور ؟ ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.black),textDirection: TextDirection.rtl,),
            SizedBox(height: 22.h,),
        Text("لاتقلق في حال نسيان كلمةالمرور فستسطيع اعاده تعيينها بسهوله فقط ادخل البريد الالكتروني الخاص بك وسنقوم بارسال رساله اعاده تعيين كلمة المرور",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.grey),textDirection: TextDirection.rtl,),

            SizedBox(height: 33.h,),
            TxtBox(lbl: "البريد الالكتروني                                            ",),
            SizedBox(height: 23.h,),
            Button(btn: "ارسال", route: "/home",),
            SizedBox(height: 177.h,),
            Center(
              child: TextButton(
                  onPressed: (){Get.to(const SignUp() );}, child: const Text("بحاجه الى مساعده ؟",style: TextStyle ( decoration: TextDecoration.underline,decorationColor: Colors.blue,color: Colors.blue,fontSize: 15,fontWeight: FontWeight.w800,),)),
            ),
          ],
        ),
      ),
    );
  }
}
