import 'package:flutter/cupertino.dart';

import '../../stitic/prodect_card2.dart';

class Headph extends StatefulWidget {
  const Headph({super.key});

  @override
  State<Headph> createState() => _HeadphState();
}

class _HeadphState extends State<Headph> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [

      Row(
        children: [
          CardForAll(img: 'assets/images/headset.png'),
          CardForAll(img: 'assets/images/headset.png'),
        ],
      ),

      Row(
        children: [
          CardForAll(img: 'assets/images/headset.png'),
          CardForAll(img: 'assets/images/headset.png'),
        ],
      ),

      Row(
        children: [
          CardForAll(img: 'assets/images/headset.png'),
          CardForAll(img: 'assets/images/headset.png'),
        ],
      ),

      Row(
        children: [
          CardForAll(img: 'assets/images/headset.png'),
          CardForAll(img: 'assets/images/headset.png'),
        ],
      ),

      Row(
        children: [
          CardForAll(img: 'assets/images/headset.png'),
          CardForAll(img: 'assets/images/headset.png'),
        ],
      ),





    ],);
  }
}
