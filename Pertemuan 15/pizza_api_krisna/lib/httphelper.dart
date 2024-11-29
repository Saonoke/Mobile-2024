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
}
