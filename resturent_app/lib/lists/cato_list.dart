import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CatoList extends StatefulWidget {
  const CatoList({super.key});

  @override
  State<CatoList> createState() => _CatoListState();
}

class _CatoListState extends State<CatoList> {
  @override
  Widget build(BuildContext context) {
    final currentWidth=MediaQuery.of(context).size.width;
    final currentHeight=MediaQuery.of(context).size.height;
    return  GestureDetector(
      onTap: (){

      },
      child: Container(

        height: currentHeight*0.08,
        width: currentWidth*0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1,color: Colors.red),
          color: Colors.red.shade50,
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(8),
              height: currentHeight*0.06,
              width: currentWidth*0.14,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(

                      image: AssetImage("assets/images/pizza.png"),
                      fit: BoxFit.cover

                  )
              ), ),
            Container(
              margin: EdgeInsets.all(7),
              child: Column(
                children: [
                  Center(child: Text("Burgers")),
                  SizedBox(height: currentHeight*0.01,),
                  Center(child: Text("5.99 iqd")),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
