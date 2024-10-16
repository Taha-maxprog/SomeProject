import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../lists/button_navigation.dart';

class OnBordingPage extends StatefulWidget {
  const OnBordingPage({super.key});

  @override
  State<OnBordingPage> createState() => _OnBordingPageState();
}

class _OnBordingPageState extends State<OnBordingPage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth=MediaQuery.of(context).size.width;
    final currentHeight=MediaQuery.of(context).size.height;
    final controller =PageController();
    return   Scaffold(
      body: Container(
        width: currentWidth,
        height: currentHeight,
        decoration: const BoxDecoration(

            image: DecorationImage(

              image:AssetImage("assets/images/onbordingimg.png"),
              fit: BoxFit.fill,

            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: currentHeight*0.56),
            Container(
              width: currentWidth,
              height: currentHeight*0.44 ,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)

                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  Center(child: Text("Good Food - Good Life",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
                  SizedBox(height: currentHeight*0.028,),
                  Center(
                    child: Text("Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry.",
                             style: TextStyle(fontSize: 16,color: Colors.grey),),
                  ),
                  SizedBox(height: currentHeight*0.07,),
                // SmoothPageIndicator(controller: controller, count: 3),
                  SizedBox(height: currentHeight*0.07,),
                  Container(

                      decoration: BoxDecoration(
                          color: Colors.red,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      height: currentHeight*0.06,
                      width: currentWidth*0.12,
                      child:
                  IconButton(onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BotomNav())); },
                      icon: Icon(Icons.arrow_forward,color: Colors.white,) ))
                ],
              ),
            ),

          ],
        ),

      ),
    );
  }
}

