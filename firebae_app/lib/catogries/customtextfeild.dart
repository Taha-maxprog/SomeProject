import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFeildAdd extends StatelessWidget {

  final String hintText;
  final TextEditingController Mycontroller ;
  final String? Function(String?)? validator;
   const CustomTextFeildAdd({super.key, required this.hintText, this.validator, required this.Mycontroller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: Mycontroller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey),
        contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal: 20),
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: Colors.grey))

      ),

    );
  }
}
