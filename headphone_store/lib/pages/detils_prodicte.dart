import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:headphone_store/Static/prodict_page.dart';

import '../Static/detils_card.dart';

class DetilsProdicts extends StatelessWidget {
  const DetilsProdicts({super.key, required this.img2, required this.route, required this.img1, required this.Icon2, required this.Icon1});
  final String img2;
  final String img1;

  final String route ;
  final IconData Icon2;
 final IconData Icon1;

  @override
  Widget build(BuildContext context) {
    final    Height= MediaQuery.of(context).size.height;
    final   Width = MediaQuery.of(context).size.width;
    return Row(children: [
      GestureDetector(

        onTap: (){
          Navigator.pushNamed(context, route);
        },
        child: detils_card(img: img1, route: 'home', Icon1: Icon1,) ,

      ),
     SizedBox(width: Width*0.12,),
     GestureDetector(

        onTap: (){
          Navigator.pushNamed(context, route);
        },
        child: detils_card(img: img2, route: 'home', Icon1: Icon2,) ,
      ),
    ],);
  }
}
