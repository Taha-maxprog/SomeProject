import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturent_app/screens/prifile.dart';

import '../lists/cato_list.dart';
import '../lists/popu_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth=MediaQuery.of(context).size.width;
    final currentHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        child: ListView( children: [Container(
          padding: EdgeInsets.all(  currentWidth*0.05),
          color: Color(0xffF4F4F4),
          child:Column(


            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(children:
              [Icon(Icons.location_on_outlined,color: Colors.red),
                SizedBox(width: currentWidth*0.02,),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("712 Sunbeam Drive Lacey",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                      Text("Los Angeles",style: TextStyle(color: Colors.grey),),
                    ] ),
                SizedBox(width: currentWidth*0.08,),
                Container(
                    height: currentHeight*0.066,
                    width: currentWidth*0.14,
                    decoration: BoxDecoration(
                        color: Colors.red.shade50,
                        borderRadius: BorderRadius.circular(13)
                    ),
                    child: Icon(Icons.favorite_border,color: Colors.red)),
                SizedBox(width: currentWidth*0.011   ,),
              IconButton(onPressed: (){ Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>Prifile()));},
                  icon:  Container(
                height: currentHeight*0.066,
                width: currentWidth*0.14,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(width: currentWidth*0.01,color: Colors.red),

                    image: DecorationImage(


                        image: AssetImage("assets/images/face.png"),
                        fit:BoxFit.cover
                    )
                ),
              ))
              ]

                ,),

              SizedBox(height: currentHeight*0.04 ,),

              Container(child: Row(
                children: [
                  Container(

                    height: currentHeight*0.06,
                    width: currentWidth*0.7,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22)
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: currentWidth*0.05,),
                        Icon(Icons.search),
                        SizedBox(width: currentWidth*0.02,),
                        Expanded(child:  TextField(

                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search for food to eat",
                            hintStyle:   TextStyle(color: Colors.grey),
                          ),


                        ),),
                      ],
                    ),
                  ) ,
                  SizedBox(width: currentWidth*0.05,),
                  Container(

                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12)
                      ),
                      height: currentHeight*0.066,
                      width: currentWidth*0.14,
                      child:
                      IconButton(onPressed: (


                          ){},
                          icon: Icon(Icons.tune,color: Colors.white,) )),

                ],

              ),),

              SizedBox(height: currentHeight*0.03 ,),
              Container(
                height: currentHeight*0.25,
                width: currentWidth ,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage("assets/images/finger.png"),
                        fit: BoxFit.fill
                    )
                ),
              ),
              SizedBox(height: currentHeight*0.01 ,),
              Container(
                height: currentHeight*0.08,
                width: currentWidth*0.7,

                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)

                ),

                child: Row(

                  children: [

                    Container(
                      margin: EdgeInsets.all(8),
                      height: currentHeight*0.07,
                      width: currentWidth*0.3,

                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),


                      ),
                      child: Center(child: Text("Delivery",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      height: currentHeight*0.07,
                      width: currentWidth*0.3,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),


                      ),
                      child: Center(child: Text("Pickup",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)),
                    ),

                  ],),),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                  TextButton(onPressed: (){}, child: Text("View All",style: TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.normal),))

                ],

              ),

              SizedBox(
                height: currentHeight*0.087,
                child: ListView.builder(

                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index)
                    {
                      return Row(
                        children: [
                          CatoList(),
                          SizedBox(width: 12,),
                          CatoList(),
                          SizedBox(width: 12,),
                          CatoList(),
                          SizedBox(width: 12,),
                          CatoList(),
                          SizedBox(width: 12,),
                          CatoList(),
                          SizedBox(width: 12,),
                          CatoList(),
                          SizedBox(width: 12,),
                        ],
                      );


                    }


                ),),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Categories",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                  TextButton(onPressed: (){}, child: Text("View All",style: TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.normal),))

                ],

              ),

              SizedBox(
                  height: currentHeight*0.20,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index)
                      {
                        return Row(
                          children: [
                            PopuList(),
                            SizedBox(width: 12,),
                            PopuList(),
                            SizedBox(width: 12,),
                            PopuList(),
                            SizedBox(width: 12,),
                            PopuList(),
                            SizedBox(width: 12,),
                            PopuList(),
                            SizedBox(width: 12,),
                            PopuList(),
                            SizedBox(width: 12,),
                          ],
                        );


                      }


                  )
              ),






            ],

          ),
        ),],)
      ),
    );
  }
}
