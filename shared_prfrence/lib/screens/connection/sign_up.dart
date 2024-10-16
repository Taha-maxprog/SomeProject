import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_prfrence/screens/connection/login.dart';
import 'package:shared_prfrence/screens/connection/sign_up.dart';
import 'package:shared_prfrence/widget/static.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Center(
        child: ListView(
            children: [Column(

              children: [

                SizedBox(height: 150.h,),
                Padding(
                  padding: const EdgeInsets.only(right: 35.0),
                  child: Container(height: 100.h,child: Text("شارك في حماية البيئةو المياه  في العراق",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),textDirection: TextDirection.rtl,)),
                ),
                SizedBox(height: 12.h,),
                TxtBox(lbl: "اسم المستخدم                                                                           ",),
                SizedBox(height: 12.h,),
                TxtBox(lbl:"البريد الالكتروني                                                                       " ,),
                SizedBox(height: 12.h,),
                TxtBox(lbl: "كلمة السر                                                                            "),
                SizedBox(height: 12.h,),
                TxtBox(lbl: "اعد كتاتابة كلمة السر                                                                  ",),
                SizedBox(height: 12.h,),


                 Button(btn: "التالي", route: "/login",),

                TextButton(
                    onPressed: (){Get.to(Login() );}, child: Text("تسجيل الدخول",style: TextStyle ( decoration: TextDecoration.underline,decorationColor: Colors.blue,color: Colors.blue,fontSize: 15,fontWeight: FontWeight.w800,),)),
              ],
            ),]
        ),
      ),
    );
  }
}
