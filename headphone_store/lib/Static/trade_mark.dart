import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:headphone_store/Static/prodict_page.dart';

class TradeMark extends StatelessWidget {
  const TradeMark({super.key, required this.img, required this.route});
   final String img;
   final String route ;

  @override
  Widget build(BuildContext context) {
    final    Height= MediaQuery.of(context).size.height;
    final   Width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, route);
      },
      child: Container(
        height: Height*0.08,
        width: Width*0.26,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(img),
            )
        ),
      ),
    );
  }
}
