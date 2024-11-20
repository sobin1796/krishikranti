import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ItempostApi {
  static addProduct(Map itemdata) async {
    print(itemdata);
    var url = Uri.parse("https://dummyjson.com/posts/add");
    final res = await http.post(
      url,
      body: itemdata,
    );
    try {
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toString());
        print("the enter data is "+data);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
