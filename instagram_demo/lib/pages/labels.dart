import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  const Labels({super.key, required this.head, required this.body});


  final String head;
  final String body;
  @override
  Widget build(BuildContext context) {
    return  Column( children:
    [Text(head,style:
    TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
      Text(body,style: TextStyle(fontSize: 25,color: Colors.grey),),],);
  }
}
