import 'dart:convert';
import 'package:http/http.dart' as http;

class Photoservice {
  Future getInfoPhoto() async {
    final result = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

    var finalResult = jsonDecode(result.body);

    return finalResult;

  }
}
