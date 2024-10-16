import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


import '../Static/TextBox.dart';
import '../pages/dettils_person.dart';









class CatoTybe extends StatefulWidget {
  const CatoTybe({super.key});

  @override
  State<CatoTybe> createState() => _CatoTybeState();
}

class _CatoTybeState extends State<CatoTybe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      child: Column(
        children: [
          SizedBox(height: 50,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).pushNamed("AddCato");
          }, child: Container(child: Text("اضافه قسم ",style: TextStyle(fontSize: 20,color: Colors.cyan,),),)),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push (MaterialPageRoute(builder: (context)=>person_Info(pesonImage: '', personName: '',)));
          }, child: Container(child: Text("اضافه شخص ",style: TextStyle(fontSize: 20,color: Colors.cyan,),),))
        ],
      ),
    );
  }
}

class AddCato extends StatelessWidget {
    AddCato({super.key});
  TextEditingController name1 =TextEditingController();

  CollectionReference Categories = FirebaseFirestore.instance.collection('Categories');

  Future<void> addUser() {
    // Call the user's CollectionReference to add a new user
    return Categories
        .add({
          "catoName":name1.text
    })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
      Row(

      children: [
      Container(
      margin: EdgeInsets.only(top: 20),
      height: 50,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child:   Center(

            child: TextFormField(
              controller:name1 ,
              textDirection:TextDirection.rtl,
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
              decoration: InputDecoration(

                  hintText:  "dfsdf" ,

                  border: OutlineInputBorder()),
            ),


      ),
    ),
    SizedBox(
    width: 10,
    ),

    Container(
    margin: EdgeInsets.only(top: 20),
    height: 50,
    width:   100,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.cyan,
    ),
    child:   Center(
    child: Hero(tag: "boxName",
    child: Text(
    "sdfsdf",textDirection:TextDirection.rtl,
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.white,),
    ))

    ),
    ),

    ],
    ),

           ElevatedButton(onPressed: (){
             addUser();
             }, child: Container(color: Colors.cyan,))
        ],
      ),
    );
  }
}
