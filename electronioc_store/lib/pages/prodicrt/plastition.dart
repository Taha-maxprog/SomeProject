import 'package:flutter/cupertino.dart';

import '../../stitic/prodect_card2.dart';

class ps extends StatefulWidget {
  const ps({super.key});

  @override
  State<ps> createState() => _psState();
}

class _psState extends State<ps> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [

      Row(
        children: [
          CardForAll(img: 'assets/images/ps5.png'),
          CardForAll(img: 'assets/images/ps5.png'),
        ],
      ),
      SizedBox(height: 50,),
       Row(
        children: [
          CardForAll(img: 'assets/images/ps5.png'),
          CardForAll(img: 'assets/images/ps5.png'),
        ],
      ),
      SizedBox(height: 50,),
       Row(
        children: [
          CardForAll(img: 'assets/images/ps5.png'),
          CardForAll(img: 'assets/images/ps5.png'),
        ],
      ),
      SizedBox(height: 50,),
       Row(
        children: [
          CardForAll(img: 'assets/images/ps5.png'),
          CardForAll(img: 'assets/images/ps5.png'),
        ],
      ),
      SizedBox(height: 50,),
       Row(
        children: [
          CardForAll(img: 'assets/images/ps5.png'),
          CardForAll(img: 'assets/images/ps5.png'),
        ],
      ),





    ],);
  }
}
