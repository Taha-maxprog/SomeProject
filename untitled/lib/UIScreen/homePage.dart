
import 'package:flutter/material.dart';
 import '../DataBase/apiDataBase.dart';
import '../models/article_model.dart';
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

  List<Article> _products = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchProducts(); // Fetch data when the widget is initialized
  }

  Future<void> _fetchProducts() async {
    try {
      List<Article> products = await _cartDataBase.getProducts();
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
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => EditPage(
                                    id: _products[index].id ?? 1,
                                    quantity: _products[index].id ?? 1,
                                  )));
                          print("id == ${_products[index].title}");
                        },
                        child: ListTile(
                          leading: _products[index].image_url != null
                              ? Image.network(_products[index].image_url!)
                              : Image.asset("assets/logo.png"),
                          title: Text(_products[index].title ?? 'No Title'),
                          subtitle: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  'Price: \$${_products[index].id?.toStringAsFixed(2) ?? 'N/A'}'),
                              Text(
                                  'Qty: ${_products[index].id ?? 'N/A'}'),],
                          ),
                          trailing: IconButton(icon: Icon(Icons.delete),onPressed: (){

                            _cartDataBase.deletePost(
                                _products[index].id ?? 1
                                );
                          },)
                        ),
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
