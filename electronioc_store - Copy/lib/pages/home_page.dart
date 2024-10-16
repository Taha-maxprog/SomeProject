import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:electronioc_store/pages/prodicrt/airpod.dart';
import 'package:electronioc_store/pages/prodicrt/ctrl.dart';
import 'package:electronioc_store/pages/prodicrt/headphone.dart';
import 'package:electronioc_store/pages/prodicrt/laptop.dart';
import 'package:electronioc_store/pages/prodicrt/plastition.dart';
import 'package:electronioc_store/pages/prodicrt/xbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../stitic/prodect_card2.dart';
import '../stitic/prodict_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Heigt=MediaQuery.of(context).size.height;
    final Width=MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: AppBar(title: const Text("Discover"),actions: const [Icon(Icons.notifications_none)],),
      body: Padding(
          padding: const EdgeInsets.all(20),

        child:ListView(

          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      height: Heigt*0.073,
                      width: Width*0.70,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: Width*0.008,color: const Color(0xDADCDBDB)),
                          borderRadius: BorderRadius.circular(15)
                      ),

                      child: const Row(children: [

                        Expanded(

                          child: TextField(

                            decoration: InputDecoration(
                              hintText: 'Search for mobile....',
                              hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search_rounded,color: Colors.grey,size: 30,),
                            ),
                          ),
                        ),

                      ],

                      ),
                    ),

                    IconButton(onPressed: (){

                    },
                        icon:  Container(
                          height: Heigt*0.07,
                          width: Width*0.16,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),

                              color: Colors.green

                          ),
                          child: const Icon(Icons.tune_outlined,color: Colors.white,),
                        ),

                    ),



                  ],
                )
              ],

            ),
            const ProdictCard(img: 'assets/images/aphone2.png',),

            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Categories",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                  TextButton(onPressed: (){}, child: const Text("See All",style: TextStyle(color: Colors.green,fontSize: 18,fontWeight: FontWeight.normal),)),

                ],

              ),
            ),
            DefaultTabController(
                length: 7,

                child: Column(children: [
                  ButtonsTabBar(

                      unselectedBorderColor: Colors.grey,
                      backgroundColor: Colors.black,
                      unselectedBackgroundColor: Colors.white,
                      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                      tabs: const [
                        Tab(
                          text: "All",

                        ),
                        Tab(
                          text: "AirPords  ",

                        ),
                        Tab(
                          text: "Headphonse",

                        ),
                        Tab(
                          text: "Laptop",

                        ),
                        Tab(
                          text: "Playstision",

                        ),
                        Tab(
                          text: "Xbox",

                        ),
                        Tab(
                          text: "Controler",

                        ),


                      ]),

                          Container(
                              height: Width*6,
                            child: const TabBarView(children: [
                              Airpod(),
                              Airpod(),
                              Headph(),
                              laptop(),
                              ps(),
                              Xbox(),
                              ctrl(),





                            ],), )

                ],)),
          ],
        ) ),
    );
  }
}
