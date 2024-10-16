


import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'catogries/add.dart';
import 'homepage.dart';




void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(preStart());
}

class preStart extends StatefulWidget {
  const preStart({super.key});

  @override
  State<preStart> createState() => _preStartState();
}

class _preStartState extends State<preStart> {

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,


      home: Text("ss"),// HomePage() ,
      routes: {
        "add_catogries":(context)=>AddCatogries(),
         "HomePage":(context)=>HomePage(),

      },


    );
  }
}
