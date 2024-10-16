import 'package:flutter/material.dart';
import 'package:headphone_store/pages/prind.dart';
import 'package:headphone_store/pages/startpage.dart';

import 'Static/prodict_page.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

         debugShowCheckedModeBanner: false,
      home:   Startpage( ),
      routes:{
           "/home": (context)=>Home(),
      "/prind": (context)=>Prind(),
      } ,
    );
  }
}

