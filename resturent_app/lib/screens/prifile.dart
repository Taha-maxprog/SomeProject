import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturent_app/screens/Home_page.dart';

import '../lists/button_navigation.dart';
import '../lists/data_row.dart';

class Prifile extends StatefulWidget {
  const Prifile({super.key});

  @override
  State<Prifile> createState() => _PrifileState();
}

class _PrifileState extends State<Prifile> {
  @override
  Widget build(BuildContext context) {
    final currentWidth=MediaQuery.of(context).size.width;
    final currentHeight=MediaQuery.of(context).size.height;
    return  Scaffold(
      body: Container(
        padding: EdgeInsets.all(44),
        color: Color(0xffF4F4F4),
        child: Column(
          children: [
            Container(

              height: currentHeight*0.38,
              width: currentWidth*0.8,
              decoration: BoxDecoration(

                color: Colors.red,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.all(23),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2) ,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          height: currentHeight*0.066,
                          width: currentWidth*0.14,
                          child:
                          IconButton(onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>BotomNav()));},
                              icon: Icon(Icons.arrow_back,color: Colors.white,) )),
                      SizedBox(width:currentWidth*0.07 ,),
                      Text("Profile",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color: Colors.white),),
                    ],
                  ),
                  SizedBox(height: currentHeight*0.023,),
                  Container(
                    height: currentHeight*0.12,
                    width: currentWidth*0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),

                      image: DecorationImage(
                          image: AssetImage("assets/images/face.png"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  SizedBox(height:currentHeight*0.016 ,),
                  Text("James David",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                  SizedBox(height:currentHeight*0.004  ,),
                  Text("Pro Member",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.white),)
                ],
              ),
            ),
            const data(  second_Icon: Icons.arrow_forward_ios,
              detils: 'Edit profile', fairst_icon: Icons.person_2_outlined,           ),
           SizedBox(height: currentHeight*0.02),
           const data(  second_Icon: Icons.toggle_off_outlined,
              detils: 'Notification', fairst_icon: Icons.notifications_none,           ),
            SizedBox(height: currentHeight*0.02),
           const data(  second_Icon: Icons.arrow_forward_ios,
              detils: 'My Location', fairst_icon: Icons.location_on_outlined,           ),
            SizedBox(height: currentHeight*0.02),
           const data(  second_Icon: Icons.arrow_forward_ios,
              detils: 'My Vouchers', fairst_icon: Icons.sell_outlined,           ),
            SizedBox(height: currentHeight*0.03),
            Container(
                height: currentHeight*0.08,
                width: currentWidth,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red.withOpacity(0.2)
                ),
                child: TextButton(onPressed: (){}, child: Text("Add to Cart",
                  style: TextStyle(fontSize: 15,color: Colors.red,fontWeight: FontWeight.bold),
                )
                )
            )
          ],
        ),
      ),

    );

  }
}
