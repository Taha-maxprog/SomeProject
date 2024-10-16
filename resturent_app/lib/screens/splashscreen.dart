import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturent_app/screens/on_bording_page.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _RouteToOnBording();
  }
  _RouteToOnBording()async{
    await Future.delayed(Duration(milliseconds: 3000),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnBordingPage()));
  }
  @override
  Widget build(BuildContext context) {
 final currentWidth=MediaQuery.of(context).size.width;
  final currentHeight=MediaQuery.of(context).size.height;
    return  Scaffold(
      body: Container(
           height: currentHeight,width: currentWidth,
             decoration: BoxDecoration(

          image: DecorationImage(
              image: AssetImage("assets/images/startimg.png"),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          color: Colors.red.withOpacity(0.8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.restaurant_menu,size: 70,color: Colors.white,),
              Text("Food Lover",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
}
