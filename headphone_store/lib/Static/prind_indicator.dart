import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PrindIndicator extends StatelessWidget {
  const PrindIndicator({super.key, required this.img, required this.price, required this.detils});
  final String img ;
final String price ;
final String detils ;

  @override
  Widget build(BuildContext context) {
    final Heaght = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
                 backgroundColor: Color(0xffF3F2FE),
        body: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Center(


              child: Container(
                height: Heaght*0.35,
                width: Width,
                decoration: BoxDecoration(

                  image: DecorationImage(image: AssetImage(img),
                      fit: BoxFit.fitWidth
                  ),

                ),
              ),
            ),
            RatingBarIndicator(
              rating: 3.2,
              itemCount: 5,
              itemSize: 13.0,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
            ),
            Text(detils,style: TextStyle(fontSize: 18),),
            Text(price,style: TextStyle(color: Colors.blue,fontSize: 15),),


          ],
        )
    );
  }
}
