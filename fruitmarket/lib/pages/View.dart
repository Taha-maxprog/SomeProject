import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruitmarket/pages/welcomePage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class viewPages extends StatefulWidget {
    viewPages({super.key});

  @override
  State<viewPages> createState() => _viewPagesState();
}

class _viewPagesState extends State<viewPages> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: PageView(

          children: const [

              Welcomepage(tittle: 'E Shopping',
              dettils: 'Explore  top organic fruits & grab them',
              tittleImg: 'asset/1stImg.png',
              buttonText: 'Next',),
              Welcomepage(tittle: 'E Shopping',
              dettils: 'Explore  top organic fruits & grab them',
              tittleImg: 'asset/1stImg.png',
              buttonText: 'Next',),
              Welcomepage(tittle: 'E Shopping',
              dettils: 'Explore  top organic fruits & grab them',
              tittleImg: 'asset/1stImg.png',
              buttonText: 'get Started',),




          ],

        ),
     
      ),


    );
  }
}
