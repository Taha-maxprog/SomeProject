import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_prfrence/screens/connection/login.dart';
import 'package:shared_prfrence/screens/connection/sign_up.dart';

class preSign extends StatefulWidget {
  const preSign({super.key});

  @override
  State<preSign> createState() => _preSignState();
}

class _preSignState extends State<preSign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 120.h,),
          Center(child: Container(child: Image.asset("assets/logo.png"),)),
          SizedBox(height: 22.h,),
          Text("صوت البيئة والمياه في العراق",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black),),

          SizedBox(height: 122.h,),
           Container(height: 44.h,width: 300.w,
               child: TextButton(style: TextButton.styleFrom(backgroundColor: Colors.green),
                   onPressed: (){Get.to(Login() );}, child: Text("دخول اورا",style: TextStyle (color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),))),
          SizedBox(height: 12.h,),
     TextButton(
         onPressed: (){Get.to(SignUp() );}, child: Text("انشأ حساب جديد",style: TextStyle ( decoration: TextDecoration.underline,decorationColor: Colors.blue,color: Colors.blue,fontSize: 15,fontWeight: FontWeight.w800,),)),


        ],
      ),
    );
  }
}
