import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../screens/connection/login.dart';

class Button extends StatelessWidget {
  const  Button({super.key, required this.btn, required this.route});
  final String btn;
  final String route;

  @override
  Widget build(BuildContext context) {
    return  Container(height: 44.h,width: 300.w,
        child: TextButton(style: TextButton.styleFrom(backgroundColor: Colors.green),
            onPressed: (){Get.toNamed(route );}, child: Text(btn,style: TextStyle (color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)));
  }
}

class TxtBox extends StatelessWidget {
  const TxtBox({super.key, this.lbl});
 final lbl;
  @override
  Widget build(BuildContext context) {
    return    Container(
      height: 44.h,width: 300.w,
decoration: BoxDecoration(borderRadius: BorderRadius.circular(33),color: Color(0xffF6F8F8),border: Border.all(width: 0.8,color: Colors.grey.withOpacity(0.2))),


      child: TextField(


textAlign: TextAlign.right,
        decoration: InputDecoration(

            border: InputBorder.none,
         labelText: lbl,
          labelStyle:    TextStyle(color: Colors.grey),

          alignLabelWithHint: true,
        ),
         textDirection: TextDirection.rtl,


      ),
    );
  }
}


class detils extends StatelessWidget {
  const detils({super.key, required this.icn, required this.title});
  final IconData icn ;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 39.h,width: 330.w,
      decoration: BoxDecoration(
          boxShadow:[BoxShadow(offset: Offset(0,-2),
          blurRadius: 1,
            spreadRadius: 1,
            color: Colors.grey.withOpacity(0.2)
          ),
            ] ,
          border: Border.all(width: 1,color: Colors.grey.withOpacity(0.6)),
          color: Colors.white,borderRadius: BorderRadius.circular(27)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black,)),

          Padding(
            padding: const EdgeInsets.only(right: 16.0,left: 15.1),
            child: Icon( icn),
          )

        ],
      ),

    );
  }
}







