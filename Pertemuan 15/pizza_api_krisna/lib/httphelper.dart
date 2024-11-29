import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:pizza_api_krisna/pizza.dart';

class Httphelper {
  final String authority = 'lv71e.wiremockapi.cloud';
  final String path = '/pizzalist';

  Future<List<Pizza>> getPizzaList() async {
    print('start fetch');
    final Uri url = Uri.https(authority, path);
    print(url);
    final result = await http.get(url);
    print(result);
    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = jsonDecode(result.body);

      List<Pizza> pizzas =
          jsonResponse.map<Pizza>((i) => Pizza.fromJson(i)).toList();

      return pizzas;
    } else {
      return [];
    }
  }

  Future<String> postPizza(Pizza pizza) async {
    final Uri url = Uri.https(authority, '/pizza');
    String post = jsonEncode(pizza.toJson());
    final response = await http.post(url, body: post);

    return response.body;
  }

  Future<String> putPizza(Pizza pizza) async {
    final Uri url = Uri.https(authority, '/pizza');
    String put = jsonEncode(pizza.toJson());
    final response = await http.put(url, body: put);

    return response.body;
  }

  Future<String> deletePizza(int id) async {
    final Uri url = Uri.https(authority, '/pizza');
    final response = await http.delete(url);

    return response.body;
  }
}
