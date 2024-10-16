import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class PopuList extends StatefulWidget {
  const PopuList({super.key});

  @override
  State<PopuList> createState() => _PopuListState();
}

class _PopuListState extends State<PopuList> {
  @override
  Widget build(BuildContext context) {
    final currentWidth=MediaQuery.of(context).size.width;
    final currentHeight=MediaQuery.of(context).size.height;
    return  Container(


      width: currentWidth*0.40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),


      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(

            child: Container(
              margin: EdgeInsets.all(8),
              height: currentHeight*0.1,
              width: currentWidth*0.48,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(

                      image: AssetImage("assets/images/rice.png"),
                      fit: BoxFit.cover

                  )
              ), ),),
          Container(
            margin: EdgeInsets.all(7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Rice"),
                SizedBox(height: currentHeight*0.01,),
                Text("5.99 iqd"),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
