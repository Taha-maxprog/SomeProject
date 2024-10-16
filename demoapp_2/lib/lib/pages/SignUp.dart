




import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../BottomNavBar/home.dart';

import 'LogIn.dart';

class sign_Up extends StatefulWidget {
  const sign_Up({super.key});

  @override
  State<sign_Up> createState() => _sign_UpState();
}

class _sign_UpState extends State<sign_Up> {
  final _valditonKey = GlobalKey<FormState>();
  TextEditingController User_name = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController Email = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Center(child: Text("انشاء حساب ",style: TextStyle(
            fontWeight: FontWeight.bold,
        fontSize: 25),)),
        backgroundColor:  Colors.white,

      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Form(
            key: _valditonKey,
            child: Container(
              color: Colors.white,


              child: Column(
                children: [
                  Container(

                    margin: EdgeInsets.all(10),
                    height: 300,
                    //width: 300,
                    decoration:   BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                      image:const DecorationImage(

                        image: AssetImage("asset/face.png") ,
                      ),

                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20),
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(20)),



                    child: TextFormField(
                       controller: User_name ,
                      decoration: InputDecoration(

                          border: OutlineInputBorder(),

                          labelText: "   اسم المستخدم ",


                          prefixIcon: Icon(Icons.person),
                          hintText: "   ادخل الاسم هنا ",
                          suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.clear)),


                      ),
                      validator: (value){
                        if (value == null || value.isEmpty)
                          {
                            return (" لا يمكن انت يكون هذا الحقل فارغا");
                          } else if   (value == "taha") {
                          return("  هذا المستخدم موجود بالفعل ");

                          }


                      },
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.name,
                      maxLength: 100,
                    ),
                  ),
                  Container(
                    margin:  EdgeInsets.only(left: 20,right: 20),
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(20)),

                    child: TextFormField(
                          controller: Password,
                      decoration: InputDecoration(

                          border: OutlineInputBorder(),

                          labelText: "   كلمة المرور ",

                          prefixIcon: Icon(Icons.lock),
                          hintText: "   ادخل كلمة المرور هنا ",
                          suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.clear))

                      ),
                      validator: (value){
                        if(value==null|| value.isEmpty){
                          return(" لا يمكن انت يكون هذا الحقل فارغا");
                        }else if (value.length < 8 ){
                          return ( " كلمة المرور اقل من 8 احرف ");
                        }
                      },
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.name,
                      maxLength: 14,

                    ),
                  ), Container(
                    margin:  EdgeInsets.only(left: 20,right: 20),
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(20)),

                    child: TextFormField(
                          controller: Email,
                      decoration: InputDecoration(

                          border: OutlineInputBorder(),

                          labelText: "   البريد الالكتروني ",

                          prefixIcon: Icon(Icons.email),
                          hintText: "   ادخل البريد الالكتروني هنا ",
                          suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.clear))

                      ),
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.name,
                      maxLength: 25,
                      validator: (value){
                        if(value== null || value.isEmpty){
                          return(" لا يمكن انت يكون هذا الحقل فارغا");
                        }else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)){
                          return ("    البريد الالكتروني  غير صحيح  ") ;
                        };
                      },
                    ),
                  ),

                  SizedBox( height: 50,),
                  ElevatedButton(

                    child: Container(

                     // margin: EdgeInsets.only(bottom: 100),
                      height: 70,
                      width: 250,

                      decoration: BoxDecoration(
                          color:  Color(0xff440B12),
                        borderRadius: BorderRadius.circular(20),

                      ),
                      child: const Center(
                          child: Text("تسجيل",style: TextStyle(color: Colors.white,
                          fontSize: 30,fontWeight: FontWeight.bold),
                          )
                      ),

                    ),
                    onPressed: () async {


                        try {
                          final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                            email: Email.text,
                            password: Password.text,
                          );
                          Navigator.of(context).pushReplacementNamed("verifiedEmail");
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            print('The password provided is too weak.');

                          } else if (e.code == 'email-already-in-use') {
                            print('The account already exists for that email.');

                          }
                        } catch (e) {
                          print(e);

                        }
                    //  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:HomePage()));

                      }

                  ),


                  Container(



                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: [

                          TextButton(onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
                          },
                              child: Text("سجل الدخول ")),
                          Text("لديك حساب  "),
                        ],
                      )),
                ],
              ),

            ),
          ),
        ],
      )
    );
  }
}
