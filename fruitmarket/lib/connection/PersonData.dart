import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../buttonNavBar/homeBar.dart';


class personData extends StatefulWidget {
  const personData({super.key});

  @override
  State<personData> createState() => _personDataState();
}

class _personDataState extends State<personData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        height: 500,
        //   width: 500,
        margin: EdgeInsets.all(10),

        child:     Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            const TextField(

              decoration:InputDecoration(

                labelText: "insert your name",
                border: OutlineInputBorder(),

              ),
            ),
            SizedBox(height: 30,),
            TextField(
              decoration:InputDecoration(
                labelText: "insert your phone number",
                border: OutlineInputBorder(),

              ),
            ),
            SizedBox(height: 30,),
            TextField(
              maxLines: 5,
              decoration:InputDecoration(

                labelText: "insert your details",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 50,),
            ElevatedButton(

              style:ElevatedButton.styleFrom(
                  minimumSize: Size(150, 50),
                  backgroundColor: Color( 0xff68A13A),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))

              ),
              onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>bottonNavBar()));},
              child: Text("Go",style: TextStyle(fontSize: 16,color: Colors.white),
              ),
            )

          ],
        ),
      ),
    );
  }
}
