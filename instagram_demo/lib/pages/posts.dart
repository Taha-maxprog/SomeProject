import 'package:flutter/cupertino.dart';

class posts extends StatefulWidget {
  const posts({super.key});

  @override
  State<posts> createState() => _postsState();
}

class _postsState extends State<posts> {
  @override
  Widget build(BuildContext context) {
    final currentWidth=MediaQuery.of(context).size.width;
    final currentHeight=MediaQuery.of(context).size.height;
    return Expanded(

        child:
    GridView.count(
      primary: true,
        padding: EdgeInsets.all(10),
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        crossAxisCount: 2,
     children: [
       for(int i=0 ; i<10;i++)

         Container(     height: currentHeight*0.12,width: 25,
           decoration: BoxDecoration(

             image: DecorationImage(
                 image:  NetworkImage("https://pub-static.fotor.com/assets/projects/pages/bc392b3bd8e3422cbb6118d78e6f77be/fotor-c5d2ed6221aa4d19a6f6866abe6c7a50.jpg"),
             )
           ),
                ),


      ],
    ));
  }
}
