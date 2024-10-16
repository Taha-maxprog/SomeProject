import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/Products.dart';

class CartDataBase {
  String cartURL = 'https://dummyjson.com/carts';

  // Future<List<Products>> getProducts() async {
  //   http.Response response = await http.get(Uri.parse(cartURL));
  //
  //
  //   if (response.statusCode == 200) {
  //     final List result = jsonDecode(response.body);
  //
  //     var finalResult = result.map((e) => Products.fromJson(e)).toList();
  //     print(finalResult);
  //
  //     return finalResult;
  //   } else {
  //     throw Exception(response.reasonPhrase);
  //   }
  // }
  Future<List<Products>> getProducts() async {
    http.Response response = await http.get(Uri.parse(cartURL));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

       final List products = data['carts'][0]['products'];

       var finalResult = products.map((e) => Products.fromJson(e)).toList();
      print(finalResult);

      return finalResult;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  Future<Products> getPostById(int id) async {
    var response = await http.get(Uri.parse('$cartURL/1'));
    var result = json.decode(response.body);
    final List products = result['carts'][0]['products'];
   var finalResult = Products.fromJson(result);
    print(finalResult);
    return finalResult;
  }

  Future<bool> createPost(
  var id,
  var quantity,
 var title,
  var price,

  var total,
 var  discountPercentage,
var  discountedTotal,
   ) async {
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
              "title":title,
              "price":price,
              "total":total,
              "discountPercentage":discountPercentage,
              "discountedTotal":discountedTotal




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

  Future<bool> updatePost(var id ,var quantity) async {
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
