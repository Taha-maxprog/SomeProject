import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:headphone_store/Static/trade_mark.dart';

import '../pages/detils_prodicte.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final    Height= MediaQuery.of(context).size.height;
    final   Width = MediaQuery.of(context).size.width;
    return   Scaffold(
      
      appBar: AppBar(
         leading: Icon(Icons.grid_view_sharp),
        backgroundColor:Colors.white,
        title:  Center(child: Image.asset("assets/images/icon2.png",)),
        actions: [Icon(Icons.search)],

      ),
            
      body: Container(
        height: Height,
        width: Width,
        padding: EdgeInsets.all(  Width*0.04),
        decoration: BoxDecoration(
          color: Color(0xffF3F3FF),
          borderRadius: BorderRadius.circular( 30) ,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Choose Brand"),
            SizedBox(height: Height*0.03,),
            Row(children: [
              TradeMark(img: 'assets/images/mark_ic1.png', route: '/prind',),
           SizedBox(width: Width*0.06,),
           TradeMark(img: 'assets/images/mark_ic2.png', route: '/prind',),
              SizedBox(width: Width*0.06,),
           TradeMark(img: 'assets/images/mark_ic3.png', route: '/prind',),
            ],),
            SizedBox(height: Height*0.05,),
            Text("Beats Products"),
            const DetilsProdicts(img2: 'assets/images/ezgif.com-gif-maker-2.png', route: '/prind', img1: 'assets/images/music-headphone-13.png', Icon2: Icons.favorite_border, Icon1: Icons.favorite,  ),
            SizedBox(height: Height*0.03,),
              const DetilsProdicts(img2: 'assets/images/ezgif.com-gif-maker.png', route: '/prind', img1: 'assets/images/headphone-2.png', Icon2: Icons.favorite_border, Icon1: Icons.favorite_border  ),

          ],
        ),
      ),
    );
  }
}

class _DetilsProdicts {
}
