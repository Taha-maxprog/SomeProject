
import 'package:electronioc_store/stitic/prodect_card2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../stitic/prodict_card.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final Heigt=MediaQuery.of(context).size.height;
    final Width=MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: AppBar(title: const Text("Search"),actions: const [Icon(Icons.notifications_none)],),
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
                                hintText: 'Last Research....',
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
              Row(
                children: [
                  const CardForAll(img: 'assets/images/airpod.png',),
                  const CardForAll(img: 'assets/images/headset.png',),

                ],
              ),




            ],
          ) ),
    );
  }
}
