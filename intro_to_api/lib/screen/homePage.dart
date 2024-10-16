import 'package:flutter/material.dart';

import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../service/photoService.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Photoservice _photo = Photoservice();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Data "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: FutureBuilder(
          future: _photo.getInfoPhoto(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 300,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.all(10),
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                       /*Image.network(
                            snapshot.data[index]["name"],
                            height: 70,
                          ),*/
                        //  Text(snapshot.data[index]["status"]),
                      Text(snapshot.data[index]["name"] ),
                    //   Text(snapshot.data[index]["email"]),
                     //  Text(snapshot.data[index]["address"]["city"]),

                        //  Text("${snapshot.data[index]["albumId"]}"),
                        ],
                      ),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text(
                  "There are error, The Data is not found !!",
                  style: TextStyle(fontSize: 20, color: Colors.redAccent),
                ),
              );
            } else {
              return Center(
                  child: LoadingAnimationWidget.fourRotatingDots(
                      color: Colors.redAccent, size: 50));
            }
          },
        ),
      ),
    );
  }
}
