import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
List <QueryDocumentSnapshot> data =[ ];
bool isloding =true;
/*getData() async{

    QuerySnapshot  querySnapShot = await FirebaseFirestore.instance.collection("users").get();
    data.addAll(querySnapShot.docs);
    isloding=false;
    setState(() {

    });
}*/
@override
  void initState() {

//    getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () { 
          Navigator.of(context).pushNamed("add_catogries");
        },
        child: Icon(Icons.add,color: Colors.white,),

      ),
      appBar: AppBar(),
      body: isloding == true? Center(child: CircularProgressIndicator(),)
          : GridView.builder(
        itemCount: data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 2,

            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onLongPress: (){
            AwesomeDialog(
                context: context,
              dialogType: DialogType.warning,
              animType: AnimType.rightSlide,
              title: "note",
              desc: "are you shore to delte${data[index]['full_name']}",
              btnCancelOnPress:(){} ,
              btnOkOnPress: ()async{
                  await FirebaseFirestore.instance.collection("users").doc(data[index].id).delete();
                  Navigator.of(context).pushReplacementNamed("HomePage");
                  setState(() {

                  });

              },

            ).show();




          },
          child:  Card(
          child:Column(
            children: [
              Container(
                  height: 150,
                  width: 200,
                  padding: EdgeInsets.all(15),
                  child: Image.asset("asset/mainLogo.png")),
              Text("${data[index]['full_name']}",
                style: TextStyle(color: Color(0XFF055DFF),fontSize: 18,fontWeight: FontWeight.bold),)
            ],
          ) ,
        ),);
        },

      ));
  }
}
