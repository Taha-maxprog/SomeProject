import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'View.dart';


class startPage extends StatefulWidget {
  const startPage({super.key});

  @override
  State<startPage> createState() => _startPageState();
}

class _startPageState extends State<startPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToHome();
  }
  _navigateToHome()async{
    await Future.delayed(Duration(milliseconds: 2000),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>viewPages()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
 width: 600,
        color: Color(0xff68A13A),
        child:   Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Fruit Market",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),),
            SizedBox(height: 30,),
            Image.asset("asset/img.png")

          ],
        ),
      )
    );
  }
}
