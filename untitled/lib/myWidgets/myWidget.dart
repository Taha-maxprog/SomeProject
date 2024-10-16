import 'package:flutter/material.dart';


Container myTextFiled(TextEditingController controller,String hint){
  return  Container(
    margin: EdgeInsets.symmetric(horizontal: 20.0),
    child: TextFormField(

      textInputAction: TextInputAction.next,
      controller: controller , //your controller
      autofocus: false,
      decoration: InputDecoration(
        hintText: hint,
        errorStyle: TextStyle(color: Colors.red),
        hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius:
          BorderRadius.circular(5),
          borderSide: BorderSide(
            //color: Colors.amber,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius:
          BorderRadius.circular(5),
          borderSide:
          BorderSide(width: 1, color: Colors.black),
        ),
      ),
      style: TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
    ),
  );
}