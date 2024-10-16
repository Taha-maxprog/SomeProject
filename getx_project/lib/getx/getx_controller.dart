import 'package:get/get.dart';

class ToDoController extends GetxController{

  var tasks=<String>[].obs;
   void add(String task){

     tasks.add(task);
   }
   void delte(int index){

     tasks.removeAt(index);
   }
}