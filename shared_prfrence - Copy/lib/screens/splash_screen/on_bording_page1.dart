import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBordingWidget1 extends StatelessWidget {


  const OnBordingWidget1({super.key     });




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
                  child: Center(child: Text("1",style: TextStyle(color: Colors.white,fontSize: 22.r,fontWeight: FontWeight.bold),)),

                ),
                SizedBox(height: 4.h,),

                Container(height: 66.h,child: Text("الالوان هي دلاله على نوع الحاله , يمكنك مشاهده الحالات على الخارطه",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),textDirection: TextDirection.rtl,)),
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
                SizedBox(height: 152.h,),



                SizedBox(height: 22.h,),
                Container(width: 280.w,height: 44.h,child: TextButton(style: TextButton.styleFrom(backgroundColor: Colors.green),onPressed: (){}, child: Text("التالي",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)  )),


              ],

            ),
          ),
        )
    );
  }
}
