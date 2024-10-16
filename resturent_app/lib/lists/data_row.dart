import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class data extends StatelessWidget {
  const data({super.key,     required this.fairst_icon   ,required this.detils,required this.second_Icon        });
  final IconData  fairst_icon    ;
 final IconData second_Icon ;
 final String detils;

  @override
  Widget build(BuildContext context) {
    final currentWidth=MediaQuery.of(context).size.width;
    final currentHeight=MediaQuery.of(context).size.height;
    return Container(
      height:currentHeight*0.075  ,
      width: currentWidth ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.white
      ),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceAround,
          children: [ Icon( fairst_icon,color: Colors.red,) ,Text(detils,style: TextStyle(fontWeight: FontWeight.normal),),SizedBox(width: currentWidth*0.18,) ,Icon( second_Icon)  ,  ],),
    );
  }
}
