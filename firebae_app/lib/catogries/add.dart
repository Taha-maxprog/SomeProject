import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'customtextfeild.dart';

class AddCatogries extends StatefulWidget {
  const AddCatogries({super.key});
 
  @override
  State<AddCatogries> createState() => _AddCatogriesState();
}

class _AddCatogriesState extends State<AddCatogries> {
  GlobalKey<FormState> formState =GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  Future<void> addUser()async {
    // Call the user's CollectionReference to add a new user
    try{
      DocumentReference response = await users.add({"full_name": name.text});
      Navigator.of(context).pushReplacementNamed("HomePage");
    }catch(e){
      print("$e");
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Form(
        key: formState,
        child:  Column(
          children: [
            CustomTextFeildAdd(hintText: 'اضافه'   ,Mycontroller:name ,validator:(val){

            }),
            Container(
              margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20)
                ),
          
                child: TextButton(onPressed: (){addUser();}, child: Text("add")))
          ],
        )),);
  }
}

