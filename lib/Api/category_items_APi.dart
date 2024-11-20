import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:om/model/prodict_category_model.dart';

class ItemCategoryApi {
  static const baseUrl =
      "https://dummyjson.com/products?limit=10&skip=10&select=title,price";

  static Future<List<ItemCategory>> getProduct() async {
    var url = Uri.parse(baseUrl);

    try {
      final res = await http.get(url);
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);
        if (data.containsKey('products') && data['products'] is List) {
          return (data['products'] as List).map((value) {
            return ItemCategory(
              name: value['title'],
              price: value['price'].toString(),
              id: value['id'].toString(),
            );
          }).toList();
        }
      }
    } catch (e) {
      print('Error occurred: $e');
    }
    return [];
  }
}
