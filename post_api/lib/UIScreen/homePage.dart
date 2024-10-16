// import 'package:flutter/material.dart';
// import 'package:taha/models/Products.dart';
//
// import '../DataBase/apiDataBase.dart';
//
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//
//   CartDataBase _cartDataBase = CartDataBase();
//   List<Products> _products = [];
//   bool loading = true;
//
//   @override
//   void initState() {
//     super.initState();
//     _fetchProducts();   }
//   Future<void> _fetchProducts() async {
//     try {
//       List<Products> products = await _cartDataBase.getProducts();
//       setState(() {
//         _products = products;
//
//       });
//     } catch (e) {
//       setState(() {
//         print("Error");
//       });
//       print("Error fetching products: $e");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//
//
//
//
//     return Scaffold(
//       appBar: AppBar(backgroundColor: Colors.red,),
//
//
//
//       body: Column(
//         children: [
//           ListView.builder(
//             itemCount: _products.length,
//             itemBuilder: (BuildContext context, int index) {
//               return ListTile(
//                 title: Text("${_products[index]}"),
//               );
//             },
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../DataBase/apiDataBase.dart';
import '../models/Products.dart';
import 'addingPage.dart';
import 'editingPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CartDataBase _cartDataBase = CartDataBase();
  TextEditingController idController = TextEditingController();
  TextEditingController quantityController = TextEditingController();

  TextEditingController titleController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController totalController = TextEditingController();
  TextEditingController oldPriceController = TextEditingController();
  TextEditingController discountController = TextEditingController();

  List<Products> _products = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchProducts(); // Fetch data when the widget is initialized
  }

  Future<void> _fetchProducts() async {
    try {
      List<Products> products = await _cartDataBase.getProducts();
      setState(() {
        _products = products;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      print("Error fetching products: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          _isLoading
              ? Center(
                  child:
                      CircularProgressIndicator()) // Show loading indicator while fetching
              : Expanded(
                  // Wrap ListView.builder in Expanded to give it height within Column
                  child: ListView.builder(
                    itemCount: _products.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {

                        },
                        child: Column(
                          children: [
                            Image.network("${_products[index].thumbnail}"),
                            Text("id:${_products[index].id}"),
                            Text("title:${_products[index].title}"),
                            Text("price :${_products[index].price}"),
                            Text("${_products[index].total}"),
                            Text("${_products[index].quantity}"),
                            Text("${_products[index].discountPercentage}"),
                            Text("${_products[index].discountedTotal}"),






                          ],
                        ),
                      );
                    },
                  ),
                ),
          TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddingPage()));}, child: Text("add")),
          TextButton(onPressed: (){}, child: Text("edite")),
          TextButton(onPressed: (){}, child: Text("delte")),
        ],
      ),
    );
  }
}

/*
 appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Product List'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AddingPage()));
              },
              icon: Icon(Icons.add))
        ],
      ),









InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => EditPage(
                                    id: _products[index].id ?? 1,
                                    quantity: _products[index].quantity ?? 1,
                                  )));
                          print("id == ${_products[index].id}");
                        },
                        child: ListTile(
                          leading: _products[index].thumbnail != null
                              ? Image.network(_products[index].thumbnail!)
                              : Image.asset("assets/logo.png"),
                          title: Text(_products[index].title ?? 'No Title'),
                          subtitle: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  'Price: \$${_products[index].price?.toStringAsFixed(2) ?? 'N/A'}'),
                              Text(
                                  'Qty: ${_products[index].quantity ?? 'N/A'}'),],
                          ),
                          trailing: IconButton(icon: Icon(Icons.delete),onPressed: (){

                            _cartDataBase.deletePost(
                                _products[index].id ?? 1
                                );
                          },)
                        ),
                      );*/