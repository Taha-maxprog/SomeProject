import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

import '../buttonNavBar/homeBar.dart';
import 'PersonData.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("asset/loginImg.png"),
          SizedBox(height: 30,),
          Text("Fruit Market",style: TextStyle(color: Color(0xff68A13A),fontSize: 30,fontWeight: FontWeight.bold),),

          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SocialLoginButton(
                buttonType: SocialLoginButtonType.google,
                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>personData()));},
                mode: SocialLoginButtonMode.single,
              ),
              SizedBox(width: 40,),
              SocialLoginButton(
                buttonType: SocialLoginButtonType.facebook,
                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>personData()));},
                mode: SocialLoginButtonMode.single,
              ),

              SizedBox(width: 20,),

            ],
          )
        ],
      ),
    ),);
  }
}
