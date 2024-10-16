import 'package:flutter/cupertino.dart';

import '../../stitic/prodect_card2.dart';

class ctrl extends StatefulWidget {
  const ctrl({super.key});

  @override
  State<ctrl> createState() => _ctrlState();
}

class _ctrlState extends State<ctrl> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [

      Row(
        children: [
          CardForAll(img: 'assets/images/ctl.png',),
           CardForAll(img: 'assets/images/ctl.png',),
        ],
      ),
 SizedBox(height: 50,),
 Row(
        children: [
          CardForAll(img: 'assets/images/ctl.png',),
           CardForAll(img: 'assets/images/ctl.png',),
        ],
      ),
      SizedBox(height: 50,),
 Row(
        children: [
          CardForAll(img: 'assets/images/ctl.png',),
           CardForAll(img: 'assets/images/ctl.png',),
        ],
      ),
      SizedBox(height: 50,),
 Row(
        children: [
          CardForAll(img: 'assets/images/ctl.png',),
           CardForAll(img: 'assets/images/ctl.png',),
        ],
      ),
      SizedBox(height: 50,),
 Row(
        children: [
          CardForAll(img: 'assets/images/ctl.png',),
           CardForAll(img: 'assets/images/ctl.png',),
        ],
      ),






    ],);
  }
}
