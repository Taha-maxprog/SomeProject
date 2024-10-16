import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/article_model.dart';

class CartDataBase {
 // String cartURL = 'https://dummyjson.com/carts';
String cartURL = 'https://newsdata.io/api/1/latest?apikey=pub_53313963093071c3764e4c120a1c76a04adb6&q=sport';


  Future<List<Article >> getProducts() async {
    http.Response response = await http.get(Uri.parse(cartURL));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

       final List products = data ['results'];

       var finalResult = products.map((e) => Article.fromJson(e)).toList();
      print(finalResult);

      return finalResult;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  Future<Article> getPostById(int id) async {
    var response = await http.get(Uri.parse('$cartURL/1'));
    var result = json.decode(response.body);
    final List products = result['carts'][0]['products'];
   var finalResult = Article.fromJson(result);
    print(finalResult);
    return finalResult;
  }

  Future<bool> createPost(var id,var quantity) async {
    var response = await http.post(Uri.parse("${cartURL}/add"),
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
        body: json.encode({
          "userId": 1,
          "products": [
            {
              "id": id,
              "quantity": quantity,
            }
          ]
        }));

    print('status code : ${response.statusCode}');

    if (response.statusCode == 201) {
      var finalResult = jsonDecode(response.body);
      print(finalResult);
    }

    return response.statusCode == 201;
  }

  Future<bool> updatePost(int id ,int quantity) async {
    //Uri.parse('$cartURL/${post.id}')
    var response = await http.put(Uri.parse('$cartURL/1'),
        headers: {
          'Content-type': 'application/json; charset=UTF-8',
        },
        body: json.encode({
          "merge": true,
          "products": [
            {
              "id":  id,
              "quantity":  quantity,
            },
          ]
        }));
    print('status code : ${response.statusCode}');
    return response.statusCode == 200;
  }

  Future<bool> deletePost(int id) async {
    var response = await http.delete(
      Uri.parse('$cartURL/1'),
    );
    print('status code : ${response.statusCode}');
    print('deleted id : $id');
    return response.statusCode == 200;
  }
}
