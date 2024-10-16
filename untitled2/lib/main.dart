import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxCounter extends GetxController {
  // Reactive variables to track the values from TextFormFields
  var firstNum = 0.obs;
  var secondNum = 0.obs;

  // Method to update first number from the first TextFormField
  void updateFirstNum(String value) {
    firstNum.value = int.tryParse(value) ?? 0; // Using .value to update the reactive variable
  }

  // Method to update second number from the second TextFormField
  void updateSecondNum(String value) {
    secondNum.value = int.tryParse(value) ?? 0; // Using .value to update the reactive variable
  }

  // Method to compute the sum of the two numbers
  int get sum => firstNum.value + secondNum.value; // Calculating sum using .value
}

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  // Initialize the GetxController
  final GetxCounter counter = Get.put(GetxCounter());
  final TextEditingController cc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // First TextFormField with reactive binding
            Obx((){
                  cc.text=counter.firstNum.toString();
              return TextFormField(
                decoration: InputDecoration(labelText: 'First Number'),
                keyboardType: TextInputType.number,
                 onChanged: counter.updateFirstNum, // Update the firstNum reactively
              );
            }

            ),
            Obx((){
              cc.text=counter.secondNum .toString();
              return TextFormField(
                decoration: InputDecoration(labelText: 'SC Number'),
                keyboardType: TextInputType.number,
                onChanged: counter.updateSecondNum, // Update the firstNum reactively
              );
            }

            ),
            SizedBox(height: 20),

            // Second TextFormField with reactive binding

            SizedBox(height: 20),

            // Display the sum reactively using Obx
            Obx(() {
              return Text(
                'Sum: ${counter.sum}', // Displaying sum reactively
                style: TextStyle(fontSize: 24),
              );
            }),
          ],
        ),
      ),
    );
  }
}
