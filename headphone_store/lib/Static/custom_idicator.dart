import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomIndicator extends StatelessWidget {
  final List<Color> colors;
  final int activeIndex;

  CustomIndicator({required this.colors, required this.activeIndex});

  @override
  Widget build(BuildContext context) {
    final Heaght = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(colors.length, (index) {
        return Container(

          margin: EdgeInsets.symmetric(horizontal: 4.0),
          width:  Width*0.026,
          height:Heaght*0.02,

          decoration: BoxDecoration(
            boxShadow: [

              BoxShadow(blurRadius: 38,
                  spreadRadius: 2,
                  color: colors[index],

                  blurStyle: BlurStyle.outer

              ),


            ],
            shape: BoxShape.circle,
            color: index == activeIndex ? colors[index] : colors[index].withOpacity(0.2),
          ),
        );
      }),
    );
  }
}