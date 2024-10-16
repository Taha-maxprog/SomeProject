import 'package:flutter/cupertino.dart';

import '../../stitic/prodect_card2.dart';

class Airpod extends StatefulWidget {
  const Airpod({super.key});

  @override
  State<Airpod> createState() => _AirpodState();
}

class _AirpodState extends State<Airpod> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [

      Row(
        children: [
          CardForAll(img: 'assets/images/airpod.png',  ),
          CardForAll(img: 'assets/images/airpod.png', ),
        ],
      ),
  Row(
        children: [
          CardForAll(img: 'assets/images/airpod.png',  ),
          CardForAll(img: 'assets/images/airpod.png', ),
        ],
      ),
  Row(
        children: [
          CardForAll(img: 'assets/images/airpod.png', ),
          CardForAll(img: 'assets/images/airpod.png' ),
        ],
      ),
  Row(
        children: [
          CardForAll(img: 'assets/images/airpod.png' ),
          CardForAll(img: 'assets/images/airpod.png' ),
        ],
      ),



    ],);
  }
}
