import 'package:flutter/material.dart';
import 'package:fruitmarket/pages/View.dart';
import 'package:fruitmarket/pages/homePage.dart';
import 'package:fruitmarket/pages/startpage.dart';
import 'package:fruitmarket/pages/welcomePage.dart';

import 'connection/PersonData.dart';
import 'connection/logIn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:startPage(),

    );
  }
}



