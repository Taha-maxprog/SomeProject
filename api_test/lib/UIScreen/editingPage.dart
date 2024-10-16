import 'package:flutter/material.dart';


import '../DataBase/apiDataBase.dart';
import '../myWidgets/myWidget.dart';

class EditPage extends StatefulWidget {

  final int id;
  final int quantity;

  const EditPage({super.key, required this.id, required this.quantity});
  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  TextEditingController idEditController = TextEditingController();
  TextEditingController quantityEditController = TextEditingController();
  @override
  void initState() {
     super.initState();
     idEditController.text = "${widget.id}";
     quantityEditController.text = "${widget.quantity}";
  }
  @override
  Widget build(BuildContext context) {
    CartDataBase _cartDataBase = CartDataBase();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade200,
          title: Text("Adding New Product"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              myTextFiled( idEditController, "id int*"),
              const SizedBox(
                height: 5,
              ),
              myTextFiled(quantityEditController, "quantity int*"),
              SizedBox(
                width: MediaQuery.of(context).size.width - 20,
                child: ElevatedButton(
                  onPressed: () {
                    _cartDataBase.createPost(
                        idEditController.text, quantityEditController.text);
                  },
                  child: Text("Done"),
                ),
              ),
              Spacer(),
              Spacer(),
            ],
          ),
        ));
  }
}
