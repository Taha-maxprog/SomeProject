import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'on_bording_page.dart';

class buttons extends StatelessWidget {



  const buttons({super.key, required this.w1, required this.txt, required this.route,     });

  final int w1 ;
  final String txt ;
  final VoidCallback route ;



  @override
  Widget build(BuildContext context) {

    OnBordingPage();
    return Center(
      child: Row(
        children: [



          Container(width: w1.w,height: 44.h,
              child: TextButton(style: TextButton.styleFrom(backgroundColor: Colors.green),
               onPressed: (){route;  },

              child: Text(txt,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)  )),


        ],

      ),
    );
  }
}
