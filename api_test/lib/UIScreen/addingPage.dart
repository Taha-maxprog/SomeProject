import 'package:flutter/material.dart';


import '../DataBase/apiDataBase.dart';
import '../myWidgets/myWidget.dart';

class AddingPage extends StatefulWidget {
  @override
  State<AddingPage> createState() => _AddingPageState();
}

class _AddingPageState extends State<AddingPage> {
  @override
  Widget build(BuildContext context) {
    CartDataBase _cartDataBase = CartDataBase();
    TextEditingController idController = TextEditingController();
    TextEditingController quantityController = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade200,
          title: Text("Adding New Product"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              myTextFiled(idController, "id int*"),
              SizedBox(
                height: 5,
              ),
              myTextFiled(quantityController, "quantity int*"),
              Spacer(),
              SizedBox(
                width: MediaQuery.of(context).size.width - 20,
                child: ElevatedButton(
                  onPressed: () {
                    _cartDataBase.createPost(
                        idController.text, quantityController.text);
                  },
                  child: Text("Done"),
                ),
              ),
              Spacer(),
            ],
          ),
        ));
  }
}
