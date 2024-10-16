import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruitmarket/connection/logIn.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({super.key, required this.tittle,
    required this.dettils, required this.tittleImg,
    required this.buttonText});
  final String  tittle ;

  final String dettils;
  final String tittleImg;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(tittleImg),
          SizedBox(height: 20,),
          Text(tittle,style: TextStyle(fontSize: 18,color: Colors.black),),
          SizedBox(height: 20,),
        Text(dettils,style: TextStyle(fontSize: 16,color: Colors.black),),

          SizedBox(height: 40,),
           ElevatedButton(

            style:ElevatedButton.styleFrom(
                minimumSize: Size(150, 50),
              backgroundColor: Color( 0xff68A13A),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))

            ),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
            },
            child: Text(buttonText,style: TextStyle(fontSize: 16,color: Colors.white),
            ),
          )
         ],
      ),

    );
  }
}
