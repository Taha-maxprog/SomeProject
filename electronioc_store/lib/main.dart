
 import 'package:electronioc_store/pages/detils_itme.dart';
import 'package:electronioc_store/pages/home_page.dart';
import 'package:electronioc_store/stitic/awesom_bar.dart';
import 'package:electronioc_store/stitic/faverote_provider.dart';
import 'package:electronioc_store/stitic/prodect_card2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

// This widget is the root of your application.
@override
Widget build(BuildContext context) {

 return MultiProvider(
   providers: [

     ChangeNotifierProvider(create: (_)=>FaveroteProvider())
    
   ],
   child: MaterialApp(
   debugShowCheckedModeBanner: false,


   theme: ThemeData(

   appBarTheme:  AppBarTheme(
   backgroundColor: Colors.white,
   iconTheme: IconThemeData(color: Colors.black,size: 35),
   titleTextStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 30),
   )
   ),
   home:   MyHomePage( ),
     routes: {
     "/PopuList":(context)=>PopuList()
     }),
 );
}
}