

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'BottomNavBar/home.dart';
import 'datapage.dart';


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


      home: (HomePage()),


    );
  }
}
