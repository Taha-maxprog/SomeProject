import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/getx/getx_controller.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ToDoController toDoController= Get.put(ToDoController());

    final TextEditingController textController=TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          Row(children: [
           Expanded(child:  TextFormField(controller: textController,),),
           IconButton(onPressed: (){

         if(textController.text.isNotEmpty ){
               toDoController.add(textController.text);
               textController.clear();}

             }, icon:  Icon(Icons.add),)
          ],),


          Expanded(child: Obx((){

            return ListView.builder(
                itemCount: toDoController.tasks.length,
                itemBuilder: (context,index){
              return ListTile(
                title: Text(toDoController.tasks[index]),
                trailing: IconButton(icon: Icon(Icons.delete),onPressed: (){
                  toDoController.delte(index);
                },),

              );

            });
          }))

        ],
      ),
    );
  }
}
