import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


import 'package:swipeable_button_view/swipeable_button_view.dart';

import '../Static/prodict_page.dart';

class Startpage extends StatefulWidget {
  const Startpage({super.key});

  @override
  State<Startpage> createState() => _StartpageState();
}

class _StartpageState extends State<Startpage> {
  bool  Finished=false;
  @override
  Widget build(BuildContext context) {
    final    Height= MediaQuery.of(context).size.height;
    final   Width = MediaQuery.of(context).size.width;

    return Scaffold(
      body:  Container(

        height: Height,
             width: Width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/man.png"),
              fit: BoxFit.cover
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          color: Color(0XFF070DD8).withOpacity(0.5),
          child: Column(
mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/images/icon.png")),
               SizedBox(height: Height*0.04,),
               Center(
                 child: Text("Search for Wireless \n      Headphones",style: TextStyle(color: Colors.white,
                  fontSize: 18,fontWeight: FontWeight.bold),),
               ),
              SizedBox(height: Height*0.7,),
              SwipeableButtonView(
                  onFinish: () async {
                    await  Navigator.push(context, PageTransition(
                        child: Home(), type: PageTransitionType.fade));

                    //TODO: For reverse ripple effect animation
                    setState(() {
                       Finished = false;
                    });
                  },
                  isFinished: Finished,
                  onWaitingProcess: (){
                    Future.delayed(Duration(milliseconds: 1500),(){
                    setState(() {
                    Finished = true;
                    });
                    });


                  },
                  activeColor: Colors.white.withOpacity(0.4),
                  buttonWidget: Container(
                    height: Height*0.05,width: Width*0.8,
                    decoration: BoxDecoration(
                        border: Border.all(width: Width*0.004,color: Colors.white),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                  buttonText: "Swipe to access")

            ],
          ),),
      ),
    ) ;
  }
}
