import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Static/custom_idicator.dart';
import '../Static/prind_indicator.dart';


class Prind extends StatefulWidget {
  const Prind({super.key});

  @override
  State<Prind> createState() => _PrindState();
}

class _PrindState extends State<Prind> {
  final _Controler = PageController();
  int _CurentCount = 0;
  List<Color> colrs =[
    Color(0xff3781D5),
    Color(0xff381F68),
    Color(0xffCD5289),
    Color(0xffAF0C24),

  ];
  List<String> img=  [
    "assets/images/music-headphone-13.png",
    "assets/images/ezgif.com-gif-maker.png",
    "assets/images/ezgif.com-gif-maker-2.png",
    "assets/images/headphone-2.png",


  ];
  @override
  Widget build(BuildContext context) {
    final Heaght = MediaQuery.of(context).size.height;
     final Width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor:    Color(0xffF3F2FE),
      appBar: AppBar(

        leading: Icon(Icons.arrow_back),
        backgroundColor:Colors.white,
        title:  Center(child: Image.asset("assets/images/icon2.png",)),
        actions: [Padding(
          padding: const EdgeInsets.all(12.0),
          child: Icon(Icons.shopping_bag_outlined),
        )],

      ),
      body: Container(

        child: Column(

          children: [
            Container(
              color: Color(0xffF3F2FE),
               height: Heaght*0.45,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                     boxShadow: [
                       BoxShadow(
                         spreadRadius: 2,
                         offset: Offset(-1,3),
                         blurRadius: 94,
                         blurStyle: BlurStyle.inner

                       )
                     ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: IconButton( onPressed: (){
                      setState(() {
                         if(_CurentCount<img.length-1 ){
                           _Controler.nextPage(duration: Duration(seconds: 2), curve: Curves.easeIn);
                         }else
                           {
                             _Controler.jumpTo(0);
                           }
                      });
                    }, icon: Icon(Icons.arrow_back_ios,color: Colors.blue, )),
                  ),
                  Expanded(child: PageView.builder(

                    controller: _Controler,
                    itemCount: colrs.length,
                    onPageChanged: (index){
                      setState(() {
                        _CurentCount = index;
                      });
                    },

                    itemBuilder: (BuildContext context, int index)
                    {

                      return PrindIndicator(img: img[index], detils: 'Beats Solo3 Headphones', price: '\$249.6',)  ;


                    },



                  ),),
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              spreadRadius: 2,
                              offset: Offset( 3,3),
                              blurRadius: 94,
                              blurStyle: BlurStyle.inner

                          )
                        ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: IconButton(


                        onPressed: (){
                      setState(() {
                        if(_CurentCount>0 ){
                          _Controler.previousPage(duration: Duration(seconds: 1), curve: Curves.easeInOut);
                        }else
                        {
                          _Controler.jumpToPage(4);
                        }
                      });
                    }, icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.blue,)),
                  ),
                ],
              ),

            ),

            Container(
              height:Heaght*0.45,
              width: Width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Colors\n"),
                    CustomIndicator(
                        colors: colrs,
                        activeIndex: _CurentCount ,
                        ),
                    SizedBox(height: Heaght*0.023,),
                    Text("detils\n"),
                    Text("Input Type: 3.5mm stereo jackOther Features: Bluetooth, Foldable, Noise Isolation, Stereo, Stereo Bluetooth, WirelessForm Factor: On-EarConnections: Bluetooth, WirelessSpeaker Configurations: Stereo"),
                    SizedBox(height: Heaght*0.1,),
                    Row(children: [
                      TextButton(
                        onPressed: (){},
                          child: Text("Add to Cart",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.normal),),
                            style: TextButton.styleFrom(
                               padding: EdgeInsets.only(left: Width*0.1,right: Width*0.1),
                                backgroundColor: Color(0xffF3F2FE)),  ),
                     SizedBox(width: Width*0.05),
                     TextButton(
                        onPressed: (){},
                          child: Text("Buy Now",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.normal),),
                            style: TextButton.styleFrom(
                               padding: EdgeInsets.only(left: Width*0.1,right: Width*0.15),
                                backgroundColor: Color(0xff060DD9)),  ),

                    ],)



                  ],
                ),
              ),
            )
          ],
        ),

      ),
    );
  }
}


