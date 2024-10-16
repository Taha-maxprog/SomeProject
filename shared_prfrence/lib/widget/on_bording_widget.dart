import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../screens/connection/pre_signup.dart';



List<Widget> title=[
  Container(height: 66.h,child: Text("اضغط على الحالات، ثم قم بتسجيل حالة المخالفة",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),textDirection: TextDirection.rtl,)),
  Container(height: 66.h,child: Text("املاء الحقول بحسب الحاله التي تشهد عليها",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),textDirection: TextDirection.rtl,)),

  Container(height: 66.h,child: Text("الالوان هي دلاله على نوع الحاله , يمكنك مشاهده الحالات على الخارطه",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),textDirection: TextDirection.rtl,)),

];

List<Widget>body =[

  Container(height: 400.h,child: Image.asset("assets/map.png")),

  Container(height: 400.h,child: Image.asset("assets/map2.png")),

  Container(
    height: 400.h,
    child: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

          Text("للدلاله على ان الحاله جديده ولم يتم\nتثبيتها بعد من قبل المؤسسة ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),textDirection: TextDirection.rtl,),

          SizedBox(width: 12.w,),
          Container(
            height: 45.h,
            width: 55.w,
            decoration: BoxDecoration(
                boxShadow:[
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      spreadRadius: 0.4,
                      blurRadius: 2,
                      offset: Offset(0,2)
                  )


                ] ,

                color: Colors.white,
                borderRadius: BorderRadius.circular(33.r)),

            child: SizedBox(height: 33.h,width: 2.w,child: Image.asset("assets/blu_mark.png")),


          )
        ],),
      SizedBox(height: 22.h,),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

          Text("للدلاله على ان الحاله جديده ولم يتم\nتثبيتها بعد من قبل المؤسسة ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),textDirection: TextDirection.rtl,),

          SizedBox(width: 12.w,),
          Container(
            height: 45.h,
            width: 55.w,
            decoration: BoxDecoration(
                boxShadow:[
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      spreadRadius: 0.4,
                      blurRadius: 2,
                      offset: Offset(0,2)
                  )


                ] ,

                color: Colors.white,
                borderRadius: BorderRadius.circular(33.r)),

            child: SizedBox(height: 33.h,width: 2.w,child: Image.asset("assets/org_mark.png")),


          )
        ],),
      SizedBox(height: 22.h,),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

          Text("للدلاله على ان الحاله جديده ولم يتم\nتثبيتها بعد من قبل المؤسسة ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),textDirection: TextDirection.rtl,),

          SizedBox(width: 12.w,),
          Container(
            height: 45.h,
            width: 55.w,
            decoration: BoxDecoration(
                boxShadow:[
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      spreadRadius: 0.4,
                      blurRadius: 2,
                      offset: Offset(0,2)
                  )


                ] ,

                color: Colors.white,
                borderRadius: BorderRadius.circular(33.r)),

            child: SizedBox(height: 33.h,width: 2.w,child: Image.asset("assets/yellow_mark.png")),


          )
        ],),
      SizedBox(height: 22.h,),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

          Text("للدلاله على ان الحاله جديده ولم يتم\nتثبيتها بعد من قبل المؤسسة ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),textDirection: TextDirection.rtl,),

          SizedBox(width: 12.w,),
          Container(
            height: 45.h,
            width: 55.w,
            decoration: BoxDecoration(
                boxShadow:[
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      spreadRadius: 0.4,
                      blurRadius: 2,
                      offset: Offset(0,2)
                  )


                ] ,

                color: Colors.white,
                borderRadius: BorderRadius.circular(33.r)),

            child: SizedBox(height: 33.h,width: 2.w,child: Image.asset("assets/green_mark.png")),


          )
        ],),






    ],),
  ),

];





class detils extends StatelessWidget {
  const detils({super.key, required this.i});
 final int i ;
  @override
  Widget build(BuildContext context) {

   return Column(

    children: [
      title[i] ,
      body[i]],

   );
  }
}










