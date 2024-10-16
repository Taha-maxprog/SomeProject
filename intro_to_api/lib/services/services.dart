import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class MyAPIs {
  Future postAddingTodo(
    String title,
    String description,
  ) async {
    final response = await http.post(
      Uri.parse('https://api.nstack.in/v1/todos'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: convert.json.encode(
        {"title": title, "description": description, "is_completed": true},
      ),
    );
    if (response.statusCode == 201) {
      return convert.json.decode(response.body);
    } else {
      return convert.json.decode(response.body);
    }
  }
}
