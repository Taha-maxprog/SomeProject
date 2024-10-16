import 'package:flutter/cupertino.dart';

import '../../stitic/prodect_card2.dart';

class Xbox extends StatefulWidget {
  const Xbox({super.key});

  @override
  State<Xbox> createState() => _XboxState();
}

class _XboxState extends State<Xbox> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [

      Row(
        children: [
          CardForAll(img: 'assets/images/xbox.png'),
          CardForAll(img: 'assets/images/xbox.png'),
        ],
      ),
      SizedBox(height: 50,),
     Row(
        children: [
          CardForAll(img: 'assets/images/xbox.png'),
          CardForAll(img: 'assets/images/xbox.png'),
        ],
      ),
      SizedBox(height: 50,),
     Row(
        children: [
          CardForAll(img: 'assets/images/xbox.png'),
          CardForAll(img: 'assets/images/xbox.png'),
        ],
      ),
      SizedBox(height: 50,),
     Row(
        children: [
          CardForAll(img: 'assets/images/xbox.png'),
          CardForAll(img: 'assets/images/xbox.png'),
        ],
      ),
      SizedBox(height: 50,),
     Row(
        children: [
          CardForAll(img: 'assets/images/xbox.png'),
          CardForAll(img: 'assets/images/xbox.png'),
        ],
      ),





    ],);
  }
}
