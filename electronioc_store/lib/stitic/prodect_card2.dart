import 'package:electronioc_store/stitic/faverote_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardForAll extends StatelessWidget {
  const CardForAll({super.key, required this.img});
  final String img;


  @override
  Widget build(BuildContext context) {
    final Heigt=MediaQuery.of(context).size.height;
    final Width=MediaQuery.of(context).size.width;
    final provider=FaveroteProvider.of(context);

    return  Padding(
      padding: EdgeInsets.only(left: 8.5,right: 8.5),
      child: GestureDetector(
        onTap: (){
          
          Navigator.of(context).pushReplacementNamed("PopuList");
        },
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(child:  SizedBox(
        
                    height: Heigt*0.18,
                    width: Width*0.39,
                    child: Container(
                      child: Stack(children: [ Image(
        
                        image: AssetImage(img),
                        fit: BoxFit.cover,
                      ),
                               Positioned(
        
                                 right: 10,
                                 top: 10,
                                 child:   IconButton(onPressed: (){
        
                                 },
                                   icon:  Container(
                                     height: Heigt*0.04,
                                     width: Width*0.08,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(10),
                                          boxShadow:[BoxShadow(
                                            color: Colors.black.withOpacity(0.2),
                                            spreadRadius: 5,
                                            blurRadius: 10,
                                            offset: Offset(0,5)
                                          )] ,
                                         color: Colors.white
        
                                     ),
                                     child:   Icon(
                                          Icons.favorite_border
                                      ,color: Colors.black,),
                                   ),
        
                                 ),
        
                               )
        
                      ],)
        
                    )),
        
        
                ),
                Column(children: [
                  Text("Airpods",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),
        
        
        
                  Text(" \$149.00",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                ],)
        
        
              ],),
        
        
        
          ],
        ),
      ),
    );
  }
}
