import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../cards/vegetablesCards.dart';
import '../connection/logIn.dart';
import 'detailsPage.dart';


class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: const Color(0xff68A13A),
        title: const Text("Fruit Market",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
        actions: const [Icon(Icons.notifications,color: Colors.white,),],
      ),
      body: DefaultTabController(length: 3,
        initialIndex: 0,
        child: Column(
             children: [
                  const SizedBox(height: 50,),
               TabBar(
                   isScrollable: true,
                   unselectedLabelColor: const Color(0xff969796),
                   labelPadding: const EdgeInsets.only( right: 20,left: 30),
                   labelColor: Colors.white,
                   indicatorSize: TabBarIndicatorSize.tab,
                   indicator: BoxDecoration(

                       borderRadius: BorderRadius.circular(10),
                       color: const Color(0xffCB7C00)

                   ),
                   tabs:
                   const [

                     Tab(text: " Vegetables ",),
                     Tab(text: " Fruits" ,),
                     Tab(text: " Dry Fruits",),
                   ]
               ),
              Expanded(child: TabBarView(
                children: [
                  Container(
                    padding: EdgeInsets.all(40),
                    child: ListView(

                      children:       [



                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Organic Vegetables",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                               SizedBox(height: 20,),
                               Text("Pick up from organic farms",style: TextStyle(fontSize: 25),),
                               GestureDetector(  onTap: (){
                                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsPage(img:"asset/Vegetables.png"  ,),),);

                               },
                               child:  Cards(imgName: 'asset/Vegetables.png',),)
                          ],
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Organic Vegetables",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                               SizedBox(height: 20,),
                               Text("Pick up from organic farms",style: TextStyle(fontSize: 25),),
                               GestureDetector(  onTap: (){
                                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsPage(img:"asset/Vegetables.png"  ,),),);

                               },
                               child:  Cards(imgName: 'asset/Vegetables.png',),)
                          ],
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Organic Vegetables",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                               SizedBox(height: 20,),
                               Text("Pick up from organic farms",style: TextStyle(fontSize: 25),),
                               GestureDetector(  onTap: (){
                                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsPage(img:"asset/Vegetables.png"  ,),),);

                               },
                               child:  Cards(imgName: 'asset/Vegetables.png',),)
                          ],
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Organic Vegetables",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                               SizedBox(height: 20,),
                               Text("Pick up from organic farms",style: TextStyle(fontSize: 25),),
                               GestureDetector(  onTap: (){
                                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsPage(img:"asset/Vegetables.png"  ,),),);

                               },
                               child:  Cards(imgName: 'asset/Vegetables.png',),)
                          ],
                        ),



                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(40),
                    child: ListView(
                      children:   [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Organic Vegetables",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                            SizedBox(height: 20,),
                            Text("Pick up from organic farms",style: TextStyle(fontSize: 25),),
                            GestureDetector(  onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsPage(img:"asset/Vegetables.png"  ,),),);

                            },
                              child:  Cards(imgName: 'asset/Vegetables.png',),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Organic Vegetables",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                            SizedBox(height: 20,),
                            Text("Pick up from organic farms",style: TextStyle(fontSize: 25),),
                            GestureDetector(  onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsPage(img:"asset/Vegetables.png"  ,),),);

                            },
                              child:  Cards(imgName: 'asset/Vegetables.png',),)
                          ],
                        ),],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(40),
                    child: ListView(
                      children:   [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Organic Vegetables",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                            SizedBox(height: 20,),
                            Text("Pick up from organic farms",style: TextStyle(fontSize: 25),),
                            GestureDetector(  onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsPage(img:"asset/Vegetables.png"  ,),),);

                            },
                              child:  Cards(imgName: 'asset/Vegetables.png',),)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Organic Vegetables",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                            SizedBox(height: 20,),
                            Text("Pick up from organic farms",style: TextStyle(fontSize: 25),),
                            GestureDetector(  onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsPage(img:"asset/Vegetables.png"  ,),),);

                            },
                              child:  Cards(imgName: 'asset/Vegetables.png',),)
                          ],
                        ),],
                    ),
                  ),
                ],
              )),

             ],

        ),),
    );
  }
}
