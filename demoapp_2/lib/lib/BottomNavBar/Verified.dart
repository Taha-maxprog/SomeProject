import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class verifiedEmail extends StatefulWidget {
  const verifiedEmail({super.key});

  @override
  State<verifiedEmail> createState() => _verifiedEmailState();
}

class _verifiedEmailState extends State<verifiedEmail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 140,
      width: 150,
      child:  Column(
        mainAxisAlignment:MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("يرجا تأكيد حسابك للمتابعه ",style: TextStyle(fontSize: 19,color: Colors.black), ),
              SizedBox(height: 40,),
              ElevatedButton(

                  onPressed: (){FirebaseAuth.instance.currentUser!.sendEmailVerification();},
                  child:
                      Container(height: 50,width: 100,child:
                    Center(child: Text("  تأكيد  ",style: TextStyle(fontSize: 19), )),),
                   )
        ],

        
      ),
    );
  }
}
