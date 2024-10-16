import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_demo/pages/posts.dart';

import 'labels.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
        child: Scaffold(
      backgroundColor: Color(0xffF2F7F8),
      appBar: AppBar(
        backgroundColor: Color(0xffF2F7F8),
        leading:IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_back_ios),)  ,
      ),
      body:ListView(
        padding: EdgeInsets.all(20),
        children:    [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("taha",style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold),),CircleAvatar(
              radius: 33,
              backgroundImage: NetworkImage("https://pub-static.fotor.com/assets/projects/pages/bc392b3bd8e3422cbb6118d78e6f77be/fotor-c5d2ed6221aa4d19a6f6866abe6c7a50.jpg"),
            )],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Labels(head:"250" , body: 'posts',),
              Labels(head:"2339" , body: 'followers',),
              Labels(head:" 232 " , body: 'following',),

              SizedBox(width: 40,)
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  style: TextButton.styleFrom(backgroundColor:  Color(0xff007BFE)),
                  onPressed: (){}, child: Container(height: 33,width: 180,
                  child: Text("send message",style: TextStyle(color: Colors.white,fontSize: 24),))),
              TextButton(onPressed: (){}, child: Container(
                height: 45,width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: Colors.grey,
                        width: 2
                    )

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.person),
                    Icon(Icons.check)],
                ),
              ),),
              GestureDetector(onTap: (){}, child: Container(
                height: 45,width: 50,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: Colors.grey,

                        width: 2
                    )

                ),
                child:
                Icon(Icons.arrow_downward),

              ),),




            ],
          ),

          Container(
            height: 55,
            color: Color(0xffE9EFF4),
            child: TabBar(


                tabs:

              [Icon(Icons.apps ),
             Icon(Icons.list ),
             Icon(Icons.stars ),
             Icon(Icons.assignment_ind ),
              ]


            ),
          ),
            const SizedBox(
              height: 777,
              child: TabBarView(children: [
                  posts(),
                  posts(),
                  posts(),
                  posts(),




              ]),
            )

        ],

      ) ,

    ));
  }
}
