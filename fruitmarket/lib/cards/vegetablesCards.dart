import 'package:flutter/cupertino.dart';

class Cards extends StatelessWidget {
  const Cards({super.key, required this.imgName});
     final String imgName;
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //  Text("Organic Vegetables"),
          // Text("Pick up from organic farms"),
          Container(
          
           height: 250,
           //  width: 100,
              child: Image.asset(imgName ))
        ],
      ),
    );
  }
}
