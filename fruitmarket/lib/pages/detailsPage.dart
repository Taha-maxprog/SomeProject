import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key, required this.img});
  final  String img ;
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff68A13A),
          title: const Text("Details",style: TextStyle(color: Colors.white),),
        ),
      body: ListView(children: [
        Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                  margin: const EdgeInsets.all(20),
                  height: 250,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image:   AssetImage(widget.img)),
                  )
              ),
              Container(
                margin: const EdgeInsets.only(left:   12),
                // margin: EdgeInsets.all(20),
                height: 250,
                width: 350,
                decoration: BoxDecoration(
                    color: const Color(0XFFD7D6D7),
                    borderRadius: BorderRadius.circular(20)
                ),

                child: Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: const Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      Text("Broccoli",style: TextStyle(color: Color(0xff707071),fontSize: 25),),
                      SizedBox(height: 10),
                      Text("Broccoli is a green vegetable that vaguely  nutritional \nPowerhouse of vitamin,fiber and antioxidents.Broccoli \ncontains lutein and  which mayPrevent from stress "
                        ,style: TextStyle(color: Color(0xff707071)),),

                      SizedBox(height: 20),

                      Text("Nutrition",style: TextStyle(color: Color(0xff707071),fontSize: 25),),



                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15,top: 15),
                child:   Column(
                  children: [
                    Row(children: [
                      Icon(Icons.star),
                      Text("fat")
                    ],),
                    Row(children: [
                      Icon(Icons.star),
                      Text("Potassium")
                    ],),
                    Row(children: [
                      Icon(Icons.star),
                      Text("Selenium")
                    ],),
                    Row(children: [
                      Icon(Icons.star),
                      Text("Vitamin B9")
                    ],),
                    Row(children: [
                      Icon(Icons.star),
                      Text("Vitamin A")
                    ],),
                    Row(children: [
                      Icon(Icons.star),
                      Text("Vitamin K")
                    ],),
                    Row(children: [
                      Icon(Icons.star),
                      Text("Zinc")
                    ],),
                    Row(children: [
                      Icon(Icons.star),
                      Text("Phosphorous")

                    ],),
                       SizedBox(height: 20,),
                    Row(children: [Text("12 IQD/kg",),SizedBox(width: 50,),
                      ElevatedButton(
                           style:ElevatedButton.styleFrom(
                             backgroundColor:Color(0xff68A13A ),
                           ),
                          onPressed: (){},
                              child: Container(
                                height: 50,
                                width: 150,
                               child: Center(child: Text("Buy",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white) ,)),

                          ))],)
                  ],
                ),
              ),

            ],),
        ),
      ],)
    );
  }
}
