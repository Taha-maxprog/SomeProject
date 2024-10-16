import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturent_app/screens/Home_page.dart';

import '../lists/button_navigation.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  late int _number=0 ;
  void _incremant(){
    setState(() {
      _number ++;
    });
  }
  void _decremant(){
    setState(() {
      if (_number>0) {
        _number--;
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    final int count ;
    final currentWidth=MediaQuery.of(context).size.width;
    final currentHeight=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(

        child: Column(
          children: [
            Container(
              height:currentHeight*0.33 ,
              width: currentWidth ,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/choclate.png"),
               fit: BoxFit.cover
                )
              ),
              child: Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Container(

                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2) ,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        height: currentHeight*0.066,
                        width: currentWidth*0.14,
                        child:
                        IconButton(onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>BotomNav()));},
                            icon: Icon(Icons.arrow_back,color: Colors.white,) )),
                  SizedBox(width: currentWidth*0.29,),
                  Container(

                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2) ,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        height: currentHeight*0.066,
                        width: currentWidth*0.14,
                        child:
                        IconButton(onPressed: (


                            ){},
                            icon: Icon(Icons.favorite_border,color: Colors.white,) )),
                  Container(

                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2) ,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        height: currentHeight*0.066,
                        width: currentWidth*0.14,
                        child:
                        IconButton(onPressed: (


                            ){},
                            icon: Icon(Icons.upload_outlined,color: Colors.white,) )),
                  ],
                ),
              ),
            ),
            Container(
              height: currentHeight*0.4,
              width: currentWidth,
              padding: EdgeInsets.all(23),
              color: Color(0xffF4F4F4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Double Cheese Burger ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  SizedBox(height:currentHeight*0.02,),
                 Text("\$5.99 Delivery - \$10 minimum ",style: TextStyle(color: Colors.red,fontSize: 18 ,fontWeight: FontWeight.bold),),

                  SizedBox(height:currentHeight*0.02,),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        _incremant();
                      }, icon: Container(
                        height: currentHeight*0.04,
                        width: currentWidth*0.09,

                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey,width: currentWidth*0.01),
                          borderRadius: BorderRadius.circular(10),


                        ),
                        child:
                        Icon(Icons.add),
                      ),),

                      Text("$_number ",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),),

                      IconButton(onPressed: (){
                        _decremant();
                      }, icon: Container(
                        height: currentHeight*0.04,
                        width: currentWidth*0.09,

                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey,width: currentWidth*0.01),
                          borderRadius: BorderRadius.circular(10),


                        ),
                        child:
                        Icon(Icons.remove),
                      ),),



                    ],
                  ),
                  SizedBox(height:currentHeight*0.04,),
                  Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s.",
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: Colors.grey),),


              ], ),


            ),
              Container(

                child: Column(
                  children: [

                    SizedBox(height: currentHeight*0.04,),
                    Text("40-50 min  •  \$5.99",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 26
                  ),),
                    SizedBox(height: currentHeight*0.04,),
                  Container(
                    height: currentHeight*0.1,
                      width: currentWidth,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red
                      ),
                      child: TextButton(onPressed: (){}, child: Text("Add to Cart",
                        style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),
                      )
                      )
                  )]

                ),
              ),

          ],
        ),
      ),
    );
  }
}
