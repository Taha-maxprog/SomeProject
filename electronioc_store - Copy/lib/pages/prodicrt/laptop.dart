import 'package:flutter/cupertino.dart';

import '../../stitic/prodect_card2.dart';

class laptop extends StatefulWidget {
  const laptop({super.key});

  @override
  State<laptop> createState() => _laptopState();
}

class _laptopState extends State<laptop> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [

        Row(
          children: [
            CardForAll(img: 'assets/images/mac.png'),
            CardForAll(img: 'assets/images/mac.png'),
          ],
        ),
      SizedBox(height: 50,),
  Row(
          children: [
            CardForAll(img: 'assets/images/mac.png'),
            CardForAll(img: 'assets/images/mac.png'),
          ],
        ),
      SizedBox(height: 50,),
  Row(
          children: [
            CardForAll(img: 'assets/images/mac.png'),
            CardForAll(img: 'assets/images/mac.png'),
          ],
        ),
      SizedBox(height: 50,),
  Row(
          children: [
            CardForAll(img: 'assets/images/mac.png'),
            CardForAll(img: 'assets/images/mac.png'),
          ],
        ),
      SizedBox(height: 50,),
  Row(
          children: [
            CardForAll(img: 'assets/images/mac.png'),
            CardForAll(img: 'assets/images/mac.png'),
          ],
        ),



    ],);
  }
}
