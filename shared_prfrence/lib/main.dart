import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_prfrence/screens/connection/login.dart';
import 'package:shared_prfrence/screens/nav_bar/botom_nav_bar.dart';
import 'package:shared_prfrence/screens/nav_bar/home_nav.dart';
import 'package:shared_prfrence/screens/splash_screen/on_bording_page.dart';
import 'package:shared_prfrence/screens/splash_screen/start_page.dart';
import 'package:shared_prfrence/screens/test.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
       builder: (_,child){
        return GetMaterialApp(

          home:   OnBordingPage( ),
          getPages: [
            GetPage(name: "/login", page:()=> Login()),
           GetPage(name: "/Nav_Bar", page:()=> Nav_Bar()),


          ],
        );
       },
    );
  }
}


