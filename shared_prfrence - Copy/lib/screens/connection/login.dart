import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_prfrence/screens/connection/forget_password.dart';
import 'package:shared_prfrence/screens/connection/sign_up.dart';
import 'package:shared_prfrence/widget/static.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Center(
        child: ListView(
          children: [Column(

            children: [

              SizedBox(height: 150.h,),
              Padding(
                padding: const EdgeInsets.only(right: 35.0),
                child: Container(height: 100.h,child: const Text("شارك في حماية البيئةو المياه  في العراق",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),textDirection: TextDirection.rtl,)),
              ),
              SizedBox(height: 12.h,),

              SizedBox(height: 12.h,),
              const TxtBox(lbl:"البريد الالكتروني                                                                       " ,),
              SizedBox(height: 12.h,),
              const TxtBox(lbl: "كلمة السر                                                                            "),
              SizedBox(height: 12.h,),


              const  Button(btn: "تسجيل الدخول", route: "/Nav_Bar",),

              const Padding(
                padding:   EdgeInsets.all(  35.0  ),
                child:   Center(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Divider(
                          color: Colors.grey, // Color of the line
                          thickness: 0.5, // Thickness of the line
                          endIndent: 15, // Space between line and text
                        ),
                      ),
                      Text(
                        'أو باستخدام', // Centered text
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold// Text color
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 0.5,
                          indent: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          Container(
            height: 44.h,width: 300.w,

            decoration: BoxDecoration(
              border: Border.all(width: 1,color: Colors.grey.withOpacity(0.2)),
                borderRadius: BorderRadius.circular(33),color: Color(0xffffffff)),
            child: Center(
              child: FaIcon(

                FontAwesomeIcons.google,
                color: Colors.red,
                size: 30,
              ),
            ),
          ),
           SizedBox(height: 12.h,),
           Container(
            height: 44.h,width: 300.w,

            decoration: BoxDecoration(
              border: Border.all(width: 1,color: Colors.grey.withOpacity(0.2)),
                borderRadius: BorderRadius.circular(33),color: Color(0xffffffff)),
            child: Center(
              child: FaIcon(

                FontAwesomeIcons.apple,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),



              TextButton(
                  onPressed: (){Get.to(const ForgetPassword() );}, child: const Text("اعد تعيين كلمة السر",style: TextStyle ( decoration: TextDecoration.underline,decorationColor: Colors.blue,color: Colors.blue,fontSize: 15,fontWeight: FontWeight.w800,),)),
              TextButton(
                  onPressed: (){Get.to(const SignUp() );}, child: const Text("انشأ حساب جديد",style: TextStyle ( decoration: TextDecoration.underline,decorationColor: Colors.blue,color: Colors.blue,fontSize: 15,fontWeight: FontWeight.w800,),)),

            ],
          ),]
        ),
      ),
    );
  }
}
