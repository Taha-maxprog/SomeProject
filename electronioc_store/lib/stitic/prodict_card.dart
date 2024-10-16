import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProdictCard extends StatelessWidget {
  const ProdictCard({super.key, required this.img});
  final String img;
  @override
  Widget build(BuildContext context) {
    final Heigt=MediaQuery.of(context).size.height;
    final Width=MediaQuery.of(context).size.width;
    return Card(

    color: Colors.green,
      child: Padding(
        padding: EdgeInsets.only(left: 15,right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Clearance\nSales",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
            Container(
              height: Heigt*0.04,
              width: Width*0.23,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,

            ),

            child: Center(child: Text("Up to 50%",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)),)
          ],),Container(
              height: Heigt*0.18,
              width: Width*0.3,
              child: Image(
                  image: AssetImage(img),
                 fit: BoxFit.cover,
              )),


          ],),
      ),
    );
  }
}
