import 'package:electronioc_store/pages/prodicrt/airpod.dart';
import 'package:electronioc_store/pages/prodicrt/laptop.dart';
import 'package:electronioc_store/pages/prodicrt/xbox.dart';
import 'package:electronioc_store/stitic/prodect_card2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FaveritePage extends StatefulWidget {
  const FaveritePage({super.key});

  @override
  State<FaveritePage> createState() => _FaveritePageState();
}

class _FaveritePageState extends State<FaveritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          leading:Icon(Icons.arrow_back),
          title: Center(child: Text("Saved Item")),

         actions: [Icon(Icons.notifications_none),]),
      body: ListView(
        children: [Column(

          children: [
           CardForAll(img: "assets/images/headset.png")

          ],
        ),],
      ),
    );
  }
}
