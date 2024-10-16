import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:headphone_store/Static/prodict_page.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class detils_card extends StatelessWidget {
  const detils_card({super.key, required this.img, required this.route, required this.Icon1});
  final String img;
  final String route ;
  final IconData Icon1 ;

  @override
  Widget build(BuildContext context) {
    final    Height= MediaQuery.of(context).size.height;
    final   Width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(10),
      height: Height*0.26,
      width: Width*0.4,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),

      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icon1,color: Colors.red,)
            ],
          ),
          Center(
            child: Container(
              height: Height*0.14,
              width: Width*0.8,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(img),

                    fit: BoxFit.fitWidth


                  )
              ),
            ),
          ),
          Text("Beats Solo3"),
          Text("\$249.6"),

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

        ],


      ) ,



    );  }
}
